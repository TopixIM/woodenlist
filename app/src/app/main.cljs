
(ns app.main
  (:require [respo.core :refer [render! clear-cache! realize-ssr!]]
            [app.comp.container :refer [comp-container]]
            [cljs.reader :refer [read-string]]
            [app.network :refer [send! setup-socket!]]
            [app.schema :as schema]))

(defn dispatch! [op op-data] (send! op op-data))

(defonce *store (atom nil))

(defonce *states (atom {}))

(def mount-target (.querySelector js/document ".app"))

(defn render-app! [renderer]
  (renderer mount-target (comp-container @*states @*store) dispatch!))

(defn reload! [] (clear-cache!) (render-app! render!) (println "code updated."))

(def ssr? (some? (.querySelector js/document "meta.respo-ssr")))

(defn main! []
  (if ssr? (render-app! realize-ssr!))
  (render-app! render!)
  (setup-socket!
   *store
   {:url (str "ws://" (.-hostname js/location) ":5021"),
    :on-close! (fn [event] (reset! *store nil) (.error js/console "Lost connection!")),
    :on-open! (fn [event]
      (let [raw (.getItem js/localStorage (:storage-key schema/configs))]
        (if (some? raw)
          (do
           (println "Found login information:" raw)
           (dispatch! :user/log-in (read-string raw))))))})
  (add-watch *store :changes (fn [] (render-app! render!)))
  (add-watch *states :changes (fn [] (render-app! render!)))
  (println "app started!"))

(set! js/window.onload main!)
