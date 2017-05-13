
(ns client.comp.portal
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [respo.comp.space :refer [comp-space]]
            [client.comp.group-card :refer [comp-group-card]]
            [client.comp.creator :refer [comp-creator]]))

(def style-group-list {:flex-wrap :wrap, :cursor :pointer})

(defn render [task-groups]
  (fn [state mutate!]
    (div
     {}
     (comp-creator)
     (comp-space nil 32)
     (div
      {:style (merge ui/row style-group-list)}
      (->> (vals task-groups)
           (map (fn [task-group] [(:id task-group) (comp-group-card task-group)])))))))

(def comp-portal (create-comp :portal render))
