
(ns woodenlist.comp.group-editor
  (:require [hsl.core :refer [hsl]]
            [clojure.string :as string]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span input button]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-code comp-text]]))

(defn on-input [mutate!] (fn [e dispatch!] (mutate! (:value e))))

(defn update-state [state text] text)

(defn init-state [& args] "")

(defn on-rename [group-id state mutate!]
  (fn [e dispatch!]
    (if (not (string/blank? state))
      (do (dispatch! :task-group/rename {:id group-id, :text state}) (mutate! "")))))

(defn on-delete [group-id] (fn [e dispatch!] (dispatch! :task-group/delete group-id)))

(defn render [task-group]
  (fn [state mutate!]
    (div
     {}
     (div {} (comp-text (:name task-group) nil))
     (div
      {}
      (input
       {:style ui/input,
        :event {:input (on-input mutate!)},
        :attrs {:placeholder "Group name", :value state}})
      (comp-space 8 nil)
      (button
       {:style ui/button, :event {:click (on-rename (:id task-group) state mutate!)}}
       (comp-text "Submit" nil))
      (comp-space 8 nil)
      (button
       {:style (merge ui/button {:background-color colors/irreversible}),
        :event {:click (on-delete (:id task-group))}}
       (comp-text "Delete" nil))))))

(def comp-group-editor (create-comp :group-editor init-state update-state render))
