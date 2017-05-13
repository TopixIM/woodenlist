
(ns client.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [respo.comp.space :refer [comp-space]]
            [client.comp.header :refer [comp-header]]
            [client.comp.profile :refer [comp-profile]]
            [client.comp.login :refer [comp-login]]
            [respo-message.comp.msg-list :refer [comp-msg-list]]
            [client.comp.portal :refer [comp-portal]]
            [client.comp.group :refer [comp-group]]
            [client.comp.group-editor :refer [comp-group-editor]]
            [client.comp.task-editor :refer [comp-task-editor]]
            [client.comp.group-manager :refer [comp-group-manager]]
            [client.comp.person :refer [comp-person]]
            [client.comp.groups-view :refer [comp-groups-view]]
            [client.comp.people :refer [comp-people]]
            [client.comp.no-connection :refer [comp-no-connection]]
            [client.comp.avatar-editor :refer [comp-avatar-editor]]
            [client.comp.message-list :refer [comp-message-list]]))

(def style-container
  {:background-image (str "url(dark-lamp.jpg)"),
   :background-color :black,
   :background-size :cover,
   :color colors/paper,
   :background-position :center})

(def style-debugger {:bottom 0, :left 0, :max-width "100%"})

(def style-body {:overflow :auto, :padding "16px 200px"})

(defn render [store]
  (fn [state mutate!]
    (if (nil? store)
      (div
       {:style (merge ui/global ui/fullscreen ui/column style-container)}
       (comp-no-connection))
      (div
       {:style (merge ui/global ui/fullscreen ui/column style-container)}
       (comp-header (:logged-in? store) (get-in store [:user :avatar]) (:statistics store))
       (div
        {:style (merge ui/fullscreen style-body)}
        (comp-space nil 80)
        (if (:logged-in? store)
          (let [router (:router store)]
            (case (:name router)
              :profile (comp-profile (:user store))
              :portal (comp-portal (:data router))
              :group (comp-group (:data router) (get-in store [:session :show-done?]))
              :group-editor (comp-group-editor (:data router))
              :task-editor (comp-task-editor (:data router))
              :group-manager (comp-group-manager (:data router) (:user store))
              :person (comp-person (:data router))
              :groups (comp-groups-view (:data router))
              :people (comp-people (:data router))
              :edit-avatar (comp-avatar-editor (get-in store [:user :avatar]))
              :messages (comp-message-list (:data router))
              (div {} (comp-text (str "404 page: " (pr-str router)) nil))))
          (comp-login))
        (comp-space nil 120))
       (comment comp-debug (:router store) style-debugger)
       (div
        {:style {:z-index 9990}}
        (comp-msg-list
         (get-in store [:session :notifications])
         :session/remove-notification))))))

(def comp-container (create-comp :container render))
