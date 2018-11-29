
(ns app.config )

(def dev? (if (exists? js/window) (do ^boolean js/goog.DEBUG) true))

(def site
  {:icon "http://cdn.tiye.me/logo/woodenlist.png",
   :theme "#4DB386",
   :dev-ui "http://localhost:8100/main.css"})
