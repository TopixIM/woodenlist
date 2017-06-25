
(ns app.comp.back
  (:require-macros [respo.macros :refer [defcomp <> div span input]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]))

(def style-container
  {:background-color colors/paper,
   :color colors/texture-light,
   :display :inline-flex,
   :width 80,
   :height 32,
   :cursor :pointer})

(defn on-back [group-id]
  (fn [e dispatch!] (dispatch! :router/change {:name :group, :params group-id})))

(defcomp
 comp-back
 (group-id)
 (div
  {:style (merge ui/center style-container), :event {:click (on-back group-id)}}
  (<> span "Go back" nil)))
