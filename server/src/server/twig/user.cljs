
(ns server.twig.user (:require [recollect.bunch :refer [create-twig]]))

(def twig-user
  (create-twig
   :user
   (fn [user]
     (-> user
         (dissoc :password)
         (update
          :avatar
          (fn [avatar]
            (or avatar
                "http://tva4.sinaimg.cn/crop.0.0.512.512.180/61b454d3jw8el60qqair7j20e80e874r.jpg")))))))
