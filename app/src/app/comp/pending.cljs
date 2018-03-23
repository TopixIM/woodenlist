
(ns app.comp.pending
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros
             :refer
             [defcomp <> div span cursor-> button list-> action-> input]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.reel :refer [comp-reel]]
            [respo.util.list :refer [map-val]]
            [respo-ui.comp.icon :refer [comp-icon]]
            [app.comp.timed-input :refer [comp-timed-input]]))

(defcomp
 comp-task
 (states task)
 (div
  {:style (merge ui/row-center {:margin "8px 0"})}
  (cursor->
   (:id task)
   comp-timed-input
   states
   (:text task)
   (:time task)
   ""
   (fn [d! new-text instant]
     (d!
      :task/update-text
      {:id (:id task), :text new-text, :time instant, :group :pending-tasks}))
   (fn [e d! m!] (println "keydown")))
  (=< 16 nil)
  (div
   {:style {:cursor :pointer},
    :on-click (action->
               :task/move-task
               {:id (:id task), :from :pending-tasks, :to :working-tasks})}
   (comp-icon :navigate))
  (=< 16 nil)
  (div
   {:style {:cursor :pointer},
    :on-click (action->
               :task/move-task
               {:id (:id task), :from :pending-tasks, :to :done-tasks})}
   (comp-icon :android-done))))

(defcomp
 comp-pending
 (states router-data)
 (div
  {:style {:padding 16}}
  (div
   {:style {:font-family ui/font-fancy, :font-size 24, :font-weight 100}}
   (<> (str "Pending Tasks(" (count router-data) ")")))
  (list-> {} (->> router-data (map-val (fn [task] (comp-task states task)))))))
