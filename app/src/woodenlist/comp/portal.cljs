
(ns woodenlist.comp.portal
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]
            [woodenlist.comp.group-card :refer [comp-group-card]]))

(def style-trigger
  {:color colors/motif, :font-size 40, :cursor :pointer, :display :inline-block})

(def style-group-list {:flex-wrap :wrap, :cursor :pointer, :display :inline-flex})

(defn on-create [e dispatch!] (dispatch! :task-group/create "New Group"))

(defn render [task-groups]
  (fn [state mutate!]
    (div
     {}
     (div
      {:style (merge ui/row style-group-list)}
      (->> (vals task-groups)
           (map (fn [task-group] [(:id task-group) (comp-group-card task-group)]))))
     (div
      {:style (merge ui/center style-trigger), :event {:click on-create}}
      (span {:attrs {:class-name "icon ion-md-add-circle"}})))))

(def comp-portal (create-comp :portal render))
