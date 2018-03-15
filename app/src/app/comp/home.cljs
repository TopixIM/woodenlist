
(ns app.comp.home
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros
             :refer
             [defcomp <> div span button input mutation-> action-> list-> cursor->]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [respo.util.list :refer [map-val]]
            [clojure.string :as string]
            [respo-ui.comp.icon :refer [comp-icon]]
            [keycode.core :as keycode]
            [app.comp.timed-input :refer [comp-timed-input]]))

(defcomp
 comp-task
 (states task)
 (div
  {:style (merge ui/row {:line-height "32px", :margin "8px 0px", :width 400})}
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
     {}
     (input
      {:style (merge ui/input {:width 320}),
       :placeholder "new task here...",
       :value (:draft state),
       :on-input (mutation-> (assoc state :draft (:value %e))),
       :on-keydown (fn [e d! m!]
         (let [draft (:draft state)]
           (if (and (= (:keycode e) keycode/return) (not (string/blank? draft)))
             (do (d! :task/create draft) (m! (assoc state :draft ""))))))})
     (=< 8 nil)
     (button
      {:style ui/button,
       :inner-text "Add",
       :on-click (fn [e d! m!]
         (let [draft (:draft state)]
           (if (not (string/blank? draft))
             (do (d! :task/create draft) (m! (assoc state :draft ""))))))}))
    (list->
     {}
     (->> tasks
          (sort-by (fn [[k task]] (unchecked-negate (:time task))))
          (map-val (fn [task] (comp-task states task))))))))
