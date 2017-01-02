
(ns woodenlist.comp.group
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span input]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]))

(def style-draft {:width 400})

(def style-container {:width "100%"})

(def style-empty
  {:color colors/texture-light, :font-size 20, :font-weight 100, :font-family "Josefin Sans"})

(def style-sidebar {:width 320})

(def style-name {:font-size 24, :font-weight 100, :font-family "Josefin Sans"})

(defn render [task-group]
  (fn [state mutate!]
    (div
     {:style (merge ui/row style-container)}
     (div
      {:style style-sidebar}
      (div {:style style-name} (comp-text (:name task-group) nil)))
     (div
      {}
      (let [tasks (:tasks task-group)]
        (div
         {}
         (div {} (input {:style (merge ui/input style-draft)}))
         (if (empty? tasks)
           (div {:style style-empty} (comp-text "No tasks" nil))
           (div
            {}
            (->> (vals tasks)
                 (map (fn [task] [(:id task) (div {} (comp-text (:text task) nil))])))))))))))

(def comp-group (create-comp :group render))
