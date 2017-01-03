
(ns woodenlist-server.updater.task (:require [woodenlist-server.schema :as schema]))

(defn edit [db op-data state-id op-id op-time]
  (assoc-in
   db
   [:task-groups (:group-id op-data) :tasks (:task-id op-data) :text]
   (:text op-data)))

(defn toggle [db op-data state-id op-id op-time]
  (update-in db [:task-groups (:group-id op-data) :tasks (:task-id op-data) :done?] not))

(defn create [db op-data state-id op-id op-time]
  (let [group-id (:group-id op-data), text (:text op-data)]
    (assoc-in
     db
     [:task-groups group-id :tasks op-id]
     (merge schema/task {:group-id group-id, :time op-time, :id op-id, :text text}))))
