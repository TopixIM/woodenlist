
(ns woodenlist.comp.header
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]
            [respo.comp.space :refer [comp-space]]))

(defn on-profile [e dispatch!]
  (dispatch! :router/change {:router nil, :name :profile, :params nil}))

(def style-header
  {:color :white,
   :font-size 16,
   :background-color (hsl 0 0 0 0.6),
   :width "100%",
   :z-index 100,
   :padding "0 16px",
   :justify-content :space-between,
   :position :absolute,
   :height 48})

(defn on-groups [e dispatch!] (dispatch! :router/change {:name :groups, :params nil}))

(defn on-home [e dispatch!]
  (dispatch! :router/change {:router nil, :name :portal, :params nil}))

(def style-smaller {:font-size 20})

(def style-logo
  {:font-size 32,
   :font-weight 100,
   :cursor "pointer",
   :margin-right 32,
   :font-family "Josefin Sans"})

(def style-pointer {:cursor "pointer"})

(defn on-people [e dispatch!] (dispatch! :router/change {:name :people, :params nil}))

(defn render [logged-in? statistics]
  (fn [state mutate!]
    (div
     {:style (merge ui/row-center style-header)}
     (div
      {:style (merge ui/row {:align-items :center})}
      (div {:style style-logo, :event {:click on-home}} (comp-text "Woodenlist" nil))
      (div
       {:style (merge style-logo style-smaller), :event {:click on-groups}}
       (comp-text "Groups" nil))
      (div
       {:style (merge style-logo style-smaller), :event {:click on-people}}
       (comp-text
        (str "People(" (:sessions-count statistics) "/" (:users-count statistics) ")")
        nil)))
     (div
      {:style style-pointer, :event {:click on-profile}}
      (comp-text (if logged-in? "Me" "Guest") nil)))))

(def comp-header (create-comp :header render))
