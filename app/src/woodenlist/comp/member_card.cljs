
(ns woodenlist.comp.member-card
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span img]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [respo.comp.space :refer [comp-space]]))

(def style-icon {:cursor :pointer})

(def style-container
  {:min-width 120,
   :align-items :center,
   :box-shadow (str "0 0 1px " colors/warm),
   :color colors/texture-light,
   :font-size 16,
   :padding "0 16px",
   :margin-right 16,
   :margin-bottom 16,
   :height 48})

(defn on-change-role [group-id user-id admin?]
  (fn [e dispatch!]
    (dispatch! :task-group/change-role {:group-id group-id, :admin? admin?, :user-id user-id})))

(def style-avatar {:width 32, :border-radius "50%", :height 32})

(defn on-delete [group-id user-id]
  (fn [e dispatch!]
    (dispatch! :task-group/delete-member {:group-id group-id, :user-id user-id})))

(defn render [member admin? group-id user-id by-admin?]
  (fn [state mutate!]
    (div
     {:style (merge ui/row style-container)}
     (img {:style style-avatar, :attrs {:src (:avatar member)}})
     (comp-space 8 nil)
     (comp-text (:name member) nil)
     (comp-space 16 nil)
     (if (and by-admin? (not= user-id (:id member)))
       (div
        {}
        (span
         {:style style-icon,
          :event {:click (on-delete group-id (:id member))},
          :attrs {:class-name "icon ion-md-remove-circle"}})
        (comp-space 16 nil)
        (span
         {:style style-icon,
          :event {:click (on-change-role group-id (:id member) admin?)},
          :attrs {:class-name "icon ion-md-build"}}))))))

(def comp-member-card (create-comp :member-card render))
