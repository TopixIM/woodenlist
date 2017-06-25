
(ns app.comp.avatar-editor
  (:require-macros [respo.macros :refer [defcomp div <> span img button input]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]))

(def style-url {:width 600})

(defn on-submit [url] (fn [e dispatch! mutate!] (dispatch! :user/avatar url) (mutate! "")))

(def initial-state "")

(defcomp
 comp-avatar-editor
 (states avatar)
 (let [state (or (:data states) initial-state)]
   (div
    {}
    (div
     {}
     (input
      {:style (merge ui/input style-url),
       :attrs {:value state, :placeholder (or avatar "URL for avatar"), :type "url"},
       :event {:input (fn [e dispatch! mutate!] (mutate! (:value e)))}})
     (=< 8 nil)
     (button {:style ui/button, :event {:click (on-submit state)}} (<> span "Submit" nil))))))
