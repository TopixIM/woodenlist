
(ns woodenlist.comp.creator
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span input]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]
            [respo.comp.space :refer [comp-space]]))

(defn update-state [state new-text] new-text)

(def style-trigger
  {:color colors/motif,
   :vertical-align :center,
   :font-size 32,
   :cursor :pointer,
   :display :inline-block})

(defn init-state [] "")

(defn on-create [text mutate!]
  (fn [e dispatch!] (dispatch! :task-group/create text) (mutate! "")))

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
          {:style ui/input,
           :event {:input (fn [e dispatch!] (mutate! (:value e)))},
           :attrs {:placeholder "Group name", :value state}})
         (comp-space 8 nil)
         (div
          {:style (merge ui/center style-trigger),
           :event {:click (on-create state mutate!)}}
          (span {:attrs {:class-name "icon ion-md-add-circle"}}))))))))
