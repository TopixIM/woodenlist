
(ns app.comp.person
  (:require-macros [respo.macros :refer [defcomp <> div span img input]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.group-card :refer [comp-group-card]]))

(def style-avatar
  {:width 80,
   :height 80,
   :background-image colors/paper,
   :background-size :cover,
   :border-radius "50%"})

(defcomp
 comp-person
 (router-data)
 (let [user (:user router-data)]
   (div
    {}
    (div
     {}
     (div {:style (merge style-avatar {:background-image (str "url(" (:avatar user) ")")})}))
    (div {} (<> span "Name:" nil) (=< 8 nil) (<> span (:name user) nil))
    (div
     {}
     (<> span "Id:" nil)
     (=< 8 nil)
     (input {:style ui/input, :attrs {:value (:id user)}}))
    (=< nil 8)
    (div
     {:style ui/row}
     (<> span "Groups:" nil)
     (=< 16 nil)
     (div
      {:style ui/row}
      (->> (:groups router-data)
           (map
            (fn [entry] (update entry 1 (fn [task-group] (comp-group-card task-group)))))))))))
