
(ns app.util (:require ["dayjs" :as dayjs]))

(defn delay! [duration f] (js/setTimeout f duration))

(defn find-first [f xs] (reduce (fn [_ x] (when (f x) (reduced x))) nil xs))
