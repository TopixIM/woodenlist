
(ns app.comp.task-editor
  (:require-macros [respo.macros :refer [defcomp <> div span a input button]])
  (:require [hsl.core :refer [hsl]]
            [clojure.string :as string]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.back :refer [comp-back]]))

(defn on-delete [group-id task-id]
  (fn [e dispatch!] (dispatch! :task/delete {:group-id group-id, :task-id task-id})))

(defn on-submit [group-id task-id state]
  (fn [e dispatch! mutate!]
    (if (not (string/blank? state))
      (do
       (mutate! "")
       (dispatch! :task/edit {:group-id group-id, :task-id task-id, :text state})))))

(defn on-input [e dispatch! mutate!] (mutate! (:value e)))

(defcomp
 comp-task-editor
 (states task)
 (let [state (or (:data states) "")]
   (div
    {}
    (div {} (<> span (:text task) nil))
    (div
     {}
     (input
      {:style ui/input,
       :attrs {:value state, :placeholder "Task content"},
       :event {:input on-input}})
     (=< 8 nil)
     (button
      {:style ui/button, :event {:click (on-submit (:group-id task) (:id task) state)}}
      (<> span "Submit" nil))
     (=< 8 nil)
     (button
      {:style (merge ui/button {:background-color colors/irreversible}),
       :event {:click (on-delete (:group-id task) (:id task))}}
      (<> span "Delete" nil))
     (=< nil 120)
     (div {} (comp-back (:group-id task) nil))))))
