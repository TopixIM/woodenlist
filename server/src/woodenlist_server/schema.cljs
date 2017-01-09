
(ns woodenlist-server.schema )

(def configs {:port 5021, :storage-key "/tmp/woodenlist-storage.edn"})

(def user
  {:involved-groups #{}, :password nil, :name nil, :nickname nil, :id nil, :avatar nil})

(def database {:task-groups {}, :sessions {}, :users {}})

(def task
  {:group-id nil, :done? false, :updated-time nil, :id nil, :created-time nil, :text nil})

(def router {:router nil, :name nil, :title nil, :data {}})

(def session
  {:show-done? false,
   :router {:router nil, :name :portal, :data nil},
   :nickname nil,
   :user-id nil,
   :notifications [],
   :id nil})

(def notification {:id nil, :kind nil, :text nil})

(def task-group
  {:show-done? false,
   :admins #{},
   :name nil,
   :tasks {},
   :id nil,
   :done-tasks {},
   :order :none,
   :users #{}})
