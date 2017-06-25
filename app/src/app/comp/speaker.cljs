
(ns app.comp.speaker
  (:require-macros [respo.macros :refer [defcomp <> div span img button input]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]))

(def style-input {:width 400})

(def initial-state "")

(defcomp
 comp-speaker
 (states)
 (let [state (or (:data states) initial-state)]
   (div
    {}
    (input
     {:attrs {:value state, :placeholder "Message to leave..."},
      :event {:input (fn [e dispatch! mutate!] (mutate! (:value e))),
              :keydown (fn [e dispatch! mutate!]
                (if (= 13 (:key-code e)) (do (dispatch! :message/create state) (mutate! ""))))},
      :style (merge ui/input style-input)})
    (=< 8 nil)
    (button
     {:style ui/button,
      :event {:click (fn [e dispatch! mutate!]
                (dispatch! :message/create state)
                (mutate! ""))}}
     (<> span "Submit" nil)))))
