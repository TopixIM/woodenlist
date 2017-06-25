
(ns app.comp.group-editor
  (:require-macros [respo.macros :refer [defcomp <> div input span button]])
  (:require [hsl.core :refer [hsl]]
            [clojure.string :as string]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.back :refer [comp-back]]))

(defn on-input [e dispatch! mutate!] (mutate! (:value e)))

(defn on-delete [group-id] (fn [e dispatch!] (dispatch! :task-group/delete group-id)))

(defn on-rename [group-id state]
  (fn [e dispatch! mutate!]
    (if (not (string/blank? state))
      (do (dispatch! :task-group/rename {:id group-id, :text state}) (mutate! "")))))

(defcomp
 comp-group-editor
 (states task-group)
 (let [state (or (:data states) "")]
   (div
    {}
    (div {} (<> span (:name task-group) nil))
    (div
     {}
     (input
      {:style ui/input,
       :attrs {:value state, :placeholder "Group name"},
       :event {:input on-input}})
     (=< 8 nil)
     (button
      {:style ui/button, :event {:click (on-rename (:id task-group) state)}}
      (<> span "Submit" nil)))
    (=< nil 120)
    (div
     {}
     (<> span "Delete the whole group!" nil)
     (=< 8 nil)
     (button
      {:style (merge ui/button {:background-color colors/irreversible}),
       :event {:click (on-delete (:id task-group))}}
      (<> span "Delete" nil)))
    (=< nil 16)
    (comp-back (:id task-group)))))
