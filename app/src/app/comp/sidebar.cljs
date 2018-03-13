
(ns app.comp.sidebar
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp <> span div]]
            [respo-ui.comp.icon :refer [comp-icon]]))

(def style-entry
  (merge ui/center {:width 40, :height 40, :cursor :pointer, :color (hsl 0 0 60)}))

(defcomp
 comp-sidebar
 (router logged-in?)
 (div
  {:style (merge
           ui/column-parted
           {:font-size 24,
            :border-right (str "1px solid " (hsl 0 0 0 0.1)),
            :font-family ui/font-fancy})}
  (div
   {:style (merge ui/column)}
   (div
    {:on-click (fn [e d! m!] (d! :router/change {:name :home})),
     :style (merge style-entry (if (= :home (:name router)) {:color :black}))}
    (comp-icon :home))
   (div
    {:on-click (fn [e d! m!] (d! :router/change {:name :pending})),
     :style (merge style-entry (if (= :pending (:name router)) {:color :black}))}
    (comp-icon :ios-time-outline))
   (div
    {:on-click (fn [e d! m!] (d! :router/change {:name :done})),
     :style (merge style-entry (if (= :done (:name router)) {:color :black}))}
    (comp-icon :social-buffer)))
  (div
   {:style (merge style-entry (if (= :profile (:name router)) {:color :black})),
    :on-click (fn [e d! m!] (d! :router/change {:name :profile}))}
   (if logged-in? (comp-icon :ios-contact) (comp-icon :log-in)))))
