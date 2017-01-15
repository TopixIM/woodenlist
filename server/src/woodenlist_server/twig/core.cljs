
(ns woodenlist-server.twig.core
  (:require [recollect.bunch :refer [create-twig]]
            [woodenlist-server.twig.user :refer [twig-user]]))

(def twig-message
  (create-twig :message (fn [message user] (assoc message :user (twig-user user)))))
