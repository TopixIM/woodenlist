
(ns client.comp.member-card
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span img]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [respo.comp.space :refer [comp-space]]))

(def style-avatar {:width 32, :height 32, :border-radius "50%", :cursor :pointer})

(defn on-change-role [group-id user-id admin?]
  (fn [e dispatch!]
    (dispatch! :task-group/change-role {:group-id group-id, :user-id user-id, :admin? admin?})))

(defn on-delete [group-id user-id]
  (fn [e dispatch!]
    (dispatch! :task-group/delete-member {:group-id group-id, :user-id user-id})))

(def style-container
  {:color colors/texture-light,
   :min-width 120,
   :height 48,
   :margin-right 16,
   :margin-bottom 16,
   :padding "0 16px",
   :font-size 16,
   :box-shadow (str "0 0 1px " colors/warm),
   :align-items :center,
   :background-color :white})

(defn on-view-member [user-id]
  (fn [e dispatch!] (dispatch! :router/change {:name :person, :params user-id})))

(def style-icon {:cursor :pointer})

(defn render [member admin? group-id user-id by-admin?]
  (fn [state mutate!]
    (div
     {:style (merge ui/row style-container)}
     (img
      {:attrs {:src (:avatar member)},
       :style style-avatar,
       :event {:click (on-view-member (:id member))}})
     (comp-space 8 nil)
     (comp-text (:name member) nil)
     (comp-space 16 nil)
     (if (and by-admin? (not= user-id (:id member)))
       (div
        {}
        (span
         {:attrs {:class-name "icon ion-md-remove-circle"},
          :event {:click (on-delete group-id (:id member))},
          :style style-icon})
        (comp-space 16 nil)
        (span
         {:attrs {:class-name "icon ion-md-build"},
          :style style-icon,
          :event {:click (on-change-role group-id (:id member) admin?)}}))))))

(def comp-member-card (create-comp :member-card render))
