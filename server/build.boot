
(set-env!
  :source-paths #{"src"}
  :dependencies '[[org.clojure/clojure       "1.8.0"       :scope "test"]
                  [org.clojure/clojurescript "1.9.542"     :scope "test"]
                  [andare                    "0.5.0"       :scope "test"]
                  [adzerk/boot-cljs          "1.7.228-1"   :scope "test"]
                  [mvc-works/hsl             "0.1.2"       :scope "test"]
                  [cumulo/recollect          "0.1.5"]])

(require '[adzerk.boot-cljs   :refer [cljs]])

(deftask build-simple []
  (comp
    (cljs :optimizations :simple
          :compiler-options {:target :nodejs
                             :language-in :ecmascript5
                             :parallel-build true
                             :source-map true})
    (target)))
