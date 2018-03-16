
(ns build.upload
  (:require [clojure.java.shell :refer [sh]]))

(def configs {:orgization "TopixIM"
              :name "woodenlist"
              :cdn "woodenlist"})

(defn sh! [command]
  (println command)
  (println (sh "bash" "-c" command)))

(defn -main []
  (sh! "cp package.json dist/")
  (sh!
    (str "rsync -avr --progress dist/{main.js,package.json} tiye.me:servers/" (:name configs)))
  (shutdown-agents))
