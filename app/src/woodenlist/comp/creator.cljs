
(ns woodenlist.comp.creator
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span input]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]
            [respo.comp.space :refer [comp-space]]))

(def style-trigger
  {:color colors/motif,
   :cursor :pointer,
   :font-size 32,
   :display :inline-block,
   :vertical-align :center})

(defn init-state [] "")

(defn on-create [text mutate!]
  (fn [e dispatch!] (dispatch! :task-group/create text) (mutate! "")))

(defn update-state [state new-text] new-text)

(def comp-creator
  (create-comp
   :creator
   init-state
   update-state
   (fn []
     (fn [state mutate!]
       (div
        {}
        (div
         {}
         (input
          {:attrs {:value state, :placeholder "Group name"},
           :event {:input (fn [e dispatch!] (mutate! (:value e)))},
           :style ui/input})
         (comp-space 8 nil)
         (div
          {:style (merge ui/center style-trigger),
           :event {:click (on-create state mutate!)}}
          (span {:attrs {:class-name "icon ion-md-add-circle"}}))))))))
