
(ns app.comp.message-list
  (:require-macros [respo.macros :refer [defcomp cursor-> <> div span img]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.speaker :refer [comp-speaker]]
            [app.comp.message :refer [comp-message]]))

(defcomp
 comp-message-list
 (states messages)
 (div
  {}
  (div {} (<> span "Messages(cleared automatically...)" nil))
  (=< nil 16)
  (div
   {}
   (->> (vals messages)
        (sort-by :time)
        (map (fn [message] [(:id message) (div {} (comp-message message))]))))
  (cursor-> :speaker comp-speaker states)))
