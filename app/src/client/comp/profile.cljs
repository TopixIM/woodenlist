
(ns client.comp.profile
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span a input]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]
            [respo.comp.space :refer [comp-space]]
            [client.schema :as schema]))

(defn on-change-avatar [e dispatch!]
  (dispatch! :router/change {:name :edit-avatar, :params nil}))

(defn on-log-out [e dispatch!]
  (dispatch! :user/log-out nil)
  (.removeItem js/localStorage (:storage-key schema/configs)))

(def style-container {:color colors/paper})

(def style-avatar
  {:width 80, :height 80, :border-radius "50%", :position :relative, :background-size :cover})

(def style-trigger
  {:font-size 14,
   :cursor :pointer,
   :background-color colors/motif-light,
   :color :white,
   :padding "0 8px"})

(def style-edit
  {:position :absolute,
   :bottom 0,
   :right 0,
   :background-color colors/motif,
   :border-radius "50%",
   :width 24,
   :height 24,
   :font-size 16,
   :cursor :pointer})

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
      (input {:attrs {:value (:id user)}, :style ui/input} nil))
     (comp-space nil 16)
     (div
      {}
      (comp-text "Want to feedback?")
      (comp-space 8 nil)
      (a
       {:attrs {:href "https://github.com/Cumulo/woodenlist/issues",
                :target "_blank",
                :inner-text "Add an issue"},
        :style ui/clickable-text}))
     (comp-space nil 32)
     (div
      {}
      (a {:style style-trigger, :event {:click on-log-out}} (comp-text "Log out" nil))))))

(def comp-profile (create-comp :profile render))
