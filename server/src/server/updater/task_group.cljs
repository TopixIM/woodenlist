
(ns server.updater.task-group (:require [server.schema :as schema]))

(defn rename [db op-data session-id op-id op-time]
  (assoc-in db [:task-groups (:id op-data) :name] (:text op-data)))

(defn delete [db op-data session-id op-id op-time]
  (-> db
      (update :task-groups (fn [cursor] (dissoc cursor op-data)))
      (update
       :users
       (fn [users]
         (->> users
              (map
               (fn [entry]
                 (let [[user-id user] entry]
                   [user-id
                    (update
                     user
                     :involved-groups
                     (fn [groups] (into #{} (disj groups op-data))))])))
              (into {}))))))

(defn create [db op-data session-id op-id op-time]
  (let [user-id (get-in db [:sessions session-id :user-id])]
    (-> db
        (assoc-in
         [:task-groups op-id]
         (merge schema/task-group {:id op-id, :name op-data, :admins #{user-id}}))
        (update-in
         [:users user-id :involved-groups]
         (fn [involved-groups] (into #{} (conj involved-groups op-id)))))))

(defn add-member [db op-data session-id op-id op-time]
  (-> db
      (update-in
       [:task-groups (:group-id op-data) :users]
       (fn [users] (conj users (:user-id op-data))))
      (update-in
       [:users (:user-id op-data) :involved-groups]
       (fn [groups] (conj groups (:group-id op-data))))))

(defn change-role [db op-data session-id op-id op-time]
  (update-in
   db
   [:task-groups (:group-id op-data)]
   (fn [task-group]
     (if (:admin? op-data)
       (-> task-group
           (update :admins (fn [admins] (disj admins (:user-id op-data))))
           (update :users (fn [users] (conj users (:user-id op-data)))))
       (-> task-group
           (update :admins (fn [admins] (conj admins (:user-id op-data))))
           (update :users (fn [users] (disj users (:user-id op-data)))))))))

(defn delete-member [db op-data session-id op-id op-time]
  (-> db
      (update-in
       [:task-groups (:group-id op-data) :users]
       (fn [users] (disj users (:user-id op-data))))
      (update-in
       [:task-groups (:group-id op-data) :admins]
       (fn [users] (disj users (:user-id op-data))))
      (update-in
       [:users (:user-id op-data) :involved-groups]
       (fn [groups] (disj groups (:group-id op-data))))))
