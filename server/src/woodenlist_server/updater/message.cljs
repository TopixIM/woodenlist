
(ns woodenlist-server.updater.message (:require [woodenlist-server.schema :as schema]))

(defn gc-messages-map [messages interval]
  (let [now (.now js/Date)]
    (->> messages
         (filter
          (fn [entry]
            (let [message (val entry)] (< (- now (:time message)) (* 1000 60 interval)))))
         (into {}))))

(defn create [db op-data session-id op-id op-time]
  (let [user-id (get-in db [:sessions session-id :user-id])]
    (-> db
        (assoc-in
         [:messages op-id]
         (merge
          schema/message
          {:time op-time, :id op-id, :author-id user-id, :text op-data}))
        (update
         :messages
         (fn [messages] (if (> (count messages) 10) (gc-messages-map messages 1) messages))))))
