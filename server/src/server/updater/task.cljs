
(ns server.updater.task )

(defn clear-done [db op-data sid op-id op-time] (assoc db :done-tasks {}))

(defn create [db op-data sid op-id op-time]
  (assoc-in
   db
   [:working-tasks op-id]
   {:id op-id, :text op-data, :mode :working, :time op-time}))

(defn move-task [db op-data sid op-id op-time]
  (let [task-id (:id op-data)]
    (-> db
        (assoc-in
         [(:to op-data) task-id]
         (assoc (get-in db [(:from op-data) task-id]) :time op-time))
        (update (:from op-data) (fn [tasks] (dissoc tasks task-id))))))

(defn remove-done [db op-data sid op-id op-time]
  (println "remove one:" op-data)
  (update db :done-tasks (fn [tasks] (dissoc tasks op-data))))

(defn update-text [db op-data sid op-id op-time]
  (update-in
   db
   [(:group op-data) (:id op-data)]
   (fn [task] (assoc task :text (:text op-data) :time op-time))))
