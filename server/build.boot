
(set-env!
  :source-paths #{"src"}
  :dependencies '[[org.clojure/clojure       "1.8.0"       :scope "test"]
                  [org.clojure/clojurescript "1.9.293"     :scope "test"]
                  [andare                    "0.4.0"       :scope "test"]
                  [adzerk/boot-cljs          "1.7.228-1"   :scope "test"]
                  [cirru/boot-stack-server   "0.1.28"      :scope "test"]
                  [adzerk/boot-test          "1.1.1"       :scope "test"]
                  [mvc-works/hsl             "0.1.2"       :scope "test"]
                  [cumulo/recollect          "0.1.5"]])

(require '[adzerk.boot-cljs   :refer [cljs]]
         '[adzerk.boot-test   :refer :all])

(def +version+ "0.1.0")

(task-options!
  pom {:project     'tiye/tiye-server
       :version     +version+
       :description "Woodenlist server"
       :url         "https://github.com/Cumulo/woodenlist"
       :scm         {:url "https://github.com/Cumulo/woodenlist"}
       :license     {"MIT" "http://opensource.org/licenses/mit-license.php"}})

(deftask build-simple []
  (comp
    (cljs :optimizations :simple
          :compiler-options {:target :nodejs
                             :language-in :ecmascript5
                             :parallel-build true
                             :source-map true})
    (target)))

; use build-simple instead due to WebSocket reasons
(deftask build-advanced []
  (comp
    (cljs :optimizations :advanced
          :compiler-options {:target :nodejs
                             :language-in :ecmascript5
                             :parallel-build true})
    (target)))

(deftask rsync []
  (with-pre-wrap fileset
    (sh "rsync" "-r" "target" "repo.tiye.me:servers/woodenlist" "--exclude" "main.out" "--delete")
    fileset))

(deftask watch-test []
  (set-env!
    :source-paths #{"src" "test"})
  (comp
    (watch)
    (test :namespaces '#{woodenlist-server.test})))
