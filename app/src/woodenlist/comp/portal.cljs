
(ns woodenlist.comp.portal
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]))

(defn on-group [group-id]
  (fn [e dispatch!] (dispatch! :router/change {:router nil, :name :group, :params group-id})))

(def style-group
  {:color :white,
   :background-color colors/attractive,
   :width 128,
   :margin-right 16,
   :margin-bottom 16,
   :height 64})

(def style-trigger
  {:color colors/motif, :font-size 40, :cursor :pointer, :display :inline-block})

(def style-group-list {:flex-wrap :wrap, :cursor :pointer})

(defn on-create [e dispatch!] (dispatch! :task-group/create "New Group"))

(defn render [task-groups]
  (fn [state mutate!]
    (div
     {}
     (div
      {:style (merge ui/row style-group-list)}
      (->> (vals task-groups)
           (map
            (fn [task-group]
              [(:id task-group)
               (div
                {:style (merge ui/center style-group),
                 :event {:click (on-group (:id task-group))}}
                (comp-text (:name task-group)))]))))
     (div
      {:style (merge ui/center style-trigger), :event {:click on-create}}
      (span {:attrs {:class-name "icon ion-md-add-circle"}})))))

(def comp-portal (create-comp :portal render))
