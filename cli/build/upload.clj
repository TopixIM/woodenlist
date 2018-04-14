
(ns build.upload
  (:require [clojure.java.shell :refer [sh]]))

(def configs {:orgization "TopixIM"
              :name "woodenlist"
              :cdn "woodenlist"})

(defn sh! [command]
  (println command)
  (println (sh "bash" "-c" command)))

(defn -main []
  (sh! (str "rsync -avr --progress dist/* tiye.me:cdn/" (:cdn configs)))
  (sh!
    (str "rsync -avr --progress dist/{index.html,manifest.json} tiye.me:repo/"
      (:orgization configs) "/"
      (:name configs) "/"))

  (sh! "cp package.json dist/")
  (sh!
    (str "rsync -avr --progress dist/{server.js,package.json} tiye.me:servers/" (:name configs)))
  (shutdown-agents))
