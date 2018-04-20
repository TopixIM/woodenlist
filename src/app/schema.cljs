
(ns app.schema )

(def configs
  {:storage-key "/data/topix/woodenlist.edn",
   :local-storage-key "woodenlist-storage",
   :port 11000})

(def database {:sessions {}, :users {}})

(def dev? js/goog.DEBUG)

(def notification {:id nil, :kind nil, :text nil})

(def router {:name nil, :title nil, :data {}, :router nil})

(def session
  {:user-id nil, :id nil, :nickname nil, :router {:name :home, :data nil}, :notifications []})

(def task {:id nil, :text "", :text-time ""})

(def user
  {:name nil,
   :id nil,
   :nickname nil,
   :avatar nil,
   :password nil,
   :working-tasks {},
   :pending-tasks {},
   :done-tasks {}})
