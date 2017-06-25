
(ns app.comp.people
  (:require-macros [respo.macros :refer [defcomp <> div img span]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.member-card :refer [comp-member-card]]))

(def style-list {:flex-wrap :wrap})

(def style-title {:font-family "Josefin Sans", :font-size 20, :font-weight 100})

(defcomp
 comp-people
 (members)
 (div
  {}
  (div {:style style-title} (<> span "People" nil))
  (=< nil 16)
  (div
   {:style (merge ui/row style-list)}
   (->> (vals members) (map (fn [user] [(:id user) (comp-member-card user)]))))))
