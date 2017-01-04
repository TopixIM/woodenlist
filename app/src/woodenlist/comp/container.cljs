
(ns woodenlist.comp.container
  (:require [hsl.core :refer [hsl]]
            [respo-ui.style :as ui]
            [respo-ui.style.colors :as colors]
            [respo.alias :refer [create-comp div span]]
            [respo.comp.debug :refer [comp-debug]]
            [respo.comp.text :refer [comp-code comp-text]]
            [woodenlist.comp.header :refer [comp-header]]
            [woodenlist.comp.profile :refer [comp-profile]]
            [woodenlist.comp.login :refer [comp-login]]
            [respo-message.comp.msg-list :refer [comp-msg-list]]
            [woodenlist.comp.portal :refer [comp-portal]]
            [woodenlist.comp.group :refer [comp-group]]
            [woodenlist.comp.group-editor :refer [comp-group-editor]]
            [woodenlist.comp.task-editor :refer [comp-task-editor]]
            [woodenlist.comp.group-manager :refer [comp-group-manager]]))

(def style-body {:padding "8px 16px"})

(def style-debugger {:bottom 0, :max-width "100%", :left 0})

(defn render [store]
  (fn [state mutate!]
    (div
     {:style (merge ui/global ui/fullscreen ui/column)}
     (comp-header (:logged-in? store))
     (div
      {:style style-body}
      (div
       {:style (merge ui/row style-body)}
       (if (:logged-in? store)
         (let [router (:router store)]
           (case (:name router)
             :profile (comp-profile (:user store))
             :portal (comp-portal (:data router))
             :group (comp-group (:data router))
             :group-editor (comp-group-editor (:data router))
             :task-editor (comp-task-editor (:data router))
             :group-manager (comp-group-manager (:data router))
             (div {} (comp-text (str "404 page: " (pr-str router)) nil))))
         (comp-login))))
     (comp-debug (:router store) style-debugger)
     (comp-msg-list (get-in store [:state :notifications]) :state/remove-notification))))

(def comp-container (create-comp :container render))
