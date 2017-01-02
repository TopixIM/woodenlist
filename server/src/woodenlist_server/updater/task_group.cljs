
(ns woodenlist-server.updater.task-group (:require [woodenlist-server.schema :as schema]))

(defn create [db op-data state-id op-id op-time]
  (let [user-id (get-in db [:states state-id :user-id])]
    (-> db
        (assoc-in
         [:task-groups op-id]
         (merge schema/task-group {:admins #{user-id}, :name op-data, :id op-id}))
        (update-in
         [:users user-id :involved-groups]
         (fn [involved-groups] (conj involved-groups op-id))))))
