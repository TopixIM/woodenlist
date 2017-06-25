
(ns app.comp.member-card
  (:require-macros [respo.macros :refer [defcomp <> div span img]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]))

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

(defcomp
 comp-member-card
 (member admin? group-id user-id by-admin?)
 (div
  {:style (merge ui/row style-container)}
  (img
   {:src (:avatar member),
    :style style-avatar,
    :event {:click (on-view-member (:id member))}})
  (=< 8 nil)
  (<> span (:name member) nil)
  (=< 16 nil)
  (if (and by-admin? (not= user-id (:id member)))
    (div
     {}
     (span
      {:class-name "icon ion-md-remove-circle",
       :event {:click (on-delete group-id (:id member))},
       :style style-icon})
     (=< 16 nil)
     (span
      {:class-name "icon ion-md-build",
       :style style-icon,
       :event {:click (on-change-role group-id (:id member) admin?)}})))))
