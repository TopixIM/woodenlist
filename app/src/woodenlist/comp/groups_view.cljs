
(ns woodenlist.comp.groups-view
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]
            [respo.comp.space :refer [comp-space]]))

(def style-title {:font-size 20, :font-weight 100, :font-family "Josefin Sans"})

(def style-list {:flex-wrap :wrap})

(def style-group
  {:background-color colors/motif-dark, :padding 8, :margin-right 8, :margin-bottom 8})

(defn render [groups]
  (fn [state mutate!]
    (div
     {}
     (div {:style style-title} (comp-text "All Groups" nil))
     (comp-space nil 16)
     (div
      {:style (merge ui/row style-list)}
      (->> (vals groups)
           (map
            (fn [task-group]
              [(:id task-group) (div {:style style-group} (comp-text (:name task-group) nil))])))))))

(def comp-groups-view (create-comp :groups-view render))
