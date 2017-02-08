
(ns woodenlist.comp.people
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span img]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [respo.comp.space :refer [comp-space]]
            [woodenlist.comp.member-card :refer [comp-member-card]]))

(def style-list {:flex-wrap :wrap})

(def style-title {:font-family "Josefin Sans", :font-size 20, :font-weight 100})

(defn render [members]
  (fn [state mutate!]
    (div
     {}
     (div {:style style-title} (comp-text "People" nil))
     (comp-space nil 16)
     (div
      {:style (merge ui/row style-list)}
      (->> (vals members) (map (fn [user] [(:id user) (comp-member-card user)])))))))

(def comp-people (create-comp :people render))
