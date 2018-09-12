
(ns app.comp.home
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros
             :refer
             [defcomp
              <>
              div
              span
              button
              input
              mutation->
              action->
              list->
              cursor->
              span
              textarea]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [respo.util.list :refer [map-val]]
            [clojure.string :as string]
            [respo-ui.comp.icon :refer [comp-icon]]
            [respo-alerts.comp.alerts :refer [comp-prompt comp-alert comp-confirm]]
            [app.util :refer [delay!]]
            [inflow-popup.comp.dialog :refer [comp-dialog comp-menu-dialog]]))

(defn on-select-menu! [task state]
  (fn [result d! m!]
    (case result
      :finish (d! :task/move-task {:id (:id task), :from :working-tasks, :to :done-tasks})
      :postpone
        (d! :task/move-task {:id (:id task), :from :working-tasks, :to :pending-tasks})
      :edit
        (let [text (js/prompt "Update text" (:text task))]
          (when (some? text)
            (d!
             :task/update-text
             {:id (:id task), :text text, :group :working-tasks, :time (.now js/Date)})))
      :remove (d! :task/remove-working (:id task))
      :touch (d! :task/touch-working (:id task))
      :else)))

(def style-item
  {:line-height "32px",
   :margin "8px 0px",
   :position :absolute,
   :width "100%",
   :transition-duration "300ms",
   :white-space :nowrap,
   :max-width 480,
   :background-color (hsl 0 0 94),
   :padding "0 8px"})

(defcomp
 comp-task
 (states task idx)
 (let [state (or (:data states)
                 {:show-menu? false, :show-editor? false, :show-confirm? false})]
   (div
    {:style (merge ui/row style-item {:top (+ 8 (* idx 48))}),
     :on-click (fn [e d! m!] (m! (assoc state :show-menu? true)))}
    (<> (:text task))
    (=< 32 nil)
    (when (:show-menu? state)
      (comp-menu-dialog
       (on-select-menu! task state)
       (fn [m!] (m! %cursor (assoc state :show-menu? false)))
       {:finish "Finish",
        :edit "Edit",
        :postpone "Postpone",
        :touch "Touch",
        :remove "Remove"}))
    (when (:show-editor? state)
      (comp-dialog
       (fn [m!] (m! %cursor (assoc state :show-editor? false)))
       (div
        {}
        (textarea {:style ui/textarea})
        (div
         {:style ui/row-parted}
         (span {})
         (button {:style ui/button, :inner-text "Edit"}))))))))

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
           (delay!
            400
            #((let [el (.querySelector js/document ".cursor-task")] (.focus el)))))})))
    (list->
     {:style {:position :relative, :height (+ 8 (* 48 (count tasks)))}}
     (->> tasks
          (sort-by (fn [[k task]] (unchecked-negate (:time task))))
          (map-indexed
           (fn [idx [k task]] [(:id task) (cursor-> (:id task) comp-task states task idx)]))
          (sort-by first))))))
