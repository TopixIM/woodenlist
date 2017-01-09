
(ns woodenlist.comp.person
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span img input]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [respo.comp.space :refer [comp-space]]
            [woodenlist.comp.group-card :refer [comp-group-card]]))

(def style-avatar
  {:width 80,
   :background-image colors/paper,
   :border-radius "50%",
   :background-size :cover,
   :height 80})

(defn render [router-data]
  (fn [state mutate!]
    (let [user (:user router-data)]
      (div
       {}
       (div
        {}
        (div
         {:style (merge style-avatar {:background-image (str "url(" (:avatar user) ")")})}))
       (div {} (comp-text "Name:" nil) (comp-space 8 nil) (comp-text (:name user) nil))
       (div
        {}
        (comp-text "Id:" nil)
        (comp-space 8 nil)
        (input {:style ui/input, :attrs {:value (:id user)}}))
       (comp-space nil 8)
       (div
        {:style ui/row}
        (comp-text "Groups:" nil)
        (comp-space 16 nil)
        (div
         {:style ui/row}
         (->> (:groups router-data)
              (map
               (fn [entry] (update entry 1 (fn [task-group] (comp-group-card task-group))))))))))))

(def comp-person (create-comp :persion render))
