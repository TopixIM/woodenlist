
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
            [respo-alerts.comp.alerts :refer [comp-prompt comp-alert comp-confirm]]))

(defcomp
 comp-task
 (states task idx)
 (div
  {:style (merge
           ui/row
           {:line-height "32px",
            :margin "8px 0px",
            :position :absolute,
            :top (+ 8 (* idx 48)),
            :transition-duration "300ms"}),
   :on-dblclick (action-> :task/touch-working (:id task))}
  (div
   {:style (merge ui/flex {:padding "0 8px", :background-color (hsl 0 0 96)})}
   (cursor->
    :prompt
    comp-prompt
    states
    {:trigger (<> (:text task) {:min-width 400, :height 28, :display :inline-block}),
     :text "Some text:",
     :initial (:text task)}
    (fn [result d! m!]
      (d!
       :task/update-text
       {:id (:id task), :text result, :group :working-tasks, :time (.now js/Date)}))))
  (=< 16 nil)
  (div
   {:style (merge ui/center {:cursor :pointer}),
    :on-click (action->
               :task/move-task
               {:id (:id task), :from :working-tasks, :to :done-tasks})}
   (comp-icon :android-done))
  (=< 16 nil)
  (div
   {:style (merge ui/center {:cursor :pointer}),
    :on-click (action->
               :task/move-task
               {:id (:id task), :from :working-tasks, :to :pending-tasks}),
    :title (pr-str task)}
   (comp-icon :ios-time-outline))
  (=< 16 nil)
  (div
   {:style (merge ui/center {:cursor :pointer}),
    :on-click (action-> :task/touch-working (:id task)),
    :title (pr-str task)}
   (comp-icon :android-arrow-up))
  (=< 32 nil)
  (cursor->
   :confirm
   comp-confirm
   states
   {:trigger (div
              {:style (merge ui/center {:cursor :pointer, :color (hsl 0 70 80)}),
               :title (pr-str task)}
              (comp-icon :android-close)),
    :style ui/center,
    :text "Sure to delete Task?"}
   (fn [e d! m!] (d! :task/remove-working (:id task))))))

(defcomp
 comp-home
 (states tasks)
 (let [state (or (:data states) {:draft ""})]
   (div
    {:style (merge ui/flex {:padding 16, :overflow :auto})}
    (div
     {}
     (<>
      (str "Working(" (count tasks) ")")
      {:font-size 24, :font-family ui/font-fancy, :font-weight 100})
     (=< 16 nil)
     (cursor->
      :create
      comp-prompt
      states
      {:trigger (comp-icon :android-add), :text "New task:", :initial ""}
      (fn [result d! m!] (when (not (string/blank? result)) (d! :task/create result)))))
    (if (empty? tasks)
      (div
       {:style ui/row-parted}
       (button
        {:style ui/button,
         :inner-text "Add",
         :on-click (fn [e d! m!]
           (d! :task/create "")
           (js/setTimeout
            (fn [] (let [el (.querySelector js/document ".cursor-task")] (.focus el)))
            400))})))
    (list->
     {:style {:position :relative, :height (+ 8 (* 48 (count tasks)))}}
     (->> tasks
          (sort-by (fn [[k task]] (unchecked-negate (:time task))))
          (map-indexed
           (fn [idx [k task]] [(:id task) (cursor-> (:id task) comp-task states task idx)]))
          (sort-by first))))))
