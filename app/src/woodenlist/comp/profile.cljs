
(ns woodenlist.comp.profile
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span a input]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]
            [respo.comp.space :refer [comp-space]]
            [woodenlist.schema :as schema]))

(def style-edit
  {:bottom 0,
   :font-size 16,
   :background-color colors/motif,
   :width 24,
   :cursor :pointer,
   :right 0,
   :position :absolute,
   :border-radius "50%",
   :height 24})

(defn on-log-out [e dispatch!]
  (dispatch! :user/log-out nil)
  (.removeItem js/localStorage (:storage-key schema/configs)))

(def style-trigger
  {:color :white,
   :font-size 14,
   :background-color colors/motif-light,
   :cursor :pointer,
   :padding "0 8px"})

(def style-container {:color colors/paper})

(def style-avatar
  {:width 80, :position :relative, :border-radius "50%", :background-size :cover, :height 80})

(defn on-change-avatar [e dispatch!]
  (dispatch! :router/change {:name :edit-avatar, :params nil}))

(defn render [user]
  (fn [state mutate!]
    (div
     {:style style-container}
     (div
      {}
      (div
       {:style (merge style-avatar {:background-image (str "url(" (:avatar user) ")")})}
       (div
        {:style (merge ui/center style-edit), :event {:click on-change-avatar}}
        (a {:attrs {:class-name "icon ion-md-create"}}))))
     (comp-space nil 32)
     (div {:style ui/flex} (comp-text (str "Hello! " (:name user)) nil))
     (div
      {}
      (comp-text "User id:" nil)
      (comp-space 8 nil)
      (input {:style ui/input, :attrs {:value (:id user)}} nil))
     (comp-space nil 16)
     (div
      {}
      (comp-text "Want to feedback?")
      (comp-space 8 nil)
      (a
       {:style ui/clickable-text,
        :attrs {:inner-text "Add an issue",
                :target "_blank",
                :href "https://github.com/Cumulo/woodenlist/issues"}}))
     (comp-space nil 32)
     (div
      {}
      (a {:style style-trigger, :event {:click on-log-out}} (comp-text "Log out" nil))))))

(def comp-profile (create-comp :profile render))
