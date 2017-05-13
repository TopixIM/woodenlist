
(ns server.twig.group-brief (:require [recollect.bunch :refer [create-twig]]))

(def twig-group-brief
  (create-twig
   :group-brief
   (fn [task-group]
     (-> task-group (dissoc :tasks) (dissoc :done-tasks) (dissoc :admins) (dissoc :users)))))
