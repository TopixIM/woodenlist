
(ns app.comp.pending
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp <> div span >> button list-> input]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [respo.util.list :refer [map-val]]
            [respo-alerts.core :refer [comp-prompt]]
            [feather.core :refer [comp-i]]))

(defcomp
 comp-task
 (states task)
 (div
  {:style (merge
           ui/row
           {:margin "8px 0", :align-items :center, :max-width 480, :width "100%"})}
  (div
   {:style (merge
            ui/flex
            {:padding "0 8px", :background-color (hsl 0 0 96), :overflow :auto})}
   (comp-prompt
    (>> states :prompt)
    {:trigger (<>
               (:text task)
               {:display :inline-block,
                :height 32,
                :line-height "32px",
                :overflow :auto,
                :white-space :nowrap}),
     :text "Update task:",
     :initial (or (:text task) "")}
    (fn [result d!]
      (d!
       :task/update-text
       {:id (:id task), :text result, :group :pending-tasks, :time (.now js/Date)}))))
  (=< 16 nil)
  (div
   {:style {:cursor :pointer},
    :on-click (fn [e d!]
      (d! :task/move-task {:id (:id task), :from :pending-tasks, :to :working-tasks}))}
   (comp-i :corner-up-left 14 (hsl 0 0 50)))
  (comment
   div
   {:style {:cursor :pointer},
    :on-click (action->
               :task/move-task
               {:id (:id task), :from :pending-tasks, :to :done-tasks})}
   (comp-i :check 14 (hsl 0 0 50)))))

(defcomp
 comp-pending
 (states router-data)
 (div
  {:style (merge ui/flex {:padding 16, :overflow :auto})}
  (div
   {:style {:font-family ui/font-fancy, :font-size 24, :font-weight 100}}
   (<> (str "Pending Tasks(" (count router-data) ")")))
  (list->
   {:style {:width "100%"}}
   (->> router-data
        (sort-by (fn [[k task]] (unchecked-negate (:time task))))
        (map-val (fn [task] (comp-task (>> states (:id task)) task)))))))
