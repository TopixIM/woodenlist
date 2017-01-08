
(ns woodenlist-server.schema )

(def user
  {:involved-groups #{}, :password nil, :name nil, :nickname nil, :id nil, :avatar nil})

(def database {:states {}, :task-groups {}, :users {}})

(def task {:group-id nil, :time nil, :done? false, :id nil, :text nil})

(def state
  {:router {:router nil, :name :portal, :data nil},
   :nickname nil,
   :user-id nil,
   :notifications [],
   :id nil})

(def router {:router nil, :name nil, :title nil, :data {}})

(def notification {:id nil, :kind nil, :text nil})

(def task-group
  {:show-done? false, :admins #{}, :name nil, :tasks {}, :id nil, :order :none, :users #{}})
