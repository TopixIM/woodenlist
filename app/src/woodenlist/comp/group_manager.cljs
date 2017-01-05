
(ns woodenlist.comp.group-manager
  (:require [hsl.core :refer [hsl]]
            [clojure.string :as string]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span input button]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-code comp-text]]
            [woodenlist.comp.member-card :refer [comp-member-card]]))

(defn on-input [mutate!] (fn [e dispatch!] (mutate! (:value e))))

(defn update-state [state text] text)

(defn on-add-member [group-id user-id mutate!]
  (fn [e dispatch!]
    (if (not (string/blank? user-id))
      (do
       (dispatch! :task-group/add-member {:group-id group-id, :user-id user-id})
       (mutate! "")))))

(defn render-members [members admin? group-id user-id by-admin?]
  (div
   {:style ui/row}
   (->> (vals members)
        (map
         (fn [member]
           [(:id member) (comp-member-card member admin? group-id user-id by-admin?)])))))

(def style-empty {:color colors/texture-light})

(defn init-state [& args] "")

(defn render-empty [] (div {:style style-empty} (comp-text "No users" nil)))

(defn render [task-group user]
  (fn [state mutate!]
    (let [by-admin? (contains? (into #{} (keys (:admins task-group))) (:id user))]
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
         {:style ui/button, :event {:click (on-add-member (:id task-group) state mutate!)}}
         (comp-text "Add" nil)))
       (div
        {}
        (div {} (comp-text "Admins" nil))
        (if (empty? (:admins task-group))
          (render-empty)
          (render-members (:admins task-group) true (:id task-group) (:id user) by-admin?)))
       (div
        {}
        (div {} (comp-text "Members" nil))
        (if (empty? (:users task-group))
          (render-empty)
          (render-members (:users task-group) false (:id task-group) (:id user) by-admin?)))))))

(def comp-group-manager (create-comp :group-manager init-state update-state render))
