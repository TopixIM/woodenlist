
(ns server.updater.task )

(defn clear-done [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (assoc-in db [:users user-id :done-tasks] {})))

(defn create [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (assoc-in
     db
     [:users user-id :working-tasks op-id]
     {:id op-id, :text op-data, :mode :working, :time op-time})))

(defn move-task [db op-data sid op-id op-time]
  (let [task-id (:id op-data), user-id (get-in db [:sessions sid :user-id])]
    (update-in
     db
     [:users user-id]
     (fn [user]
       (-> user
           (assoc-in
            [(:to op-data) task-id]
            (assoc (get-in user [(:from op-data) task-id]) :time op-time))
           (update (:from op-data) (fn [tasks] (dissoc tasks task-id))))))))

(defn remove-done [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (update-in db [:users user-id :done-tasks] (fn [tasks] (dissoc tasks op-data)))))

(defn remove-working [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (update-in db [:users user-id :working-tasks] (fn [tasks] (dissoc tasks op-data)))))

(defn touch-working [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (assoc-in db [:users user-id :working-tasks op-data :time] op-time)))

(defn update-text [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (update-in
     db
     [:users user-id (:group op-data) (:id op-data)]
     (fn [task] (assoc task :text (:text op-data) :time (:time op-data))))))
