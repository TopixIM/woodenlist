
(ns server.main
  (:require [cljs.nodejs :as nodejs]
            [cljs.reader :refer [read-string]]
            [server.schema :as schema]
            [server.network :refer [run-server! render-clients!]]
            [server.updater.core :refer [updater]]
            [cljs.core.async :refer [<!]])
  (:require-macros [cljs.core.async.macros :refer [go-loop]]))

(defonce writer-db-ref
  (atom
   (let [fs (js/require "fs")]
     (enable-console-print!)
     (if (fs.existsSync (:storage-key schema/configs))
       (do
        (println "Found storage, loading.")
        (read-string (fs.readFileSync (:storage-key schema/configs) "utf8")))
       (do (println "No storage found.") schema/database)))))

(defonce reader-db-ref (atom @writer-db-ref))

(defn reload! [] (println "Code updated.") (render-clients! @reader-db-ref))

(defn persist-db! []
  (let [raw (pr-str (assoc @writer-db-ref :sessions {})), fs (js/require "fs")]
    (println "Writing DB to storage.")
    (fs.writeFileSync (:storage-key schema/configs) raw)))

(defn render-loop! []
  (if (not= @reader-db-ref @writer-db-ref)
    (do
     (reset! reader-db-ref @writer-db-ref)
     (comment println "render loop")
     (render-clients! @reader-db-ref)))
  (js/setTimeout render-loop! 300))

(defn main! []
  (let [server-ch (run-server! {:port 5021})]
    (go-loop
     []
     (let [[op op-data session-id op-id op-time] (<! server-ch)]
       (println "Action:" op (pr-str op-data) session-id op-id op-time)
       (comment println "Database:" @writer-db-ref)
       (try
        (let [new-db (updater @writer-db-ref op op-data session-id op-id op-time)]
          (reset! writer-db-ref new-db))
        (catch js/Error e (.log js/console e)))
       (recur)))
    (render-loop!))
  (add-watch reader-db-ref :log (fn [] ))
  (.on js/process "exit" (fn [code] (println "Exit:" code) (persist-db!)))
  (println "Server started."))

(set! *main-cli-fn* main!)
