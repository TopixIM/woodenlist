
(ns app.comp.portal
  (:require-macros [respo.macros :refer [defcomp cursor-> <> div span]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.group-card :refer [comp-group-card]]
            [app.comp.creator :refer [comp-creator]]))

(def style-group-list {:flex-wrap :wrap, :cursor :pointer})

(defcomp
 comp-portal
 (states task-groups)
 (div
  {}
  (cursor-> :creator comp-creator states)
  (=< nil 32)
  (div
   {:style (merge ui/row style-group-list)}
   (->> (vals task-groups)
        (map (fn [task-group] [(:id task-group) (comp-group-card task-group)]))))))
