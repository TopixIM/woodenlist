
(ns server.schema )

(def configs {:storage-key "/data/cumulo/woodenlist.edn", :port 5021})

(def database
  {:sessions {}, :users {}, :working-tasks {}, :pending-tasks {}, :done-tasks {}})

(def notification {:id nil, :kind nil, :text nil})

(def router {:name nil, :title nil, :data {}, :router nil})

(def session
  {:user-id nil, :id nil, :nickname nil, :router {:name :home, :data nil}, :notifications []})

(def task {:id nil, :text "", :text-time ""})

(def user {:name nil, :id nil, :nickname nil, :avatar nil, :password nil})
