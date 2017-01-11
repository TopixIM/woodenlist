
(ns woodenlist.main
  (:require [respo.core :refer [render! clear-cache!]]
            [woodenlist.comp.container :refer [comp-container]]
            [cljs.reader :refer [read-string]]
            [woodenlist.network :refer [send! setup-socket!]]
            [woodenlist.schema :as schema]))

(defn dispatch! [op op-data] (send! op op-data))

(defonce store-ref (atom nil))

(defonce states-ref (atom {}))

(defn render-app! []
  (let [target (.querySelector js/document "#app")]
    (render! (comp-container @store-ref) target dispatch! states-ref)))

(defn -main []
  (enable-console-print!)
  (render-app!)
  (setup-socket!
   store-ref
   {:on-open! (fn [event]
      (let [raw (.getItem js/localStorage (:storage-key schema/configs))]
        (if (some? raw)
          (do
           (println "Found login information:" raw)
           (dispatch! :user/log-in (read-string raw)))))),
    :on-close! (fn [event] (reset! store-ref nil) (.error js/console "Lost connection!")),
    :url (str "ws://" (.-hostname js/location) ":5021")})
  (add-watch store-ref :changes render-app!)
  (add-watch states-ref :changes render-app!)
  (println "app started!"))

(defn on-jsload! [] (clear-cache!) (render-app!) (println "code updated."))

(set! js/window.onload -main)
