
(ns client.comp.header
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]
            [respo.comp.space :refer [comp-space]]))

(defn on-messages [e dispatch!] (dispatch! :router/change {:name :messages, :params nil}))

(defn on-profile [e dispatch!]
  (dispatch! :router/change {:name :profile, :params nil, :router nil}))

(def style-header
  {:height 48,
   :width "100%",
   :justify-content :space-between,
   :padding "0 16px",
   :font-size 16,
   :color :white,
   :position :absolute,
   :z-index 100,
   :background-color (hsl 0 0 0 0.6)})

(defn on-groups [e dispatch!] (dispatch! :router/change {:name :groups, :params nil}))

(defn on-home [e dispatch!]
  (dispatch! :router/change {:name :portal, :params nil, :router nil}))

(def style-smaller {:font-size 20})

(def style-logo
  {:cursor "pointer",
   :font-family "Josefin Sans",
   :font-size 32,
   :font-weight 100,
   :margin-right 32})

(def style-pointer {:cursor "pointer"})

(def style-avatar
  {:width 32, :height 32, :border-radius "50%", :background-size :cover, :cursor :pointer})

(defn on-people [e dispatch!] (dispatch! :router/change {:name :people, :params nil}))

(defn render [logged-in? avatar statistics]
  (fn [state mutate!]
    (div
     {:style (merge ui/row-center style-header)}
     (div
      {:style (merge ui/row {:align-items :center})}
      (div {:event {:click on-home}, :style style-logo} (comp-text "Woodenlist" nil))
      (div
       {:style (merge style-logo style-smaller), :event {:click on-groups}}
       (comp-text "Groups" nil))
      (div
       {:style (merge style-logo style-smaller), :event {:click on-people}}
       (comp-text
        (str "People(" (:sessions-count statistics) "/" (:users-count statistics) ")")
        nil))
      (div
       {:style (merge style-logo style-smaller), :event {:click on-messages}}
       (comp-text "Messages" nil)))
     (if logged-in?
       (div
        {:style (merge style-avatar {:background-image (str "url(" avatar ")")}),
         :event {:click on-profile}})
       (div {:style style-pointer} (comp-text "Guest" nil))))))

(def comp-header (create-comp :header render))
