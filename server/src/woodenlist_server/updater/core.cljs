
(ns woodenlist-server.updater.core
  (:require [woodenlist-server.updater.session :as session]
            [woodenlist-server.updater.user :as user]
            [woodenlist-server.updater.router :as router]
            [woodenlist-server.updater.task-group :as task-group]
            [woodenlist-server.updater.task :as task]))

(defn updater [db op op-data session-id op-id op-time]
  (case op
    :session/connect (session/connect db op-data session-id op-id op-time)
    :session/disconnect (session/disconnect db op-data session-id op-id op-time)
    :user/log-in (user/log-in db op-data session-id op-id op-time)
    :user/sign-up (user/sign-up db op-data session-id op-id op-time)
    :user/log-out (user/log-out db op-data session-id op-id op-time)
    :session/remove-notification
      (session/remove-notification db op-data session-id op-id op-time)
    :router/change (router/change db op-data session-id op-id op-time)
    :task-group/create (task-group/create db op-data session-id op-id op-time)
    :task-group/rename (task-group/rename db op-data session-id op-id op-time)
    :task-group/delete (task-group/delete db op-data session-id op-id op-time)
    :task-group/add-member (task-group/add-member db op-data session-id op-id op-time)
    :task-group/delete-member (task-group/delete-member db op-data session-id op-id op-time)
    :task-group/change-role (task-group/change-role db op-data session-id op-id op-time)
    :task-group/toggle-hidden (task-group/toggle-hidden db op-data session-id op-id op-time)
    :task/create (task/create db op-data session-id op-id op-time)
    :task/toggle (task/toggle db op-data session-id op-id op-time)
    :task/edit (task/edit db op-data session-id op-id op-time)
    :task/delete (task/delete db op-data session-id op-id op-time)
    db))
