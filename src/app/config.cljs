
(ns app.config )

(def cdn?
  (cond
    (exists? js/window) false
    (exists? js/process) (= "true" js/process.env.cdn)
    :else false))

(def dev?
  (let [debug? (do ^boolean js/goog.DEBUG)]
    (if debug?
      (cond
        (exists? js/window) true
        (exists? js/process) (not= "true" js/process.env.release)
        :else true)
      false)))

(def site
  {:port 11000,
   :title "Woodenlist",
   :icon "http://cdn.tiye.me/logo/woodenlist.png",
   :dev-ui "http://localhost:8100/main.css",
   :release-ui "http://cdn.tiye.me/favored-fonts/main.css",
   :cdn-url "http://cdn.tiye.me/woodenlist/",
   :cdn-folder "tiye.me:cdn/woodenlist",
   :upload-folder "tiye.me:repo/TopixIM/woodenlist/",
   :server-folder "tiye.me:servers/woodenlist",
   :theme "#4DB386",
   :storage-key "woodenlist-storage",
   :storage-file "woodenlist.edn"})
