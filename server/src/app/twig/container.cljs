
(ns app.twig.container
  (:require [recollect.macros :refer [deftwig]] [app.twig.user :refer [twig-user]]))

(deftwig
 twig-container
 (db session records)
 (let [logged-in? (some? (:user-id session))
       router (:router session)
       base-data {:logged-in? logged-in?, :session session, :reel-length (count records)}]
   (merge
    base-data
    (if logged-in?
      (let [user (get-in db [:users (:user-id session)])]
        {:user (twig-user user),
         :router (assoc
                  router
                  :data
                  (case (:name router)
                    :home (:working-tasks user)
                    :pending (:pending-tasks user)
                    :done (:done-tasks user)
                    {})),
         :numbers {:sessions (count (:sessions db)),
                   :working (count (:working-tasks user)),
                   :pending (count (:pending-tasks user)),
                   :done (count (:done-tasks user))}})
      nil))))
