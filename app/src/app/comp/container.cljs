
(ns app.comp.container
  (:require-macros [respo.macros :refer [defcomp cursor-> <> div span]])
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.core :refer [create-comp]]
            [respo.comp.inspect :refer [comp-inspect]]
            [respo.comp.space :refer [=<]]
            [app.comp.header :refer [comp-header]]
            [app.comp.profile :refer [comp-profile]]
            [app.comp.login :refer [comp-login]]
            [respo-message.comp.msg-list :refer [comp-msg-list]]
            [app.comp.portal :refer [comp-portal]]
            [app.comp.group :refer [comp-group]]
            [app.comp.group-editor :refer [comp-group-editor]]
            [app.comp.task-editor :refer [comp-task-editor]]
            [app.comp.group-manager :refer [comp-group-manager]]
            [app.comp.person :refer [comp-person]]
            [app.comp.groups-view :refer [comp-groups-view]]
            [app.comp.people :refer [comp-people]]
            [app.comp.no-connection :refer [comp-no-connection]]
            [app.comp.avatar-editor :refer [comp-avatar-editor]]
            [app.comp.message-list :refer [comp-message-list]]))

(def style-container
  {:background-image (str "url(dark-lamp.jpg)"),
   :background-color :black,
   :background-size :cover,
   :color colors/paper,
   :background-position :center})

(def style-debugger {:bottom 0, :left 0, :max-width "100%"})

(def style-body {:overflow :auto, :padding "16px 200px"})

(defcomp
 comp-container
 (states store)
 (let [state (:data states)]
   (if (nil? store)
     (div
      {:style (merge ui/global ui/fullscreen ui/column style-container)}
      (comp-no-connection))
     (div
      {:style (merge ui/global ui/fullscreen ui/column style-container)}
      (comp-header (:logged-in? store) (get-in store [:user :avatar]) (:statistics store))
      (div
       {:style (merge ui/fullscreen style-body)}
       (=< nil 80)
       (if (:logged-in? store)
         (let [router (:router store)]
           (case (:name router)
             :profile (comp-profile (:user store))
             :portal (comp-portal states (:data router))
             :group (comp-group states (:data router) (get-in store [:session :show-done?]))
             :group-editor (comp-group-editor states (:data router))
             :task-editor (comp-task-editor states (:data router))
             :group-manager (comp-group-manager states (:data router) (:user store))
             :person (comp-person (:data router))
             :groups (comp-groups-view (:data router))
             :people (comp-people (:data router))
             :edit-avatar
               (cursor-> :avatar comp-avatar-editor (get-in store [:user :avatar]))
             :messages (comp-message-list states (:data router))
             (div {} (<> span (str "404 page: " (pr-str router)) nil))))
         (cursor-> :login comp-login states))
       (=< nil 120))
      (comp-inspect "Router" (:router store) style-debugger)
      (div
       {:style {:z-index 9990}}
       (comp-msg-list (get-in store [:session :notifications]) :session/remove-notification))))))
