
(ns app.comp.timed-input
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros
             :refer
             [defcomp <> div span button input mutation-> action-> list->]]
            [respo.comp.space :refer [=<]]
            [clojure.string :as string]))

(defcomp
 comp-timed-input
 (states text time on-change!)
 (let [state (or (:data states) {:text "", :time 0})]
   (input
    {:style (merge ui/input {:width 320}),
     :placeholder "task text...",
     :value (if (> (:time state) time) (:text state) text),
     :on-input (fn [e d! m!]
       (m! (assoc state :text (:value e) :time (.now js/Date)))
       (on-change! (:value e) d!))})))
