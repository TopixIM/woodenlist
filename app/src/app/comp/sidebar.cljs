
(ns app.comp.sidebar
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp <> span div]]
            [respo-ui.comp.icon :refer [comp-icon]]))

(def style-count (merge ui/center {:width 20, :font-size 14}))

(def style-entry {:cursor :pointer, :color (hsl 0 0 60), :align-items :center, :height 40})

(def style-icon (merge ui/center {:width 32}))

(defcomp
 comp-sidebar
 (router logged-in? numbers)
 (div
  {:style (merge
           ui/column-parted
           {:font-size 24,
            :border-right (str "1px solid " (hsl 0 0 0 0.1)),
            :font-family ui/font-fancy,
            :padding "8 8px"})}
  (div
   {:style {}}
   (div
    {:on-click (fn [e d! m!] (d! :router/change {:name :home})),
     :style (merge ui/row style-entry (if (= :home (:name router)) {:color :black}))}
    (div {:style style-icon} (comp-icon :home))
    (<> (:working numbers) style-count))
   (div
    {:on-click (fn [e d! m!] (d! :router/change {:name :pending})),
     :style (merge ui/row style-entry (if (= :pending (:name router)) {:color :black}))}
    (div {:style style-icon} (comp-icon :ios-time-outline))
    (<> (:pending numbers) style-count))
   (div
    {:on-click (fn [e d! m!] (d! :router/change {:name :done})),
     :style (merge ui/row style-entry (if (= :done (:name router)) {:color :black}))}
    (div {:style style-icon} (comp-icon :social-buffer))
    (<> (:done numbers) style-count)))
  (div
   {:style ui/column}
   (div
    {:style (merge ui/row style-entry (if (= :profile (:name router)) {:color :black})),
     :on-click (fn [e d! m!] (d! :router/change {:name :profile}))}
    (div {:style style-icon} (if logged-in? (comp-icon :ios-contact) (comp-icon :log-in)))
    (<> (:sessions numbers) style-count)))))
