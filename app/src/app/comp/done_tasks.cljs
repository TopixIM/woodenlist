
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
            [respo-ui.comp.icon :refer [comp-icon]]))

(defcomp
 comp-done-tasks
 (states router-data)
 (div
  {:style {:padding 16}}
  (div
   {:style {:font-size 24, :font-family ui/font-fancy, :font-weight 100}}
   (<> (str "Done Tasks(" (count router-data) ")")))
  (list->
   {}
   (->> router-data
        (map-val
         (fn [task]
           (div
            {:style (merge ui/row-center {:margin "8px 0"})}
            (div
             {:style (merge {:width 320, :background-color (hsl 0 0 94), :padding "0 8px"})}
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
             (comp-icon :ios-loop)))))))
  (div
   {}
   (button {:style ui/button, :on-click (action-> :task/clear-done nil)} (<> "Done")))))
