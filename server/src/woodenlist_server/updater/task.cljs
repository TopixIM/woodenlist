
(ns woodenlist-server.updater.task (:require [woodenlist-server.schema :as schema]))

(defn delete [db op-data session-id op-id op-time]
  (update-in
   db
   [:task-groups (:group-id op-data) :tasks]
   (fn [cursor] (dissoc cursor (:task-id op-data)))))

(defn edit [db op-data session-id op-id op-time]
  (update-in
   db
   [:task-groups (:group-id op-data) :tasks (:task-id op-data)]
   (fn [task] (-> task (assoc :text (:text op-data)) (assoc :updated-time op-time)))))

(defn toggle [db op-data session-id op-id op-time]
  (update-in
   db
   [:task-groups (:group-id op-data)]
   (fn [task-group]
     (let [task-id (:task-id op-data)
           task (-> (get-in task-group [(if (:done? op-data) :done-tasks :tasks) task-id])
                    (update :done? not)
                    (assoc :updated-time op-time))]
       (if (:done? op-data)
         (-> task-group
             (assoc-in [:tasks task-id] task)
             (update :done-tasks (fn [tasks] (dissoc tasks task-id))))
         (-> task-group
             (assoc-in [:done-tasks task-id] task)
             (update :tasks (fn [tasks] (dissoc tasks task-id)))))))))

(defn create [db op-data session-id op-id op-time]
  (let [group-id (:group-id op-data), text (:text op-data)]
    (assoc-in
     db
     [:task-groups group-id :tasks op-id]
     (merge
      schema/task
      {:group-id group-id,
       :updated-time op-time,
       :id op-id,
       :created-time op-time,
       :text text}))))
