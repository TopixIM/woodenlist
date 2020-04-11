
(ns app.comp.home
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp <> div span button input >> list-> span input]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [respo.util.list :refer [map-val]]
            [clojure.string :as string]
            [feather.core :refer [comp-i]]
            [respo-alerts.core
             :refer
             [comp-prompt comp-alert comp-confirm comp-modal-menu use-confirm use-prompt]]
            [cumulo-util.core :refer [delay!]]))

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
 (let [cursor (:cursor states)
       state (or (:data states)
                 {:show-menu? false, :show-editor? false, :task-draft (:text task)})
       remove-plugin (use-confirm (>> states :remove) {:text "Sure to remove?"})
       update-plugin (use-prompt
                      (>> states :update)
                      {:text "Edit task:", :initial (:text task), :button-text "Edit"})]
   (div
    {:style (merge
             ui/row
             style-item
             {:top (+ 8 (* idx 48))}
             (when (or (:show-menu? state) (:show-editor? state))
               {:outline (str "2px solid " (hsl 240 80 86))})),
     :on-click (fn [e d!] (d! cursor (assoc state :show-menu? true))),
     :draggable true,
     :on-dragend (fn [e d!] (d! :task/touch-working (:id task)))}
    (<>
     (:text task)
     (merge ui/expand {:text-overflow :ellipsis, :overflow :hidden, :max-width "100%"}))
    (=< 32 nil)
    (comp-modal-menu
     {:title "Operations",
      :style {:line-height "24px"},
      :items (concat
              (if (re-find (re-pattern "https?://") (:text task))
                [{:value :open, :display "Open Link"}]
                nil)
              [{:value :finish, :display "Finish"}
               {:value :edit, :display "Edit"}
               {:value :postpone, :display "Postpone"}
               {:value :touch, :display "Up"}
               {:value :remove, :display "Remove"}])}
     (:show-menu? state)
     (fn [d!] (d! cursor (assoc state :show-menu? false)))
     (fn [item d!]
       (let [new-state (assoc state :show-menu? false)]
         (case (:value item)
           :finish
             (do
              (d! :task/move-task {:id (:id task), :from :working-tasks, :to :done-tasks})
              (d! cursor new-state))
           :postpone
             (do
              (d!
               :task/move-task
               {:id (:id task), :from :working-tasks, :to :pending-tasks})
              (d! cursor new-state))
           :edit
             (do
              (d! cursor new-state)
              ((:show update-plugin)
               d!
               (fn [text]
                 (when (some? text)
                   (d!
                    :task/update-text
                    {:id (:id task),
                     :text text,
                     :group :working-tasks,
                     :time (.now js/Date)})))))
           :remove
             (do
              (d! cursor new-state)
              ((:show remove-plugin) d! (fn [] (d! :task/remove-working (:id task)))))
           :touch (do (d! :task/touch-working (:id task)) (d! cursor new-state))
           :open
             (do
              (js/window.open (re-find (re-pattern "https?://\\S+") (:text task)))
              (d! cursor new-state))
           nil (d! cursor new-state)
           :else))))
    (:ui remove-plugin)
    (:ui update-plugin))))

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
     (comp-prompt
      (>> states :create)
      {:trigger (comp-i :plus 14 (hsl 0 0 50)), :text "New task:", :initial ""}
      (fn [result d!] (when (not (string/blank? result)) (d! :task/create result)))))
    (if (empty? tasks)
      (div
       {:style ui/row-parted}
       (button
        {:style ui/button,
         :inner-text "Add",
         :on-click (fn [e d!]
           (d! :task/create "")
           (delay!
            0.4
            #((let [el (.querySelector js/document ".cursor-task")] (.focus el)))))})))
    (list->
     {:style {:position :relative, :height (+ 8 (* 48 (count tasks)))}}
     (->> tasks
          (sort-by (fn [[k task]] (unchecked-negate (:time task))))
          (map-indexed
           (fn [idx [k task]] [(:id task) (comp-task (>> states (:id task)) task idx)]))
          (sort-by first))))))
