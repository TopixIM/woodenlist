
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo.core :refer [defcomp <> div span >> button]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.sidebar :refer [comp-sidebar]]
            [app.comp.profile :refer [comp-profile]]
            [app.comp.login :refer [comp-login]]
            [respo-message.comp.messages :refer [comp-messages]]
            [cumulo-reel.comp.reel :refer [comp-reel]]
            [app.comp.home :refer [comp-home]]
            [app.comp.pending :refer [comp-pending]]
            [app.comp.done-tasks :refer [comp-done-tasks]]
            [app.config :refer [dev?]]
            [app.config :as config]))

(defcomp
 comp-offline
 ()
 (div
  {:style (merge
           ui/global
           ui/fullscreen
           ui/column-dispersive
           {:background-color (:theme config/site)})}
  (div {:style {:height 0}})
  (div
   {:style {:background-image (str "url(" (:icon config/site) ")"),
            :width 128,
            :height 128,
            :background-size :contain}})
  (div
   {:style {:cursor :pointer, :line-height "32px"},
    :on-click (fn [e d!] (d! :effect/connect nil))}
   (<> "No connection..." {:font-family ui/font-fancy, :font-size 24}))))

(defcomp
 comp-status-color
 (color)
 (div
  {:style {:background-color color,
           :height 16,
           :width 16,
           :position :absolute,
           :border-radius "8px",
           :top 8,
           :right 8,
           :transition-duration "300ms"}}))

(def style-debugger {:bottom 8, :right 8, :max-width "100%", :margin 0})

(defcomp
 comp-container
 (states store)
 (let [state (:data states), session (:session store)]
   (if (nil? store)
     (comp-offline)
     (div
      {:style (merge ui/global ui/fullscreen ui/column)}
      (comp-sidebar (:router store) (:logged-in? store) (:numbers store))
      (div
       {:style (merge ui/flex {:overflow :auto, :height "100%"})}
       (div
        {:style {:margin "0 auto", :max-width 800, :height "100%", :overflow :auto}}
        (if (:logged-in? store)
          (let [router (:router store)]
            (case (:name router)
              :profile (comp-profile (:user store) (:data router))
              :home (comp-home (>> states :home) (:data router))
              :pending (comp-pending (>> states :pending) (:data router))
              :done (comp-done-tasks (>> states :done) (:data router))
              (<> router nil)))
          (comp-login (>> states :login)))))
      (comp-messages
       (get-in store [:session :messages])
       {}
       (fn [info d!] (d! :session/remove-message info)))
      (comp-status-color (:color store))
      (if dev? (comp-inspect "Store" store style-debugger))
      (if dev? (comp-reel (:reel-length store) {:bottom 24}))))))

(def style-body {:padding "8px 16px"})
