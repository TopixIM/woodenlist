
(ns app.schema )

(def database {:sessions {}, :users {}})

(def notification {:id nil, :kind nil, :text nil})

(def router {:name nil, :title nil, :data {}, :router nil})

(def session
  {:user-id nil, :id nil, :nickname nil, :router {:name :home, :data nil}, :messages {}})

(def task {:id nil, :text "", :mode nil, :time 0})

(def user
  {:name nil,
   :id nil,
   :nickname nil,
   :avatar nil,
   :password nil,
   :working-tasks {},
   :pending-tasks {},
   :done-tasks {}})
