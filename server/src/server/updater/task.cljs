
(ns server.updater.task (:require [server.schema :as schema]))

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

(defn touch [db op-data session-id op-id op-time]
  (assoc-in
   db
   [:task-groups (:group-id op-data) :tasks (:task-id op-data) :updated-time]
   op-time))

(defn create [db op-data session-id op-id op-time]
  (let [group-id (:group-id op-data), text (:text op-data)]
    (assoc-in
     db
     [:task-groups group-id :tasks op-id]
     (merge
      schema/task
      {:id op-id,
       :group-id group-id,
       :text text,
       :created-time op-time,
       :updated-time op-time}))))

(defn edit [db op-data session-id op-id op-time]
  (update-in
   db
   [:task-groups (:group-id op-data) :tasks (:task-id op-data)]
   (fn [task] (-> task (assoc :text (:text op-data)) (assoc :updated-time op-time)))))

(defn delete [db op-data session-id op-id op-time]
  (update-in
   db
   [:task-groups (:group-id op-data) :tasks]
   (fn [cursor] (dissoc cursor (:task-id op-data)))))
