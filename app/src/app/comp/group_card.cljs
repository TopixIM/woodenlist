
(ns app.comp.group-card
  (:require-macros [respo.macros :refer [defcomp <> div span input button]])
  (:require [hsl.core :refer [hsl]]
            [clojure.string :as string]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]))

(def style-container
  {:background-color colors/motif,
   :line-height "40px",
   :cursor :pointer,
   :color :white,
   :margin-right 16,
   :margin-bottom 16,
   :padding 8,
   :min-width 80})

(defn on-route [group-id]
  (fn [e dispatch!] (dispatch! :router/change {:name :group, :params group-id})))

(defcomp
 comp-group-card
 (task-group)
 (div
  {:style (merge ui/center style-container), :event {:click (on-route (:id task-group))}}
  (<> span (:name task-group) nil)))
