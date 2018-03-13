
(ns server.updater.task )

(defn create [db op-data sid op-id op-time]
  (assoc-in db [:working-tasks op-id] {:id op-id, :text op-data, :mode :working}))
