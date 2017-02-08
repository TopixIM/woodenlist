
(ns woodenlist.comp.task-draft
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span input]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]))

(defn init-state [& args] "")

(defn update-state [state text] text)

(def style-draft {:width 400})

(defn on-keydown [mutate! text group-id]
  (fn [e dispatch!]
    (if (= 13 (:key-code e))
      (do (mutate! "") (dispatch! :task/create {:text text, :group-id group-id})))))

(defn on-input [mutate!] (fn [e dispach!] (mutate! (:value e))))

(defn render [group-id]
  (fn [state mutate!]
    (input
     {:style (merge ui/input style-draft),
      :attrs {:value state, :placeholder "Add task"},
      :event {:input (on-input mutate!), :keydown (on-keydown mutate! state group-id)}})))

(def comp-task-draft (create-comp :task-draft init-state update-state render))
