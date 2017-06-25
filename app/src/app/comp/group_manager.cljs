
(ns app.comp.group-manager
  (:require-macros [respo.macros :refer [defcomp <> div span input button]])
  (:require [hsl.core :refer [hsl]]
            [clojure.string :as string]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.member-card :refer [comp-member-card]]
            [app.comp.back :refer [comp-back]]))

(defn on-input [e dispatch! mutate!] (mutate! (:value e)))

(defn on-add-member [group-id user-id]
  (fn [e dispatch! mutate!]
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

(defn render-empty [] (div {:style style-empty} (<> span "No users" nil)))

(defcomp
 comp-group-manager
 (states task-group user)
 (let [state (or (:data states) "")
       by-admin? (contains? (into #{} (keys (:admins task-group))) (:id user))]
   (div
    {}
    (div
     {}
     (<> span "Add user:" nil)
     (=< 8 nil)
     (input
      {:value state, :placeholder "User id", :style ui/input, :event {:input on-input}})
     (=< 8 nil)
     (button
      {:style ui/button, :event {:click (on-add-member (:id task-group) state)}}
      (<> span "Add" nil)))
    (div
     {}
     (div {} (<> span "Admins" nil))
     (if (empty? (:admins task-group))
       (render-empty)
       (render-members (:admins task-group) true (:id task-group) (:id user) by-admin?)))
    (div
     {}
     (div {} (<> span "Members" nil))
     (if (empty? (:users task-group))
       (render-empty)
       (render-members (:users task-group) false (:id task-group) (:id user) by-admin?)))
    (=< nil 120)
    (comp-back (:id task-group)))))
