
(ns app.comp.no-connection
  (:require-macros [respo.macros :refer [defcomp <> div span img]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]))

(def style-container {:font-family "Josefin Sans", :font-size 40, :font-weight 100})

(defcomp
 comp-no-connection
 ()
 (div
  {:style (merge ui/fullscreen ui/center style-container)}
  (<> span "No connection." nil)))
