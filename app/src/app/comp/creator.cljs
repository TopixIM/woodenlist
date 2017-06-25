
(ns app.comp.creator
  (:require-macros [respo.macros :refer [defcomp div span input <>]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]))

(def style-trigger
  {:color colors/motif,
   :cursor :pointer,
   :font-size 32,
   :display :inline-block,
   :vertical-align :center})

(defn on-create [text]
  (fn [e dispatch! mutate!] (dispatch! :task-group/create text) (mutate! "")))

(defcomp
 comp-creator
 (states)
 (let [state (or (:data states) "")]
   (div
    {}
    (div
     {}
     (input
      {:attrs {:value state, :placeholder "Group name"},
       :event {:input (fn [e dispatch! mutate!] (mutate! (:value e)))},
       :style ui/input})
     (=< 8 nil)
     (div
      {:style (merge ui/center style-trigger), :event {:click (on-create state)}}
      (span {:attrs {:class-name "icon ion-md-add-circle"}}))))))
