
(ns woodenlist.comp.profile
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span a input]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]
            [respo.comp.space :refer [comp-space]]
            [woodenlist.schema :as schema]))

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

(def style-avatar {:width 80, :border-radius "50%", :background-size :cover, :height 80})

(defn render [user]
  (fn [state mutate!]
    (div
     {:style style-container}
     (div
      {}
      (div
       {:style (merge style-avatar {:background-image (str "url(" (:avatar user) ")")})}))
     (comp-space nil 16)
     (div {:style ui/flex} (comp-text (str "Hello! " (:name user)) nil))
     (div {} (comp-text "User id:" nil) (comp-space 8 nil) (comp-text (:id user) nil))
     (comp-space nil 16)
     (div
      {}
      (a {:style style-trigger, :event {:click on-log-out}} (comp-text "Log out" nil))))))

(def comp-profile (create-comp :profile render))
