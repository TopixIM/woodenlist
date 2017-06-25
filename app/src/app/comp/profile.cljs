
(ns app.comp.profile
  (:require-macros [respo.macros :refer [defcomp <> div span a input]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.schema :as schema]))

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

(defcomp
 comp-profile
 (user)
 (div
  {:style style-container}
  (div
   {}
   (div
    {:style (merge style-avatar {:background-image (str "url(" (:avatar user) ")")})}
    (div
     {:style (merge ui/center style-edit), :event {:click on-change-avatar}}
     (a {:attrs {:class-name "icon ion-md-create"}}))))
  (=< nil 32)
  (div {:style ui/flex} (<> span (str "Hello! " (:name user)) nil))
  (div
   {}
   (<> span "User id:" nil)
   (=< 8 nil)
   (input {:attrs {:value (:id user)}, :style ui/input} nil))
  (=< nil 16)
  (div
   {}
   (<> span "Want to feedback?" nil)
   (=< 8 nil)
   (a
    {:attrs {:href "https://github.com/Cumulo/woodenlist/issues",
             :target "_blank",
             :inner-text "Add an issue"},
     :style ui/clickable-text}))
  (=< nil 32)
  (div {} (a {:style style-trigger, :event {:click on-log-out}} (<> span "Log out" nil)))))
