
(ns woodenlist.comp.group-manager
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

(defn on-add-member [group-id user-id]
  (fn [e dispatch!] (dispatch! :task-group/add-member {:group-id group-id, :user-id user-id})))

(defn init-state [& args] "")

(defn render [task-group]
  (fn [state mutate!]
    (div
     {}
     (div
      {}
      (comp-text "Add user:")
      (comp-space 8 nil)
      (input
       {:style ui/input,
        :event {:input (on-input mutate!)},
        :attrs {:placeholder "User id", :value state}})
      (comp-space 8 nil)
      (button
       {:style ui/button, :event {:click (on-add-member (:id task-group) state)}}
       (comp-text "Add" nil)))
     (div
      {}
      (comp-text "Admins" nil)
      (div
       {}
       (->> (vals (:admins task-group))
            (map (fn [member] [(:id member) (comp-text (:name member) nil)])))))
     (div
      {}
      (comp-text "Members" nil)
      (div
       {}
       (->> (vals (:users task-group))
            (map (fn [member] [(:id member) (comp-text (:name member) nil)]))))))))

(def comp-group-manager (create-comp :group-manager init-state update-state render))
