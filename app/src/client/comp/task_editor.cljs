
(ns client.comp.task-editor
  (:require [hsl.core :refer [hsl]]
            [clojure.string :as string]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span a input button]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]
            [respo.comp.space :refer [comp-space]]
            [client.comp.back :refer [comp-back]]))

(defn on-delete [group-id task-id]
  (fn [e dispatch!] (dispatch! :task/delete {:group-id group-id, :task-id task-id})))

(defn init-state [& args] "")

(defn on-submit [group-id task-id state mutate!]
  (fn [e dispatch!]
    (if (not (string/blank? state))
      (do
       (mutate! "")
       (dispatch! :task/edit {:group-id group-id, :task-id task-id, :text state})))))

(defn on-input [mutate!] (fn [e dispatch!] (mutate! (:value e))))

(defn render [task]
  (fn [state mutate!]
    (div
     {}
     (div {} (comp-text (:text task) nil))
     (div
      {}
      (input
       {:style ui/input,
        :attrs {:value state, :placeholder "Task content"},
        :event {:input (on-input mutate!)}})
      (comp-space 8 nil)
      (button
       {:style ui/button,
        :event {:click (on-submit (:group-id task) (:id task) state mutate!)}}
       (comp-text "Submit" nil))
      (comp-space 8 nil)
      (button
       {:style (merge ui/button {:background-color colors/irreversible}),
        :event {:click (on-delete (:group-id task) (:id task))}}
       (comp-text "Delete" nil))
      (comp-space nil 120)
      (div {} (comp-back (:group-id task) nil))))))

(defn update-state [state text] text)

(def comp-task-editor (create-comp :task-editor init-state update-state render))
