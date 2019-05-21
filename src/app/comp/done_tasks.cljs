
(ns app.comp.done-tasks
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core
             :refer
             [defcomp <> div span cursor-> mutation-> button list-> action-> input a pre]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [respo.util.list :refer [map-val]]
            [feather.core :refer [comp-i]]
            ["dayjs" :as dayjs]))

(defcomp
 comp-done-task
 (task editing?)
 (div
  {:style (merge ui/row {:margin "8px 0", :align-items :center})}
  (span
   {:style (merge
            {:background-color (hsl 0 0 94),
             :padding "0 8px",
             :height 32,
             :line-height "32px",
             :margin-right 16,
             :display :inline-block,
             :overflow :auto,
             :white-space :nowrap}),
    :inner-text (:text task)})
  (when editing?
    (div
     {:style {:cursor :pointer, :margin-right 16},
      :on-click (action-> :task/remove-done (:id task))}
     (comp-i :trash 14 (hsl 0 0 50))))
  (when editing?
    (div
     {:style {:cursor :pointer},
      :on-click (action->
                 :task/move-task
                 {:id (:id task), :from :done-tasks, :to :working-tasks})}
     (comp-i :repeat 14 (hsl 0 0 50))))))

(defcomp
 comp-done-tasks
 (states router-data)
 (let [state (or (:data states) {:editing? false})
       cursor (:cursor router-data)
       months (:months router-data)
       tasks (:tasks router-data)]
   (div
    {:style (merge ui/flex ui/row {:padding "16px 8px", :overflow :auto, :height "100%"})}
    (list->
     {:style {:overflow :auto, :font-family ui/font-fancy, :width 80, :flex-shrink 0}}
     (->> months
          (sort (fn [x y] (compare y x)))
          (map
           (fn [year-month]
             [year-month
              (div
               {:style (merge
                        {:cursor :pointer, :padding "0 8px"}
                        (when (= cursor year-month) {:background-color (hsl 0 0 94)})),
                :class-name "item",
                :on-click (fn [e d! m!] (d! :router/change {:name :done, :data year-month}))}
               (<> year-month))]))))
    (=< 8 nil)
    (div
     {:style (merge
              ui/flex
              ui/column
              {:overflow :auto, :height "100%", :padding-bottom 120})}
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
