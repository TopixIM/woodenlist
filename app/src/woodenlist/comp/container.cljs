
(ns woodenlist.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-text]]
            [respo.comp.space :refer [comp-space]]
            [woodenlist.comp.header :refer [comp-header]]
            [woodenlist.comp.profile :refer [comp-profile]]
            [woodenlist.comp.login :refer [comp-login]]
            [respo-message.comp.msg-list :refer [comp-msg-list]]
            [woodenlist.comp.portal :refer [comp-portal]]
            [woodenlist.comp.group :refer [comp-group]]
            [woodenlist.comp.group-editor :refer [comp-group-editor]]
            [woodenlist.comp.task-editor :refer [comp-task-editor]]
            [woodenlist.comp.group-manager :refer [comp-group-manager]]
            [woodenlist.comp.person :refer [comp-person]]
            [woodenlist.comp.groups-view :refer [comp-groups-view]]
            [woodenlist.comp.people :refer [comp-people]]
            [woodenlist.comp.no-connection :refer [comp-no-connection]]
            [woodenlist.comp.avatar-editor :refer [comp-avatar-editor]]
            [woodenlist.comp.message-list :refer [comp-message-list]]))

(def style-container
  {:background-image (str
                      "url(https://wallpapers.wallhaven.cc/wallpapers/full/wallhaven-440209.jpg)"),
   :background-color :black,
   :background-size :cover,
   :color colors/paper})

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
