
(ns server.schema )

(def message {:id nil, :author-id nil, :text nil, :time nil})

(def configs {:storage-key "/tmp/woodenlist-storage.edn", :port 5021})

(def user
  {:name nil, :id nil, :nickname nil, :avatar nil, :password nil, :involved-groups #{}})

(def database {:sessions {}, :users {}, :task-groups {}, :messages {}})

(def task
  {:id nil, :group-id nil, :text nil, :done? false, :created-time nil, :updated-time nil})

(def router {:name nil, :title nil, :data {}, :router nil})

(def session
  {:user-id nil,
   :id nil,
   :nickname nil,
   :router {:name :portal, :data nil, :router nil},
   :show-done? false,
   :notifications []})

(def notification {:id nil, :kind nil, :text nil})

(def task-group
  {:id nil,
   :name nil,
   :users #{},
   :admins #{},
   :tasks {},
   :order :none,
   :done-tasks {},
   :show-done? false})
