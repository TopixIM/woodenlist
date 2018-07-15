
(ns app.twig.container
  (:require [recollect.macros :refer [deftwig]]
            [app.twig.user :refer [twig-user]]
            ["randomcolor" :as color]
            ["dayjs" :as dayjs]))

(deftwig
 twig-done-tasks
 (done-tasks year-month)
 (let [year-months (->> done-tasks
                        vals
                        (map :time)
                        (map (fn [x] (.format (dayjs x) "YYYY-MM")))
                        distinct)
       cursor (or year-month (apply max year-months))
       reading-tasks (->> done-tasks
                          (filter
                           (fn [[k task]]
                             (= cursor (.format (dayjs (:time task)) "YYYY-MM"))))
                          (into {}))]
   {:months year-months, :cursor cursor, :tasks reading-tasks}))

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
                    :done (twig-done-tasks (:done-tasks user) (:data router))
                    {})),
         :numbers {:sessions (count (:sessions db)),
                   :working (count (:working-tasks user)),
                   :pending (count (:pending-tasks user)),
                   :done (count (:done-tasks user))},
         :color (color/randomColor)})
      nil))))
