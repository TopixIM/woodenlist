
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
             [comp-prompt comp-alert comp-confirm comp-modal comp-modal-menu]]
            [cumulo-util.core :refer [delay!]]))

(defn on-select-menu! [task state result d! cursor]
  (let [new-state (assoc state :show-menu? false)]
    (case result
      :finish
        (do
         (d! :task/move-task {:id (:id task), :from :working-tasks, :to :done-tasks})
         (d! cursor new-state))
      :postpone
        (do
         (d! :task/move-task {:id (:id task), :from :working-tasks, :to :pending-tasks})
         (d! cursor new-state))
      :edit (d! cursor (assoc new-state :show-editor? true))
      :remove (d! cursor (assoc new-state :show-confirm? true))
      :touch (do (d! :task/touch-working (:id task)) (d! cursor new-state))
      :open
        (do
         (js/window.open (re-find (re-pattern "https?://\\S+") (:text task)))
         (d! cursor new-state))
      nil (d! cursor new-state)
      :else)))

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
                 {:show-menu? false,
                  :show-editor? false,
                  :show-confirm? false,
                  :task-draft (:text task)})
       on-submit (fn [d!]
                   (let [text (:task-draft state)]
                     (when (some? text)
                       (d! cursor (assoc state :task-draft nil :show-editor? false))
                       (d!
                        :task/update-text
                        {:id (:id task),
                         :text text,
                         :group :working-tasks,
                         :time (.now js/Date)}))))]
   (div
    {:style (merge
             ui/row
             style-item
             {:top (+ 8 (* idx 48))}
             (when (or (:show-menu? state) (:show-editor? state) (:show-confirm? state))
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
     (fn [item d!] (on-select-menu! task state (:value item) d! cursor)))
    (comp-modal
     {:title "Edit task",
      :render-body (fn []
        (div
         {:style {:min-width 280, :padding 16}}
         (div
          {}
          (input
           {:style (merge ui/input {:width "100%"}),
            :value (or (:task-draft state) (:text task)),
            :autofocus true,
            :on-input (fn [e d!] (d! cursor (assoc state :task-draft (:value e)))),
            :on-keydown (fn [e d!] (if (= 13 (:keycode e)) (on-submit d!)))}))
         (=< nil 16)
         (div
          {:style ui/row-parted}
          (span {})
          (button
           {:style ui/button, :on-click (fn [e d!] (on-submit d!)), :inner-text "Edit"}))))}
     (:show-editor? state)
     (fn [d!] (d! cursor (assoc state :show-editor? false))))
    (comp-modal
     {:title "Sure to remove?",
      :style {:width 360},
      :render-body (fn []
        (div
         {:style {:padding 16}}
         (div {} (<> "Confirm remove?"))
         (div
          {:style ui/row-parted}
          (span {})
          (button
           {:style ui/button, :on-click (fn [e d!] (d! :task/remove-working (:id task)))}
           (<> "Confirm")))))}
     (:show-confirm? state)
     (fn [d!] (d! cursor (assoc state :show-confirm? false)))))))

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
