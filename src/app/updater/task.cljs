
(ns app.updater.task (:require [medley.core :refer [dissoc-in]]))

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
    (if (some? (get-in db [:users user-id (:from op-data) task-id]))
      (update-in
       db
       [:users user-id]
       (fn [user]
         (-> user
             (assoc-in
              [(:to op-data) task-id]
              (assoc (get-in user [(:from op-data) task-id]) :time op-time))
             (update (:from op-data) (fn [tasks] (dissoc tasks task-id))))))
      (assoc-in db [:sessions sid :messages op-id] {:id op-id, :text "No such task"}))))

(defn remove-done [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (dissoc-in db [:users user-id :done-tasks op-data])))

(defn remove-working [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (dissoc-in db [:users user-id :working-tasks op-data])))

(defn touch-working [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (update-in
     db
     [:users user-id :working-tasks]
     (fn [tasks]
       (if (some? (get tasks op-data)) (assoc-in tasks [op-data :time] op-time) tasks)))))

(defn update-text [db op-data sid op-id op-time]
  (let [user-id (get-in db [:sessions sid :user-id])]
    (update-in
     db
     [:users user-id (:group op-data) (:id op-data)]
     (fn [task] (assoc task :text (:text op-data) :time (:time op-data))))))
