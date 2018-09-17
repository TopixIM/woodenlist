
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
              input]]
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
    (let [new-state (assoc state :show-menu? false)]
      (case result
        :finish
          (do
           (d! :task/move-task {:id (:id task), :from :working-tasks, :to :done-tasks})
           (m! new-state))
        :postpone
          (do
           (d! :task/move-task {:id (:id task), :from :working-tasks, :to :pending-tasks})
           (m! new-state))
        :edit (m! (assoc new-state :show-editor? true))
        :remove (m! (assoc new-state :show-confirm? true))
        :touch (do (d! :task/touch-working (:id task)) (m! new-state))
        nil (m! new-state)
        :else))))

(def style-item
  {:line-height "32px",
   :margin "8px 0px",
   :position :absolute,
   :width "100%",
   :transition-duration "300ms",
   :white-space :nowrap,
   :height "32px",
   :max-width 480,
   :background-color (hsl 0 0 94),
   :padding "0 8px"})

(defcomp
 comp-task
 (states task idx)
 (let [state (or (:data states)
                 {:show-menu? false,
                  :show-editor? false,
                  :show-confirm? false,
                  :task-draft (:text task)})]
   (div
    {:style (merge
             ui/row
             style-item
             {:top (+ 8 (* idx 48))}
             (when (or (:show-menu? state) (:show-editor? state) (:show-confirm? state))
               {:outline (str "2px solid " (hsl 240 80 86))})),
     :on-click (fn [e d! m!] (m! (assoc state :show-menu? true)))}
    (<> (:text task))
    (=< 32 nil)
    (when (:show-menu? state)
      (comp-menu-dialog
       (on-select-menu! task state)
       {:finish "Finish",
        :edit "Edit",
        :postpone "Postpone",
        :touch "Touch",
        :remove "Remove"}))
    (when (:show-editor? state)
      (comp-dialog
       (fn [m!] (m! %cursor (assoc state :show-editor? false)))
       (div
        {:style {:min-width 280}}
        (div
         {}
         (input
          {:style (merge ui/input {:width "100%"}),
           :value (or (:task-draft state) (:text task)),
           :autofocus true,
           :on-input (fn [e d! m!] (m! (assoc state :task-draft (:value e))))}))
        (=< nil 16)
        (div
         {:style ui/row-parted}
         (span {})
         (button
          {:style ui/button,
           :on-click (fn [e d! m!]
             (let [text (:task-draft state)]
               (when (some? text)
                 (m! (assoc state :task-draft nil :show-editor? false))
                 (d!
                  :task/update-text
                  {:id (:id task), :text text, :group :working-tasks, :time (.now js/Date)})))),
           :inner-text "Edit"})))))
    (when (:show-confirm? state)
      (comp-dialog
       (fn [m!] (m! %cursor (assoc state :show-confirm? false)))
       (div
        {:style {:width 320}}
        (div {} (<> "Confirm remove?"))
        (div
         {:style ui/row-parted}
         (span {})
         (button
          {:style ui/button, :on-click (fn [e d! m!] (d! :task/remove-working (:id task)))}
          (<> "Confirm")))))))))

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
