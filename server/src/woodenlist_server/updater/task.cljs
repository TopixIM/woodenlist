
(ns woodenlist-server.updater.task (:require [woodenlist-server.schema :as schema]))

(defn delete [db op-data state-id op-id op-time]
  (update-in
   db
   [:task-groups (:group-id op-data) :tasks]
   (fn [cursor] (dissoc cursor (:task-id op-data)))))

(defn edit [db op-data state-id op-id op-time]
  (assoc-in
   db
   [:task-groups (:group-id op-data) :tasks (:task-id op-data) :text]
   (:text op-data)))

(defn toggle [db op-data state-id op-id op-time]
  (update-in
   db
   [:task-groups (:group-id op-data)]
   (fn [task-group]
     (let [task-id (:task-id op-data)
           task (update
                 (get-in task-group [(if (:done? op-data) :done-tasks :tasks) task-id])
                 :done?
                 not)]
       (if (:done? op-data)
         (-> task-group
             (assoc-in [:tasks task-id] task)
             (update :done-tasks (fn [tasks] (dissoc tasks task-id))))
         (-> task-group
             (assoc-in [:done-tasks task-id] task)
             (update :tasks (fn [tasks] (dissoc tasks task-id)))))))))

(defn create [db op-data state-id op-id op-time]
  (let [group-id (:group-id op-data), text (:text op-data)]
    (assoc-in
     db
     [:task-groups group-id :tasks op-id]
     (merge schema/task {:group-id group-id, :time op-time, :id op-id, :text text}))))
