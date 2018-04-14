
(ns app.twig.user (:require [recollect.macros :refer [deftwig]]))

(deftwig
 twig-user
 (user)
 (-> user
     (dissoc :password)
     (dissoc :done-tasks)
     (dissoc :working-tasks)
     (dissoc :pending-tasks)))
