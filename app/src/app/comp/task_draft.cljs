
(ns app.comp.task-draft
  (:require-macros [respo.macros :refer [defcomp <> div span input]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]))

(def style-draft {:width 400})

(defn on-keydown [text group-id]
  (fn [e dispatch! mutate!]
    (if (= 13 (:key-code e))
      (do (mutate! "") (dispatch! :task/create {:text text, :group-id group-id})))))

(defn on-input [e dispach! mutate!] (mutate! (:value e)))

(defcomp
 comp-task-draft
 (states group-id)
 (let [state (or (:data states) "")]
   (input
    {:value state,
     :placeholder "Add task",
     :style (merge ui/input style-draft),
     :event {:input on-input, :keydown (on-keydown state group-id)}})))
