
(ns app.comp.sidebar
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp <> span div]]
            [feather.core :refer [comp-i]]
            [app.config :as config]))

(def style-count (merge ui/center {:width 20, :font-size 14}))

(def style-entry
  {:cursor :pointer, :color (hsl 0 0 80), :align-items :center, :height 40, :margin-right 24})

(def style-icon (merge ui/center {:width 24}))

(defcomp
 comp-sidebar
 (router logged-in? numbers)
 (div
  {:style {:flex-shrink 0,
           :border-bottom (str "1px solid " (hsl 0 0 90)),
           :background-color (:theme config/site)}}
  (div
   {:style (merge
            ui/row-parted
            {:font-size 24,
             :font-family ui/font-fancy,
             :padding "8 8px",
             :max-width 800,
             :margin :auto})}
   (div
    {:style ui/row}
    (div
     {:on-click (fn [e d!] (d! :router/change {:name :home})),
      :style (merge ui/row style-entry (if (= :home (:name router)) {:color :white}))}
     (div {:style style-icon} (comp-i :home 14 "white"))
     (<> (:working numbers) style-count))
    (div
     {:on-click (fn [e d!] (d! :router/change {:name :pending})),
      :style (merge ui/row style-entry (if (= :pending (:name router)) {:color :white}))}
     (div {:style style-icon} (comp-i :clock 14 "white"))
     (<> (:pending numbers) style-count))
    (div
     {:on-click (fn [e d!] (d! :router/change {:name :done})),
      :style (merge ui/row style-entry (if (= :done (:name router)) {:color :white}))}
     (div {:style style-icon} (comp-i :package 14 "white"))
     (<> (:done numbers) style-count)))
   (div
    {:style ui/column}
    (div
     {:style (merge ui/row style-entry (if (= :profile (:name router)) {:color :white})),
      :on-click (fn [e d!] (d! :router/change {:name :profile}))}
     (div
      {:style style-icon}
      (if logged-in? (comp-i :user 14 "white") (comp-i :log-in 14 "white")))
     (<> (:sessions numbers) style-count))))))
