
(ns app.util (:require ["luxon" :refer [DateTime]]))

(defn find-first [f xs] (reduce (fn [_ x] (when (f x) (reduced x))) nil xs))

(defn format-date [unix-time]
  (let [time (.fromMillis DateTime unix-time)] (.toFormat time "yyyy-MM-dd")))

(defn try-verbosely! [x] (try x (catch js/Error e (.error js/console e))))
