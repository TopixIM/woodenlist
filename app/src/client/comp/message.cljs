
(ns client.comp.message
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span img]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [respo.comp.space :refer [comp-space]]))

(def style-avatar {:width 32, :height 32, :border-radius "50%", :background-size "cover"})

(def style-message {:margin-bottom 8})

(def comp-message
  (create-comp
   :message
   (fn [message]
     (fn [state mutate!]
       (div
        {:style (merge ui/row style-message)}
        (div
         {:style (merge
                  style-avatar
                  {:background-image (str "url(" (get-in message [:user :avatar]) ")")})})
        (comp-space 8 nil)
        (comp-text (:text message) nil))))))
