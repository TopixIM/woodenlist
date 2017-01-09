
(ns woodenlist-server.twig.group (:require [recollect.bunch :refer [create-twig]]))

(def twig-group
  (create-twig
   :group
   (fn [task-group show-done?]
     (-> task-group
         (dissoc :admins)
         (dissoc :users)
         (update :done-tasks (fn [tasks] (if show-done? tasks nil)))))))
