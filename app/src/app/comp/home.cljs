
(ns app.comp.home
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros
             :refer
             [defcomp <> div span button input mutation-> action-> list-> cursor-> span]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [respo.util.list :refer [map-val]]
            [clojure.string :as string]
            [respo-ui.comp.icon :refer [comp-icon]]
            [keycode.core :as keycode]
            [app.comp.timed-input :refer [comp-timed-input]]))

(defcomp
 comp-task
 (states task idx)
 (div
  {:style (merge
           ui/row
           {:line-height "32px",
            :margin "8px 0px",
            :width 400,
            :position :absolute,
            :top (+ 8 (* idx 48)),
            :transition-duration "300ms",
            :z-index (- 100 idx)})}
  (div
   {:style (merge ui/center {:cursor :pointer}),
    :on-click (action->
               :task/move-task
               {:id (:id task), :from :working-tasks, :to :done-tasks})}
   (comp-icon :android-done))
  (=< 16 nil)
  (cursor->
   (:id task)
   comp-timed-input
   states
   (:text task)
   (:time task)
   (if (zero? idx) "cursor-task")
   (fn [new-text d!]
     (d! :task/update-text {:id (:id task), :text new-text, :group :working-tasks})))
  (=< 16 nil)
  (div
   {:style (merge ui/center {:cursor :pointer}),
    :on-click (action->
               :task/move-task
               {:id (:id task), :from :working-tasks, :to :pending-tasks}),
    :title (pr-str task)}
   (comp-icon :ios-time-outline))))

(defcomp
 comp-home
 (states tasks)
 (let [state (or (:data states) {:draft ""})]
   (div
    {:style (merge ui/flex {:padding 16})}
    (div
     {:style ui/row-parted}
     (span nil)
     (button
      {:style ui/button,
       :inner-text "Add",
       :on-click (fn [e d! m!]
         (d! :task/create "")
         (js/setTimeout
          (fn [] (let [el (.querySelector js/document ".cursor-task")] (.focus el)))
          300))}))
    (list->
     {:style {:position :relative,
              :height (+ 8 (* 48 (count tasks))),
              :background-color (hsl 0 0 98)}}
     (->> tasks
          (sort-by (fn [[k task]] (unchecked-negate (:time task))))
          (map-indexed (fn [idx [k task]] [(:id task) (comp-task states task idx)]))
          (sort-by first))))))
