
(ns woodenlist.comp.task
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span input]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-code comp-text]]))

(defn on-touch [group-id task-id]
  (fn [e dispatch!] (dispatch! :task/touch {:group-id group-id, :task-id task-id})))

(def style-container {:align-items :center, :margin-top 8, :color colors/texture})

(def style-touch
  {:width 40, :height 40, :cursor :pointer, :background-color colors/verdant})

(def style-done
  {:width 40, :height 40, :cursor :pointer, :background-color colors/attractive})

(defn on-toggle [group-id task-id done?]
  (fn [e dispatch!]
    (dispatch! :task/toggle {:group-id group-id, :task-id task-id, :done? done?})))

(def style-text
  {:min-width 400,
   :background-color colors/paper,
   :height 40,
   :line-height "40px",
   :padding "0 8px",
   :cursor :pointer})

(defn on-edit [group-id task-id]
  (fn [e dispatch!]
    (dispatch!
     :router/change
     {:name :task-editor, :params {:group-id group-id, :task-id task-id}})))

(defn render [task]
  (fn [state mutate!]
    (div
     {:style (merge ui/row style-container)}
     (div
      {:style (merge style-done (if (:done? task) {:background-color colors/verdant})),
       :event {:click (on-toggle (:group-id task) (:id task) (:done? task))}})
     (comp-space 8 nil)
     (div
      {:event {:click (on-edit (:group-id task) (:id task))}, :style style-text}
      (comp-text (:text task) nil))
     (comp-space 8 nil)
     (div
      {:style style-touch,
       :attrs {:title "Touch"},
       :event {:click (on-touch (:group-id task) (:id task))}}))))

(def comp-task (create-comp :task render))
