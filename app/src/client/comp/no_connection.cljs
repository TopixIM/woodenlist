
(ns client.comp.no-connection
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span img]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [respo.comp.space :refer [comp-space]]))

(def style-container {:font-family "Josefin Sans", :font-size 40, :font-weight 100})

(defn render []
  (fn [state mutate!]
    (div
     {:style (merge ui/fullscreen ui/center style-container)}
     (comp-text "No connection." nil))))

(def comp-no-connection (create-comp :no-connection render))
