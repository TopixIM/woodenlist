
(ns woodenlist.comp.group-card
  (:require [hsl.core :refer [hsl]]
            [clojure.string :as string]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span input button]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-code comp-text]]))

(def style-container
  {:line-height "40px",
   :min-width 80,
   :color :white,
   :background-color colors/motif,
   :cursor :pointer,
   :padding 8,
   :margin-right 16,
   :margin-bottom 16})

(defn on-route [group-id]
  (fn [e dispatch!] (dispatch! :router/change {:name :group, :params group-id})))

(defn render [task-group]
  (fn [state mutate!]
    (div
     {:style (merge ui/center style-container), :event {:click (on-route (:id task-group))}}
     (comp-text (:name task-group) nil))))

(def comp-group-card (create-comp :group-card render))
