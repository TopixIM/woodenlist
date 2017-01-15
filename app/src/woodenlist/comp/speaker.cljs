
(ns woodenlist.comp.speaker
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span img button input]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [respo.comp.space :refer [comp-space]]))

(defn update-state [state text] text)

(def style-input {:width 400})

(defn init-state [] "")

(def comp-speaker
  (create-comp
   :speaker
   init-state
   update-state
   (fn []
     (fn [state mutate!]
       (div
        {}
        (input
         {:style (merge ui/input style-input),
          :event {:keydown (fn [e dispatch!]
                    (if (= 13 (:key-code e))
                      (do (dispatch! :message/create state) (mutate! "")))),
                  :input (fn [e dispatch!] (mutate! (:value e)))},
          :attrs {:placeholder "Message to leave...", :value state}})
        (comp-space 8 nil)
        (button
         {:style ui/button,
          :event {:click (fn [e dispatch!] (dispatch! :message/create state) (mutate! ""))}}
         (comp-text "Submit" nil)))))))
