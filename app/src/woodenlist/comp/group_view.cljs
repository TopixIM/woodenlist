
(ns woodenlist.comp.group-view
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]
            [respo.comp.space :refer [comp-space]]))

(defn render [groups] (fn [state mutate!] (div {} (comp-text "All Groups" nil))))

(def comp-group-view (create-comp :group-view render))
