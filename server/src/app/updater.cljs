
(ns app.updater
  (:require [app.updater.session :as session]
            [app.updater.user :as user]
            [app.updater.router :as router]
            [app.updater.task :as task]))

(defn updater [db op op-data sid op-id op-time]
  (let [f (case op
            :session/connect session/connect
            :session/disconnect session/disconnect
            :user/log-in user/log-in
            :user/sign-up user/sign-up
            :user/log-out user/log-out
            :session/remove-notification session/remove-notification
            :router/change router/change
            :task/create task/create
            :task/move-task task/move-task
            :task/update-text task/update-text
            :task/remove-done task/remove-done
            :task/clear-done task/clear-done
            :task/remove-working task/remove-working
            :task/touch-working task/touch-working
            (do (println "Unknown op:" op) identity))]
    (f db op-data sid op-id op-time)))
