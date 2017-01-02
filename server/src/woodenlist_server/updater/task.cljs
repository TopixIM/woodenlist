
(ns woodenlist-server.updater.task (:require [woodenlist-server.schema :as schema]))

(defn create [db op-data state-id op-id op-time]
  (let [group-id (:group-id op-data), text (:text op-data)]
    (assoc-in
     db
     [:task-groups group-id :tasks op-id]
     (merge schema/task {:time op-time, :id op-id, :text text}))))
