
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
            [respo-alerts.comp.alerts :refer [comp-prompt]]))

(defcomp
 comp-task
 (states task)
 (div
  {:style (merge ui/row {:margin "8px 0", :align-items :center, :width 400})}
  (div
   {:style (merge ui/flex {:padding "0 8px", :background-color (hsl 0 0 96), :height 28})}
   (cursor->
    :prompt
    comp-prompt
    states
    {:trigger (<> (:text task) {:display :inline-block, :min-width 100, :height 28}),
     :text "Update task:",
     :initial (or (:text task) "")}
    (fn [result d! m!]
      (d!
       :task/update-text
       {:id (:id task), :text result, :group :pending-tasks, :time (.now js/Date)}))))
  (=< 16 nil)
  (div
   {:style {:cursor :pointer},
    :on-click (action->
               :task/move-task
               {:id (:id task), :from :pending-tasks, :to :working-tasks})}
   (comp-icon :navigate))
  (=< 16 nil)
  (comment
   div
   {:style {:cursor :pointer},
    :on-click (action->
               :task/move-task
               {:id (:id task), :from :pending-tasks, :to :done-tasks})}
   (comp-icon :android-done))))

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
   (->> router-data (map-val (fn [task] (cursor-> (:id task) comp-task states task)))))))
