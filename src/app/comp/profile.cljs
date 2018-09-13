
(ns app.comp.profile
  (:require [hsl.core :refer [hsl]]
            [app.schema :as schema]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp list-> <> span button div a]]
            [respo.comp.space :refer [=<]]
            [app.style :as style]))

(defn on-log-out [e dispatch!]
  (dispatch! :user/log-out nil)
  (.removeItem js/localStorage (:local-storage-key schema/configs)))

(defcomp
 comp-profile
 (user)
 (div
  {:style (merge ui/flex {:padding 16})}
  (div
   {:style {:font-size 40, :font-weight 100, :font-family ui/font-fancy}}
   (<> (str "Hello! " (:name user))))
  (=< nil 15)
  (=< nil 32)
  (div
   {}
   (button
    {:style (merge ui/button),
     :on-click (fn [e d! m!]
       (.replace js/location (str js/location.origin "?time=" (.now js/Date))))}
    (<> "Refresh"))
   (=< 8 nil)
   (button
    {:style (merge ui/button {:color :red, :border (str "1px solid " (hsl 0 80 70))}),
     :on-click on-log-out}
    (<> "Log out")))))

(def style-trigger
  {:font-size 14,
   :cursor :pointer,
   :background-color colors/motif-light,
   :color :white,
   :padding "0 8px"})
