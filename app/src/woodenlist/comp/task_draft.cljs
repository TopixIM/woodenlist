
(ns woodenlist.comp.task-draft
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span input]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]))

(defn on-input [mutate!] (fn [e dispach!] (mutate! (:value e))))

(defn update-state [state text] text)

(def style-draft {:width 400})

(defn init-state [& args] "")

(defn on-keydown [mutate! text group-id]
  (fn [e dispatch!]
    (if (= 13 (:key-code e))
      (do (mutate! "") (dispatch! :task/create {:group-id group-id, :text text})))))

(defn render [group-id]
  (fn [state mutate!]
    (input
     {:style (merge ui/input style-draft),
      :event {:keydown (on-keydown mutate! state group-id), :input (on-input mutate!)},
      :attrs {:placeholder "Add task", :value state}})))

(def comp-task-draft (create-comp :task-draft init-state update-state render))
