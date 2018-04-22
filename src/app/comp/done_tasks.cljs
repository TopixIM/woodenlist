
(ns app.comp.done-tasks
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
            [app.util :refer [format-date]]))

(defcomp
 comp-done-task
 (task)
 (div
  {:style (merge ui/row {:margin "8px 0", :align-items :center})}
  (div
   {:style (merge
            {:width 400, :background-color (hsl 0 0 94), :padding "0 8px", :min-height 28})}
   (<> (:text task)))
  (=< 16 nil)
  (div
   {:style {:cursor :pointer}, :on-click (action-> :task/remove-done (:id task))}
   (comp-icon :android-delete))
  (=< 16 nil)
  (div
   {:style {:cursor :pointer},
    :on-click (action->
               :task/move-task
               {:id (:id task), :from :done-tasks, :to :working-tasks})}
   (comp-icon :ios-loop))))

(defcomp
 comp-done-tasks
 (states router-data)
 (div
  {:style (merge ui/flex {:padding 16, :overflow :auto})}
  (div
   {:style {:font-size 24, :font-family ui/font-fancy, :font-weight 100}}
   (<> (str "Done Tasks(" (count router-data) ")")))
  (let [tasks-by-time (->> router-data
                           vals
                           (group-by (fn [task] (format-date (:time task)))))]
    (list->
     {}
     (->> tasks-by-time
          (sort (fn [pair-a pair-b] (compare (first pair-b) (first pair-a))))
          (map
           (fn [[date tasks]]
             [date
              (div
               {}
               (div
                {:style {:font-family ui/font-fancy,
                         :font-size 16,
                         :font-weight 100,
                         :margin-top 16,
                         :line-height "24px"}}
                (<> date))
               (list-> {} (->> tasks (map (fn [task] [(:id task) (comp-done-task task)])))))])))))
  (if (pos? (count router-data))
    (div
     {}
     (button {:style ui/button, :on-click (action-> :task/clear-done nil)} (<> "Clear"))))
  (=< nil 240)))
