
(ns app.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.core :as ui]
            [respo-ui.colors :as colors]
            [respo.macros :refer [defcomp <> div span cursor-> button]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.sidebar :refer [comp-sidebar]]
            [app.comp.profile :refer [comp-profile]]
            [app.comp.login :refer [comp-login]]
            [respo-message.comp.msg-list :refer [comp-msg-list]]
            [app.comp.reel :refer [comp-reel]]
            [app.comp.home :refer [comp-home]]
            [app.comp.pending :refer [comp-pending]]
            [app.comp.done-tasks :refer [comp-done-tasks]]))

(defcomp
 comp-offline
 ()
 (div
  {:style (merge ui/global ui/fullscreen ui/center)}
  (span
   {:style {:cursor :pointer}, :on-click (fn [e d! m!] (d! :effect/connect nil))}
   (<>
    "Socket broken! Click to retry!"
    {:font-family ui/font-fancy, :font-weight 100, :font-size 32}))))

(def style-debugger {:bottom 8, :right 8, :max-width "100%", :margin 0})

(defcomp
 comp-container
 (states store)
 (let [state (:data states), session (:session store)]
   (if (nil? store)
     (comp-offline)
     (div
      {:style (merge ui/global ui/fullscreen ui/row)}
      (comp-sidebar (:router store) (:logged-in? store) (:numbers store))
      (if (:logged-in? store)
        (let [router (:router store)]
          (case (:name router)
            :profile (comp-profile (:user store) (:data router))
            :home (cursor-> :home comp-home states (:data router))
            :pending (cursor-> :pending comp-pending states (:data router))
            :done (cursor-> :done comp-done-tasks states (:data router))
            (<> router nil)))
        (comp-login states))
      (comp-inspect "Store" store style-debugger)
      (comp-msg-list (get-in store [:session :notifications]) :session/remove-notification)
      (if js/goog.DEBUG (comp-reel (:reel-length store) {:bottom 24}))))))

(def style-body {:padding "8px 16px"})
