
(ns woodenlist-server.twig.container
  (:require [recollect.bunch :refer [create-twig]]
            [woodenlist-server.twig.user :refer [twig-user]]))

(def twig-container
  (create-twig
   :container
   (fn [db state]
     (let [user-id (:user-id state), router (:router state)]
       (if (some? user-id)
         (let [user (get-in db [:users user-id])]
           {:router (assoc
                     router
                     :data
                     (case (:name router)
                       :portal
                         (let [group-ids (:involved-groups user)]
                           (->> group-ids
                                (map
                                 (fn [group-id]
                                   [group-id
                                    (select-keys
                                     (get-in db [:task-groups group-id])
                                     [:id :name])]))
                                (into {})))
                       :group (get-in db [:task-groups (:params router)])
                       :group-editor (get-in db [:task-groups (:params router)])
                       :task-editor
                         (let [params (:params router)]
                           (get-in
                            db
                            [:task-groups (:group-id params) :tasks (:task-id params)]))
                       nil)),
            :state state,
            :logged-in? true,
            :statistics {},
            :user (twig-user user)})
         {:state state, :logged-in? false})))))
