
(ns app.comp.groups-view
  (:require-macros [respo.macros :refer [defcomp <> div span]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]))

(def style-group
  {:background-color colors/motif-dark, :padding 8, :margin-right 8, :margin-bottom 8})

(def style-list {:flex-wrap :wrap})

(def style-title {:font-family "Josefin Sans", :font-size 20, :font-weight 100})

(defcomp
 comp-groups-view
 (groups)
 (div
  {}
  (div {:style style-title} (<> span "All Groups" nil))
  (=< nil 16)
  (div
   {:style (merge ui/row style-list)}
   (->> (vals groups)
        (map
         (fn [task-group]
           [(:id task-group) (div {:style style-group} (<> span (:name task-group) nil))]))))))
