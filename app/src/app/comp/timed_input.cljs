
(ns app.comp.timed-input
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros
             :refer
             [defcomp <> div span button input mutation-> action-> list->]]
            [respo.comp.space :refer [=<]]
            [clojure.string :as string]
            [keycode.core :as keycode]))

(defcomp
 comp-timed-input
 (states text time class-name on-change!)
 (let [state (or (:data states) {:text "", :time 0})]
   (input
    {:style (merge ui/input {:width 400}),
     :class-name class-name,
     :placeholder "task text...",
     :value (if (> (:time state) time) (:text state) text),
     :on-input (fn [e d! m!]
       (let [now (.now js/Date)]
         (m! (assoc state :text (:value e) :time now))
         (on-change! d! (:value e) now))),
     :on-keydown (fn [e d! m!]
       (if (= (:keycode e) keycode/return)
         (do
          (d! :task/create "")
          (js/setTimeout
           (fn [] (let [el (.querySelector js/document ".cursor-task")] (.focus el)))
           300))))})))
