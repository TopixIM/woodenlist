
(ns app.comp.done-tasks
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros
             :refer
             [defcomp <> div span cursor-> mutation-> button list-> action-> input a pre]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.reel :refer [comp-reel]]
            [respo.util.list :refer [map-val]]
            [respo-ui.comp.icon :refer [comp-icon]]
            ["dayjs" :as dayjs]))

(defcomp
 comp-done-task
 (task editing?)
 (div
  {:style (merge ui/row {:margin "8px 0", :align-items :center})}
  (span
   {:style (merge
            {:width 400,
             :background-color (hsl 0 0 94),
             :padding "0 8px",
             :min-height 28,
             :margin-right 16,
             :display :inline-block}),
    :inner-text (:text task)})
  (when editing?
    (div
     {:style {:cursor :pointer, :margin-right 16},
      :on-click (action-> :task/remove-done (:id task))}
     (comp-icon :android-delete)))
  (when editing?
    (div
     {:style {:cursor :pointer},
      :on-click (action->
                 :task/move-task
                 {:id (:id task), :from :done-tasks, :to :working-tasks})}
     (comp-icon :ios-loop)))))

(defcomp
 comp-done-tasks
 (states router-data)
 (let [state (or (:data states) {:editing? false})
       cursor (:cursor router-data)
       months (:months router-data)
       tasks (:tasks router-data)]
   (div
    {:style (merge ui/flex ui/row {:padding 16})}
    (list->
     {:style {:overflow :auto, :font-family ui/font-fancy, :max-height 320}}
     (->> months
          (map
           (fn [year-month]
             [year-month
              (div
               {:style (merge
                        {:cursor :pointer, :padding "0 18px"}
                        (when (= cursor year-month) {:background-color (hsl 0 0 90)})),
                :on-click (fn [e d! m!] (d! :router/change {:name :done, :data year-month}))}
               (<> year-month))]))))
    (=< 16 nil)
    (div
     {:style ui/column}
     (div
      {}
      (<>
       (str "Done Tasks(" (count tasks) ")")
       {:font-size 24, :font-family ui/font-fancy, :font-weight 100})
      (=< 16 nil)
      (if (:editing? state)
        (a
         {:style ui/link,
          :inner-text "Done",
          :on-click (mutation-> (update state :editing? not))})
        (a
         {:style ui/link,
          :inner-text "Edit",
          :on-click (mutation-> (update state :editing? not))})))
     (let [tasks-by-time (->> tasks
                              vals
                              (group-by (fn [task] (.format (dayjs (:time task)) "DD"))))]
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
                  (list->
                   {}
                   (->> tasks
                        (sort-by (fn [task] (unchecked-negate (:time task))))
                        (map
                         (fn [task] [(:id task) (comp-done-task task (:editing? state))])))))]))))))
    (comment
     if
     (pos? (count router-data))
     (div
      {}
      (button {:style ui/button, :on-click (action-> :task/clear-done nil)} (<> "Clear"))))
    (=< nil 240))))
