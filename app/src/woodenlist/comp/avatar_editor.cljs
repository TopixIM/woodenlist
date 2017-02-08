
(ns woodenlist.comp.avatar-editor
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span img button input]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [respo.comp.space :refer [comp-space]]))

(def style-url {:width 600})

(defn init-state [] "")

(defn on-submit [url mutate!] (fn [e dispatch!] (dispatch! :user/avatar url) (mutate! "")))

(defn update-state [state text] text)

(def comp-avatar-editor
  (create-comp
   :avatar-editor
   init-state
   update-state
   (fn [avatar]
     (fn [state mutate!]
       (div
        {}
        (div {})
        (div
         {}
         (input
          {:style (merge ui/input style-url),
           :attrs {:value state, :placeholder (or avatar "URL for avatar"), :type "url"},
           :event {:input (fn [e dispatch!] (mutate! (:value e)))}})
         (comp-space 8 nil)
         (button
          {:style ui/button, :event {:click (on-submit state mutate!)}}
          (comp-text "Submit"))))))))
