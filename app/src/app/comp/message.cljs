
(ns app.comp.message
  (:require-macros [respo.macros :refer [defcomp <> div span img]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]))

(def style-avatar {:width 32, :height 32, :border-radius "50%", :background-size "cover"})

(def style-message {:margin-bottom 8})

(defcomp
 comp-message
 (message)
 (div
  {:style (merge ui/row style-message)}
  (div
   {:style (merge
            style-avatar
            {:background-image (str "url(" (get-in message [:user :avatar]) ")")})})
  (=< 8 nil)
  (<> span (:text message) nil)))
