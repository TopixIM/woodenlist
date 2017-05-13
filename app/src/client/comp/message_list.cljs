
(ns client.comp.message-list
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span img]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [respo.comp.space :refer [comp-space]]
            [client.comp.speaker :refer [comp-speaker]]
            [client.comp.message :refer [comp-message]]))

(def comp-message-list
  (create-comp
   :message-list
   (fn [messages]
     (fn [state mutate!]
       (div
        {}
        (div {} (comp-text "Messages(cleared automatically...)" nil))
        (comp-space nil 16)
        (div
         {}
         (->> (vals messages)
              (sort-by :time)
              (map (fn [message] [(:id message) (div {} (comp-message message))]))))
        (comp-speaker))))))
