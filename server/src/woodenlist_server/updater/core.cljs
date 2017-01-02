
(ns woodenlist-server.updater.core
  (:require [woodenlist-server.updater.state :as state]
            [woodenlist-server.updater.user :as user]
            [woodenlist-server.updater.router :as router]
            [woodenlist-server.updater.task-group :as task-group]
            [woodenlist-server.updater.task :as task]))

(defn updater [db op op-data state-id op-id op-time]
  (case op
    :state/connect (state/connect db op-data state-id op-id op-time)
    :state/disconnect (state/disconnect db op-data state-id op-id op-time)
    :user/log-in (user/log-in db op-data state-id op-id op-time)
    :user/sign-up (user/sign-up db op-data state-id op-id op-time)
    :user/log-out (user/log-out db op-data state-id op-id op-time)
    :state/remove-notification (state/remove-notification db op-data state-id op-id op-time)
    :router/change (router/change db op-data state-id op-id op-time)
    :task-group/create (task-group/create db op-data state-id op-id op-time)
    :task/create (task/create db op-data state-id op-id op-time)
    db))
