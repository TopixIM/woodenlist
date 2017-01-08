
(ns woodenlist.comp.back
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span input]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.space :refer [comp-space]]
            [respo.comp.text :refer [comp-code comp-text]]))

(def style-container
  {:color colors/texture-light,
   :background-color colors/paper,
   :width 80,
   :cursor :pointer,
   :display :inline-flex,
   :height 32})

(defn on-back [group-id]
  (fn [e dispatch!] (dispatch! :router/change {:name :group, :params group-id})))

(defn render [group-id]
  (fn [state mutate!]
    (div
     {:style (merge ui/center style-container), :event {:click (on-back group-id)}}
     (comp-text "Go back" nil))))

(def comp-back (create-comp :back render))
