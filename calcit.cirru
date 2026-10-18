
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |respo-feather.calcit/ |alerts.calcit/ |respo-markdown.calcit/
      :type-slots $ {}
    :server $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!) (:target :native)
      :feature-policy $ {}
      :modules $ [] |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit-wss/ |calcit.std/
      :type-slots $ {}
  :files $ {}
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *states
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store (:: :initial)
          :examples $ []
          :schema $ :: 'Ref 'Dynamic
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect! ()
            let
                location $ js-ffi.browser/location-host
                query $ js-ffi.shared/search-params-create $ .-search location
                host $ .unwrap-or (js-ffi.shared/search-params-get query |host) (.-hostname location)
                port $ .unwrap-or (js-ffi.shared/search-params-get query |port)
                  str $ :port config/site
              ws-connect!
                if config/dev? (str |ws:// host |: port) |wss://wood.topix.im/ws
                {}
                  :on-open $ fn (event) (simulate-login!)
                  :on-close $ fn (event)
                    reset! *store $ :: :offline
                    js/console.error "|Lost connection!"
                    , &unit
                  :on-data on-server-data
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            if (enum? op)
              do
                when
                  and config/dev? $ not=
                      first op
                      , .unwrap-or :unknown
                    , :states
                  js/console.log |Dispatch op
                match op
                  (:states cursor s)
                    reset! *states $ update-states @*states
                      decode-map-as cursor $ :: 'List 'Dynamic
                      , s
                  (:effect/connect) (connect!)
                  _ $ ws-send! op
              raise "|Expected a client action enum"
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            connect!
            add-watch! *store :changes $ fn (store prev) (render-app!)
            add-watch! *states :changes $ fn (states prev) (render-app!)
            on-page-touch $ fn ()
              when
                = @*store $ :: :offline
                connect!
              , &unit
            println "|App started!"
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target () (js/document.querySelector |.app)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-server-data (data)
            if (enum? data)
              match data
                (:patch changes)
                  do
                    when config/dev? $ js/console.log |Changes changes
                    reset! *store $ patch-twig @*store $ recollect.schema/decode-changes changes
                (:effect/pong) &unit
              raise |Expected-a-server-message-enum
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if
              or (non-nil? client-errors) (non-nil? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch! *store :changes) (remove-watch! *states :changes) (clear-cache!) (render-app!)
                add-watch! *store :changes $ fn (store prev) (render-app!)
                add-watch! *states :changes $ fn (states prev) (render-app!)
                println "|Code updated."
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (mount-target)
              comp-container (app.schema/read-field @*states :states) @*store
              , dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn simulate-login! ()
            match
              js-ffi.browser/storage-get $ :storage-key config/site
              (:some raw)
                do (println "|Found storage.")
                  dispatch! $ :: :user/log-in $ parse-cirru-edn raw
              (:none) (println "|Found no storage.")
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.client
          :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo.cursor :refer $ update-states
            app.comp.container :refer $ comp-container
            app.schema :as schema
            app.config :as config
            ws-edn.client :refer $ ws-connect! ws-send!
            recollect.patch :refer $ patch-twig
            cumulo-util.core :refer $ on-page-touch visibility-heartbeat
            |bottom-tip :default hud!
            |./calcit.build-errors.mjs :default client-errors
            |../js-out/calcit.build-errors.mjs :default server-errors
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (states store)
            if (enum? store)
              match store
                (:initial) (comp-offline :initial)
                (:offline) (comp-offline :offline)
                _ $ raise "|Unknown client view state"
              let
                  view $ app.schema/decode-client-view store
                div
                  {} $ :class-name $ str-spaced css/global css/fullscreen css/column
                  comp-sidebar (:router view) (:logged-in? view) (:numbers view)
                  div
                    {} (:class-name css/flex)
                      :style $ {} (:overflow :auto) (:height |100%)
                    div
                      {} $ :style $ {} (:margin "|0 auto") (:max-width 800) (:height |100%) (:overflow :auto)
                      if (:logged-in? view)
                        match (:router view)
                          (:some router)
                            match (:name router)
                              :profile $ comp-profile (:user-name view)
                                decode-map-as (:data router) (:: 'Map 'Number 'String)
                              :home $ comp-home (>> states :home) (:data router)
                              :pending $ comp-pending (>> states :pending) (:data router)
                              :done $ comp-done-tasks (>> states :done) (:data router)
                              _ $ <>
                                str $ :raw router
                                , nil
                          (:none)
                            <> (str nil) nil
                        comp-login $ >> states :login
                  comp-messages (:messages view) ({})
                    fn (info d!)
                      hint-fn $ {}
                        :args $ [] 'Dynamic $ :: 'Fn
                          {}
                            :args $ [] 'Enum
                            :return 'Unit
                        :return 'Unit
                      d! $ :: :session/remove-message info
                      , &unit
                  comp-status-color $ :color view
                  if dev? $ comp-inspect |Store store style-debugger
                  if dev? $ comp-reel (:reel-length view)
                    {} $ :bottom 24
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-offline (state)
            div
              {}
                :class-name $ str-spaced css/global css/fullscreen css/column-dispersive
                :style $ {} $ :background-color (:theme config/site)
              div $ {} $ :style
                {} $ :height 0
              div $ {} $ :style
                {}
                  :background-image $ str "|url(" (:icon config/site) "|)"
                  :width 128
                  :height 128
                  :background-size :contain
              div
                {}
                  :style $ {} (:cursor :pointer) (:line-height |32px)
                  :on-click $ fn (e d!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Enum
                          :return 'Unit
                      :return 'Unit
                    d! $ :: :effect/connect
                    , &unit
                <>
                  if (= state :offline) "|Socket broken, click to retry" |Loading...
                  {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Tag
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-status-color (color)
            div $ {} (:class-name css-status-color)
              :style $ match color
                (:some value)
                  {} $ :background-color value
                (:none) ({})
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Option 'String
        'css-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-status-color
            {} $ |$0 $ {} (:height 16) (:width 16) (:position :absolute) (:border-radius |8px) (:top 8) (:right 8) (:transition-duration |300ms)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-body
            {} $ :padding "|8px 16px"
          :examples $ []
          :schema $ :: 'Dynamic
        'style-debugger $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-debugger
            {} (:bottom 8) (:right 8) (:max-width |100%) (:margin 0)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            hsl.core :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp <> div span >> button
            respo.css :refer $ defstyle
            respo.comp.inspect :refer $ comp-inspect
            respo.comp.space :refer $ =<
            app.comp.sidebar :refer $ comp-sidebar
            app.comp.profile :refer $ comp-profile
            app.comp.login :refer $ comp-login
            respo-message.comp.messages :refer $ comp-messages
            cumulo-reel.comp.reel :refer $ comp-reel
            app.comp.home :refer $ comp-home
            app.comp.pending :refer $ comp-pending
            app.comp.done-tasks :refer $ comp-done-tasks
            app.config :refer $ dev?
            app.config :as config
    'app.comp.done-tasks $ %{} 'FileEntry
      :defs $ {}
        'DayjsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DayjsHost
            .format $ :: 'Fn $ {}
              :args $ [] 'app.comp.done-tasks/DayjsHost 'String
              :return 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'comp-done-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-done-task (states task editing?)
            let
                remove-plugin $ use-confirm (>> states :remove)
                  {}
                    :style $ {} (:cursor :pointer) (:margin-right 16)
                    :text "|Remove record forever?"
              div
                {} (:class-name css/row)
                  :style $ {} (:margin "|8px 0") (:align-items :center)
                span $ {} (:class-name css-done-content)
                  :inner-text $ :text task
                when editing? $ comp-icon :trash
                  &{} :font-size 14 :color (hsl 0 0 50) :cursor :pointer
                  fn (e d!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Enum
                          :return 'Unit
                      :return 'Unit
                      :features $ #{} :js-ffi
                    .show remove-plugin d! $ fn ()
                      hint-fn $ {}
                        :args $ []
                        :return 'Unit
                      d! $ :: :task/remove-done $ :id task
                      , &unit
                    , &unit
                when editing? $ div
                  {}
                    :style $ {} $ :cursor :pointer
                    :on-click $ fn (e d!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Enum
                            :return 'Unit
                        :return 'Unit
                        :features $ #{} :js-ffi
                      d! $ :: :task/move-task $ {}
                        :id $ :id task
                        :from :done-tasks
                        :to :working-tasks
                      , &unit
                  comp-i :repeat 14 $ hsl 0 0 50
                .render remove-plugin
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'app.schema/Task 'Bool
        'comp-done-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-done-tasks (states router-data)
            let
                cursor $ decode-map-as (app.schema/read-field states :cursor) (:: 'List 'Dynamic)
                state $ app.schema/read-done-tasks-state $ app.schema/read-field states :data
                view $ app.schema/decode-done-tasks-view router-data
                day-cursor $ :cursor view
                months $ :months view
                tasks $ :tasks view
              div
                {}
                  :class-name $ str-spaced css/flex css/row
                  :style $ {} (:padding "|16px 8px") (:overflow :auto) (:height |100%)
                list->
                  {} (:class-name css/font-fancy)
                    :style $ {} (:overflow :auto) (:width 80) (:flex-shrink 0)
                  -> months
                    sort $ fn (x y) (&compare y x)
                    map $ fn (year-month)
                      [] year-month $ div
                        {}
                          :style $ if (= day-cursor year-month)
                            {} (:cursor :pointer) (:padding "|0 8px")
                              :background-color $ hsl 0 0 94
                            {} (:cursor :pointer) (:padding "|0 8px")
                          :class-name |item
                          :on-click $ fn (e d!)
                            hint-fn $ {}
                              :args $ [] (:: 'Map 'Tag 'Dynamic)
                                :: 'Fn $ {}
                                  :args $ [] 'Enum
                                  :return 'Unit
                              :return 'Unit
                              :features $ #{} :js-ffi
                            d! $ :: :router/change $ {} (:name :done) (:data year-month)
                            , &unit
                        <> year-month
                =< 8 nil
                div
                  {}
                    :class-name $ str-spaced css/flex css/column
                    :style $ {} (:overflow :auto) (:height |100%) (:padding-bottom 120)
                  div ({})
                    <>
                      str "|Done Tasks(" (count tasks) "|)"
                      {} (:font-size 24) (:font-family ui/font-fancy) (:font-weight 100)
                    =< 16 nil
                    if (:editing? state)
                      a $ {} (:class-name css/link) (:inner-text |Done)
                        :on-click $ fn (e d!)
                          hint-fn $ {}
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {}
                                :args $ [] 'Enum
                                :return 'Unit
                            :return 'Unit
                            :features $ #{} :js-ffi
                          d! $ :: :states cursor $ &struct:to-map
                            assoc state :editing? $ not $ :editing? state
                          , &unit
                      a $ {} (:class-name css/link) (:inner-text |Edit)
                        :on-click $ fn (e d!)
                          hint-fn $ {}
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {}
                                :args $ [] 'Enum
                                :return 'Unit
                            :return 'Unit
                            :features $ #{} :js-ffi
                          d! $ :: :states cursor $ &struct:to-map
                            assoc state :editing? $ not $ :editing? state
                          , &unit
                  let
                      tasks-by-time $ group-by
                        map-list-kv tasks $ fn (id task) task
                        fn (task)
                          format-day $ :time task
                    list-> ({})
                      ->
                        map-list-kv tasks-by-time $ fn (date items) date
                        sort $ fn (a b) (&compare b a)
                        map $ fn (date)
                          let
                              tasks $ .unwrap $ get tasks-by-time date
                            [] date $ div ({})
                              div
                                {} (:class-name css/font-fancy)
                                  :style $ {} (:font-size 16) (:font-weight 100) (:margin-top 16) (:line-height |24px)
                                <> date
                              list-> ({})
                                -> tasks
                                  .sort-by $ fn (task)
                                    negate $ :time task
                                  map $ fn (task)
                                    [] (:id task)
                                      comp-done-task
                                        >> states $ :id task
                                        , task $ :editing? state
                ; if
                  pos? $ count router-data
                  div ({})
                    button
                      {} (:class-name css/button)
                        :on-click $ fn (e d!) (d! :task/clear-done nil)
                      <> |Clear
                =< nil 240
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'css-done-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-done-content
            {} $ |$0 $ {}
              :background-color $ hsl 0 0 94
              :padding "|0 8px"
              :height 32
              :line-height |32px
              :margin-right 16
              :display :inline-block
              :overflow :auto
              :white-space :nowrap
          :examples $ []
          :schema $ :: 'Dynamic
        'format-day $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-day (time)
            let
                value $ unsafe-coerce (dayjs time) 'app.comp.done-tasks/DayjsHost
              .format value |DD
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Number
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.done-tasks
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp <> div span button list-> >> input a pre
            respo.css :refer $ defstyle
            respo.comp.inspect :refer $ comp-inspect
            respo.comp.space :refer $ =<
            respo.util.list :refer $ map-val
            feather.core :refer $ comp-i comp-icon
            respo-alerts.core :refer $ use-confirm
            |dayjs :default dayjs
    'app.comp.home $ %{} 'FileEntry
      :defs $ {}
        'RegExpHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait RegExpHost
            :test $ :: 'Fn $ {}
              :args $ [] 'String
              :return 'Bool
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'RegExpMatchHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait RegExpMatchHost (:0 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'StringMatchHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait StringMatchHost
            :match $ :: 'Fn $ {}
              :args $ [] 'app.comp.home/RegExpHost
              :return 'app.comp.home/RegExpMatchHost
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'comp-home $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-home (states raw-tasks)
            let
                task-positions $ app.schema/working-task-positions raw-tasks
                create-plugin $ use-prompt (>> states :create)
                  {} (:text "|New task:") (:initial |)
              div
                {} (:class-name css/flex)
                  :style $ {} (:padding 16) (:overflow :auto)
                div ({})
                  <>
                    str "|Working(" (count task-positions) "|)"
                    {} (:font-size 24) (:font-family ui/font-fancy) (:font-weight 100)
                  =< 16 nil
                  comp-icon :plus
                    &{} :font-size 14 :color (hsl 0 0 50) :cursor :ponter
                    fn (e d!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Enum
                            :return 'Unit
                        :return 'Unit
                        :features $ #{} :js-ffi
                      .show create-plugin d! $ fn (result)
                        hint-fn $ {}
                          :args $ [] 'String
                          :return 'Unit
                        when
                          not $ .blank? result
                          d! $ :: :task/create result
                        , &unit
                      , &unit
                if (empty? task-positions)
                  div
                    {} $ :class-name css/row-parted
                    button $ {} (:class-name css/button) (:inner-text |Add)
                      :on-click $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Enum
                              :return 'Unit
                          :return 'Unit
                          :features $ #{} :js-ffi
                        .show create-plugin d! $ fn (result)
                          hint-fn $ {}
                            :args $ [] 'String
                            :return 'Unit
                          when
                            not $ .blank? result
                            d! $ :: :task/create result
                          , &unit
                        , &unit
                list->
                  {} $ :style $ {} (:position :relative)
                    :height $ + 8 $ * 48 (count task-positions)
                  map task-positions $ fn (position)
                    let
                        task $ :task position
                      [] (:id task)
                        comp-task
                          >> states $ :id task
                          , task $ :index position
                .render create-plugin
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-task (states task idx)
            let
                cursor $ decode-map-as (app.schema/read-field states :cursor) (:: 'List 'Dynamic)
                state $ app.schema/read-task-card-state (app.schema/read-field states :data) (:text task)
                remove-plugin $ use-confirm (>> states :remove)
                  {} $ :text "|Sure to remove?"
                update-plugin $ use-prompt (>> states :update)
                  {} (:text "|Edit task:")
                    :initial $ :text task
                    :button-text |Edit
              div
                {}
                  :class-name $ str-spaced css/row css-item
                  :style $ let
                      top $ + 8 $ * idx 48
                    if
                      or (:show-menu? state) (:show-editor? state)
                      {} (:top top)
                        :outline $ str "|2px solid " $ hsl 240 80 86
                      {} $ :top top
                  :on-click $ fn (e d!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Enum
                          :return 'Unit
                      :return 'Unit
                      :features $ #{} :js-ffi
                    d! $ :: :states cursor $ &struct:to-map (assoc state :show-menu? true)
                    , &unit
                  :draggable true
                  :on $ {} $ :dragend
                    fn (e d!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Enum
                            :return 'Unit
                        :return 'Unit
                        :features $ #{} :js-ffi
                      d! $ :: :task/touch-working $ :id task
                      , &unit
                <> (:text task)
                  merge ui/expand $ {} (:text-overflow :ellipsis) (:overflow :hidden) (:max-width |100%)
                =< 32 nil
                comp-modal-menu
                  {} (:title |Operations)
                    :style $ {} $ :line-height |24px
                    :items $ &list:concat
                      if
                        .!test http-pattern $ :text task
                        [] $ {} (:value :open) (:display "|Open Link")
                        []
                      []
                        {} (:value :finish) (:display |Finish)
                        {} (:value :edit) (:display |Edit)
                        {} (:value :postpone) (:display |Postpone)
                        {} (:value :touch) (:display |Up)
                        {} (:value :remove) (:display |Remove)
                  :show-menu? state
                  fn (d!)
                    hint-fn $ {}
                      :args $ [] $ :: 'Fn
                        {}
                          :args $ [] 'Enum
                          :return 'Unit
                      :return 'Unit
                    d! $ :: :states cursor $ &struct:to-map (assoc state :show-menu? false)
                    , &unit
                  fn (item d!)
                    hint-fn $ {}
                      :args $ [] 'Dynamic $ :: 'Fn
                        {}
                          :args $ [] 'Enum
                          :return 'Unit
                      :return 'Unit
                      :features $ #{} :js-ffi
                    let
                        new-state $ assoc state :show-menu? false
                      match
                        if (enum? item)
                          option:unwrap-or (nth item 1) nil
                          , nil
                        :finish $ do
                          d! $ :: :task/move-task $ {}
                            :id $ :id task
                            :from :working-tasks
                            :to :done-tasks
                          d! $ :: :states cursor $ &struct:to-map new-state
                        :postpone $ do
                          d! $ :: :task/move-task $ {}
                            :id $ :id task
                            :from :working-tasks
                            :to :pending-tasks
                          d! $ :: :states cursor $ &struct:to-map new-state
                        :edit $ do
                          d! $ :: :states cursor $ &struct:to-map new-state
                          .show update-plugin d! $ fn (text)
                            hint-fn $ {}
                              :args $ [] 'String
                              :return 'Unit
                            d! $ :: :task/update-text $ {}
                              :id $ :id task
                              :text text
                              :group :working-tasks
                              :time $ unix-time-ms
                            , &unit
                        :remove $ do
                          d! $ :: :states cursor $ &struct:to-map new-state
                          .show remove-plugin d! $ fn ()
                            hint-fn $ {}
                              :args $ []
                              :return 'Unit
                            d! $ :: :task/remove-working $ :id task
                            , &unit
                        :touch $ do
                          d! $ :: :task/touch-working $ :id task
                          d! $ :: :states cursor $ &struct:to-map new-state
                        :open $ do
                          js/window.open $ first-match (:text task) url-pattern
                          d! $ :: :states cursor $ &struct:to-map new-state
                        nil $ d! $ :: :states cursor (&struct:to-map new-state)
                        _ nil
                    , &unit
                .render remove-plugin
                .render update-plugin
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'app.schema/Task 'Number
            :features $ #{} :js-ffi
        'css-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-item
            {} $ |$0 $ {} (:line-height |32px) (:margin "|8px 0px") (:position :absolute) (:width |100%) (:transition-duration |300ms) (:white-space :nowrap) (:line-height |32px) (:height |32px) (:max-width 480)
              :background-color $ hsl 0 0 94
              :padding "|0 8px"
          :examples $ []
          :schema $ :: 'Dynamic
        'first-match $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn first-match (text pattern)
            let
                typed-text $ unsafe-coerce text 'app.comp.home/StringMatchHost
                result $ .!match typed-text pattern
              if (js-present? result)
                .-0 $ unsafe-coerce result 'app.comp.home/RegExpMatchHost
                , |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Dynamic 'app.comp.home/RegExpHost
            :features $ #{} :js-ffi
        'http-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def http-pattern (make-regexp |https?://)
          :examples $ []
          :schema $ :: 'Dynamic
        'make-regexp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn make-regexp (pattern)
            unsafe-coerce (new js/RegExp pattern) 'app.comp.home/RegExpHost
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.comp.home/RegExpHost)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'url-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def url-pattern (make-regexp |https?://\S+)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.home
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp <> div span button input >> list->
            respo.comp.inspect :refer $ comp-inspect
            respo.comp.space :refer $ =<
            respo.css :refer $ defstyle
            feather.core :refer $ comp-icon
            respo-alerts.core :refer $ use-confirm use-prompt comp-modal-menu
            cumulo-util.core :refer $ delay!
    'app.comp.login $ %{} 'FileEntry
      :defs $ {}
        'comp-login $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-login (states)
            let
                cursor $ decode-map-as (app.schema/read-field states :cursor) (:: 'List 'Dynamic)
                state $ app.schema/read-login-state $ app.schema/read-field states :data
              div
                {} $ :class-name $ str-spaced css/flex css/center
                div ({})
                  comp-md-block "|Woodenlist is an online Todolist built by [@jiyinyiyong](https://github.com/jiyinyiyong) based on [Cumulo](http://cumulo.org/) solution.\nFind out more on [GitHub](https://github.com/TopixIM/woodenlist).\n\nCaution! It's an toy app. Don't trust my database!" $ {} $ :css "|.md-p {margin: 20px 0; line-height: 1.6em;}"
                =< nil 40
                div ({})
                  div ({})
                    div ({})
                      input $ {} (:placeholder |Username) (:class-name css/input)
                        :value $ :username state
                        :on-input $ fn (e d!)
                          hint-fn $ {}
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {}
                                :args $ [] 'Enum
                                :return 'Unit
                            :return 'Unit
                          d! $ :: :states cursor $ &struct:to-map
                            assoc state :username $ decode-map-as (app.schema/read-field e :value) 'String
                          , &unit
                    =< nil 8
                    div ({})
                      input $ {} (:placeholder |Password) (:class-name css/input)
                        :value $ :password state
                        :on-input $ fn (e d!)
                          hint-fn $ {}
                            :args $ [] (:: 'Map 'Tag 'Dynamic)
                              :: 'Fn $ {}
                                :args $ [] 'Enum
                                :return 'Unit
                            :return 'Unit
                          d! $ :: :states cursor $ &struct:to-map
                            assoc state :password $ decode-map-as (app.schema/read-field e :value) 'String
                          , &unit
                        :type |password
                  =< nil 8
                  div
                    {} $ :style $ {} (:text-align :right)
                    span $ {} (:inner-text "|Sign up") (:class-name css/link)
                      :on-click $ on-submit (:username state) (:password state) true
                    =< 8 nil
                    span $ {} (:inner-text "|Log in") (:class-name css/link)
                      :on-click $ on-submit (:username state) (:password state) false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-submit (username password signup?)
            fn (e dispatch!)
              hint-fn $ {}
                :args $ [] (:: 'Map 'Tag 'Dynamic)
                  :: 'Fn $ {}
                    :args $ [] 'Enum
                    :return 'Unit
                :return 'Unit
                :features $ #{} :js-ffi
              if signup?
                dispatch! $ :: :user/sign-up $ [] username password
                dispatch! $ :: :user/log-in $ [] username password
              js-ffi.browser/storage-set! (:storage-key config/site)
                format-cirru-edn $ [] username password
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String 'String 'Bool
            :features $ #{} :js-ffi
            :return $ :: 'Fn $ {} (:return 'Unit)
              :args $ [] (:: 'Map 'Tag 'Dynamic)
                :: 'Fn $ {} (:return 'Unit)
                  :args $ [] 'Enum
              :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.login
          :require
            respo.core :refer $ defcomp <> div input button span
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.css :as css
            respo.css :refer $ defstyle
            respo-ui.core :as ui
            app.schema :as schema
            app.config :as config
            app.style :as style
            respo-md.comp.md :refer $ comp-md comp-md-block
    'app.comp.pending $ %{} 'FileEntry
      :defs $ {}
        'comp-pending $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-pending (states raw-tasks)
            let
                tasks $ app.schema/decode-tasks raw-tasks
                task-keys $ ->
                  map-list-kv tasks $ fn (key task) key
                  .sort-by $ fn (key)
                    negate $ :time $ .unwrap (get tasks key)
              div
                {} (:class-name css/flex)
                  :style $ {} (:padding 16) (:overflow :auto)
                div
                  {} (:class-name css/font-fancy)
                    :style $ {} (:font-size 24) (:font-weight 100)
                  <> $ str "|Pending Tasks(" (count tasks) "|)"
                list->
                  {} $ :style $ {} (:width |100%)
                  map task-keys $ fn (key)
                    let
                        task $ .unwrap $ get tasks key
                      [] key $ comp-task
                        >> states $ :id task
                        , task
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'Dynamic
            :features $ #{} :js-ffi
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-task (states task)
            let
                update-plugin $ use-prompt (>> states :update)
                  {} (:text "|Update task:")
                    :initial $ or (:text task) |
              div
                {} (:class-name css/row)
                  :style $ {} (:margin "|8px 0") (:align-items :center) (:max-width 480) (:width |100%)
                div
                  {} (:class-name css/flex)
                    :style $ {} (:padding "|0 8px")
                      :background-color $ hsl 0 0 96
                      :overflow :auto
                  span $ {}
                    :inner-text $ :text task
                    :style $ {} (:display :block) (:height 32) (:line-height |32px) (:overflow :auto) (:white-space :nowrap)
                    :on-click $ fn (e d!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Enum
                            :return 'Unit
                        :return 'Unit
                        :features $ #{} :js-ffi
                      .show update-plugin d! $ fn (result)
                        hint-fn $ {}
                          :args $ [] 'String
                          :return 'Unit
                        d! $ :: :task/update-text $ {}
                          :id $ :id task
                          :text result
                          :group :pending-tasks
                          :time $ unix-time-ms
                        , &unit
                      , &unit
                =< 16 nil
                div
                  {}
                    :style $ {} $ :cursor :pointer
                    :on-click $ fn (e d!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Enum
                            :return 'Unit
                        :return 'Unit
                        :features $ #{} :js-ffi
                      d! $ :: :task/move-task $ {}
                        :id $ :id task
                        :from :pending-tasks
                        :to :working-tasks
                      , &unit
                  comp-i :corner-up-left 14 $ hsl 0 0 50
                ; div
                  {}
                    :style $ {} $ :cursor :pointer
                    :on-click $ action-> :task/move-task $ {}
                      :id $ :id task
                      :from :pending-tasks
                      :to :done-tasks
                  comp-i :check 14 $ hsl 0 0 50
                .render update-plugin
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Dynamic 'app.schema/Task
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.pending
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp <> div span >> button list-> input
            respo.css :refer $ defstyle
            respo.comp.inspect :refer $ comp-inspect
            respo.comp.space :refer $ =<
            respo.util.list :refer $ map-val
            respo-alerts.core :refer $ use-prompt comp-modal-menu
            feather.core :refer $ comp-i
    'app.comp.profile $ %{} 'FileEntry
      :defs $ {}
        'comp-profile $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-profile (display-name members)
            div
              {} (:class-name css/flex)
                :style $ {} $ :padding 16
              div
                {} (:class-name css/font-fancy)
                  :style $ {} (:font-size 32) (:font-weight 100)
                <> $ str "|Hello! " $ match display-name
                  (:some value) value
                  (:none) (str nil)
              =< nil 16
              div
                {} $ :class-name css/row
                <> |Members:
                =< 8 nil
                list->
                  {} $ :class-name css/row
                  map-list-kv members $ fn (id username)
                    [] id $ div
                      {} $ :class-name css-member-label
                      <> username
              =< nil 48
              div ({})
                button
                  {} (:class-name css/button)
                    :on-click $ fn (e dispatch!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Enum
                            :return 'Unit
                        :return 'Unit
                        :features $ #{} :js-ffi
                      js-ffi.browser/location-replace! $ str
                        .-origin $ js-ffi.browser/location-host
                        , |?time= $ unix-time-ms
                  <> |Refresh
                =< 8 nil
                button
                  {} (:class-name css/button)
                    :style $ {} (:color :red) (:border-color :red)
                    :on-click $ fn (e dispatch!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Enum
                            :return 'Unit
                        :return 'Unit
                        :features $ #{} :js-ffi
                      dispatch! $ :: :user/log-out
                      js-ffi.browser/storage-remove! $ :storage-key config/site
                      , &unit
                  <> "|Log out"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Option 'String) (:: 'Map 'Number 'String)
            :features $ #{} :js-ffi
        'css-member-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-member-label
            {} $ |$0 $ {} (:padding "|0 8px")
              :border $ str "|1px solid " $ hsl 0 0 80
              :border-radius |16px
              :margin "|0 4px"
          :examples $ []
          :schema $ :: 'Dynamic
        'style-trigger $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-trigger
            {} (:font-size 14) (:cursor :pointer)
              :background-color $ hsl 200 100 84
              :color :white
              :padding "|0 8px"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.profile
          :require
            respo-ui.core :refer $ hsl
            app.schema :as schema
            app.config :as config
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo-ui.core :as ui
            respo.core :refer $ defcomp list-> <> span button div a
            respo.comp.space :refer $ =<
            app.style :as style
    'app.comp.sidebar $ %{} 'FileEntry
      :defs $ {}
        'comp-sidebar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-sidebar (router logged-in? numbers)
            div
              {} $ :style $ {} (:flex-shrink 0)
                :border-bottom $ str "|1px solid " $ hsl 0 0 90
                :background-color $ :theme config/site
              div
                {}
                  :class-name $ str-spaced css/row-parted css/font-fancy
                  :style $ {} (:font-size 24) (:padding "|8 8px") (:max-width 800) (:margin :auto)
                div
                  {} $ :class-name css/row
                  div
                    {}
                      :class-name $ str-spaced css/row css-entry
                      :on-click $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Enum
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :router/change $ {} (:name :home)
                        , &unit
                      :style $ if (app.schema/view-route-selected? router :home)
                        {} $ :color :white
                    div
                      {} $ :class-name css-icon
                      comp-i :home 14 |white
                    <>
                      match numbers
                        (:some counts)
                          str $ :working counts
                        (:none) (str nil)
                      , style-count
                  div
                    {}
                      :on-click $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Enum
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :router/change $ {} (:name :pending)
                        , &unit
                      :class-name $ str-spaced css/row css-entry
                      :style $ if (app.schema/view-route-selected? router :pending)
                        {} $ :color :white
                    div
                      {} $ :class-name css-icon
                      comp-i :clock 14 |white
                    <>
                      match numbers
                        (:some counts)
                          str $ :pending counts
                        (:none) (str nil)
                      , style-count
                  div
                    {}
                      :on-click $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Enum
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :router/change $ {} (:name :done)
                        , &unit
                      :class-name $ str-spaced css/row css-entry
                      :style $ if (app.schema/view-route-selected? router :done)
                        {} $ :color :white
                    div
                      {} $ :class-name css-icon
                      comp-i :package 14 |white
                    <>
                      match numbers
                        (:some counts)
                          str $ :done counts
                        (:none) (str nil)
                      , style-count
                div
                  {} $ :class-name css/column
                  div
                    {}
                      :class-name $ str-spaced css/row css-entry
                      :style $ if (app.schema/view-route-selected? router :profile)
                        {} $ :color :white
                      :on-click $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Enum
                              :return 'Unit
                          :return 'Unit
                        d! $ :: :router/change $ {} (:name :profile)
                        , &unit
                    div
                      {} $ :class-name css-icon
                      if logged-in? (comp-i :user 14 |white) (comp-i :log-in 14 |white)
                    <>
                      match numbers
                        (:some counts)
                          str $ :sessions counts
                        (:none) (str nil)
                      , style-count
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'Option 'app.schema/ViewRouter) 'Bool $ :: 'Option 'app.schema/ViewNumbers
        'css-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-entry
            {} $ |$0 $ {} (:cursor :pointer)
              :color $ hsl 0 0 80
              :align-items :center
              :height 40
              :margin-right 24
          :examples $ []
          :schema $ :: 'Dynamic
        'css-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-icon
            {} $ |$0 $ merge ui/center
              {} $ :width 24
          :examples $ []
          :schema $ :: 'Dynamic
        'style-count $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-count
            merge ui/center $ {} (:min-width 20) (:font-size 14)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.sidebar
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.css :refer $ defstyle
            respo.core :refer $ defcomp <> span div
            feather.core :refer $ comp-i
            app.config :as config
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'SiteConfig $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct SiteConfig (:port 'Number) (:title 'String) (:icon 'String) (:server-folder 'String) (:theme 'String) (:storage-key 'String) (:storage-file 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            SiteConfig :port 11000 :title |Woodenlist :icon |http://cdn.tiye.me/logo/woodenlist.png :server-folder |tiye.me:servers/woodenlist :theme |#4DB386 :storage-key |woodenlist-storage :storage-file |woodenlist.cirru
          :examples $ []
          :schema $ :: 'app.config/SiteConfig
          :tests $ [] $ %{} 'TestEntry (:name |preserve-seven-original-site-values)
            :code $ quote $ do
              assert= 11000 $ :port site
              assert= |Woodenlist $ :title site
              assert= |http://cdn.tiye.me/logo/woodenlist.png $ :icon site
              assert= |tiye.me:servers/woodenlist $ :server-folder site
              assert= |#4DB386 $ :theme site
              assert= |woodenlist-storage $ :storage-key site
              assert= |woodenlist.cirru $ :storage-file site
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'ClientView $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ClientView (:logged-in? 'Bool) (:reel-length 'Number)
            :user-name $ :: 'Option 'String
            :router $ :: 'Option 'app.schema/ViewRouter
            :numbers $ :: 'Option 'app.schema/ViewNumbers
            :color $ :: 'Option 'String
            :messages $ :: 'Map 'String 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'DoneTasksState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct DoneTasksState (:editing? 'Bool)
          :examples $ []
          :schema $ :: 'StructDef
        'DoneTasksView $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct DoneTasksView (:cursor 'String)
            :months $ :: 'List 'String
            :tasks $ :: 'Map 'String 'app.schema/Task
          :examples $ []
          :schema $ :: 'StructDef
        'LoginState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct LoginState (:username 'String) (:password 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Task (:id 'String) (:text 'String) (:time 'Number)
            :mode $ :: 'Option 'Tag
            :extra $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'TaskCardState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct TaskCardState (:show-menu? 'Bool) (:show-editor? 'Bool) (:task-draft 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'TaskPosition $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct TaskPosition (:index 'Number) (:task 'app.schema/Task)
          :examples $ []
          :schema $ :: 'StructDef
        'ViewNumbers $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ViewNumbers (:working 'Number) (:pending 'Number) (:done 'Number) (:sessions 'Number)
          :examples $ []
          :schema $ :: 'StructDef
        'ViewRouter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ViewRouter (:name 'Tag) (:data 'Dynamic)
            :raw $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def database
            {}
              :sessions $ {}
              :users $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'decode-client-view $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-client-view (raw)
            let
                fields $ decode-map-as raw $ :: 'Map 'Tag 'Dynamic
                session $ decode-map-as
                  .unwrap $ get fields :session
                  :: 'Map 'Tag 'Dynamic
                user-fields $ match (get fields :user)
                  (:some value)
                    if (nil? value) ({})
                      decode-map-as value $ :: 'Map 'Tag 'Dynamic
                  (:none) ({})
                messages $ match (get session :messages)
                  (:some value)
                    decode-map-as value $ :: 'Map 'String 'Dynamic
                  (:none) ({})
              ClientView :logged-in?
                decode-map-as
                  .unwrap $ get fields :logged-in?
                  , 'Bool
                , :reel-length
                  decode-map-as
                    .unwrap $ get fields :reel-length
                    , 'Number
                  , :messages messages :router (decode-optional-field fields :router decode-view-router) :numbers (decode-optional-field fields :numbers decode-view-numbers) :user-name
                    decode-optional-field user-fields :name $ fn (value) (decode-map-as value 'String)
                    , :color $ decode-optional-field fields :color $ fn (value) (decode-map-as value 'String)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/ClientView)
            :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |guest-and-account-wire-fields)
            :code $ quote $ let
                guest $ decode-client-view $ {} (:logged-in? false) (:reel-length 0)
                  :session $ {} (:id 1)
                    :messages $ {}
                account $ decode-client-view $ {} (:logged-in? true) (:reel-length 2)
                  :session $ {} (:id 1)
                    :messages $ {} $ |m1
                      {} (:id |m1) (:text |Message)
                  :user $ {} (:name "|迁移用户🐈") (:extra |retained-in-raw-wire)
                  :router $ {} (:name :home)
                    :data $ {}
                  :numbers $ {} (:working 1) (:pending 2) (:done 3) (:sessions 4)
                  :color |red
              assert= false $ :logged-in? guest
              assert= (Option :none) (:router guest)
              assert= (Option :none) (:numbers guest)
              assert= (Option :none) (:color guest)
              assert= 2 $ :reel-length account
              assert= (Option :some "|迁移用户🐈") (:user-name account)
              assert= 3 $ :done $ .unwrap (:numbers account)
              assert= (Option :some |red) (:color account)
            :tags $ #{} :unit
        'decode-done-tasks-view $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-done-tasks-view (raw)
            let
                fields $ decode-map-as raw $ :: 'Map 'Tag 'Dynamic
              DoneTasksView :cursor
                decode-map-as
                  .unwrap $ get fields :cursor
                  , 'String
                , :months
                  decode-map-as
                    .unwrap $ get fields :months
                    :: 'List 'String
                  , :tasks $ decode-tasks $ .unwrap (get fields :tasks)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/DoneTasksView)
            :args $ [] 'Dynamic
        'decode-optional-field $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-optional-field (fields field decoder)
            match (get fields field)
              (:some value)
                if (nil? value) (Option :none)
                  Option :some $ decoder value
              (:none) (Option :none)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Tag $ :: 'Fn
              {} (:return 'T)
                :args $ [] 'Dynamic
            :generics $ [] 'T
            :return $ :: 'Option 'T
        'decode-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-task (raw)
            let
                fields $ decode-map-as raw $ :: 'Map 'Tag 'Dynamic
              Task :id
                decode-map-as
                  .unwrap $ get fields :id
                  , 'String
                , :text
                  decode-map-as
                    .unwrap $ get fields :text
                    , 'String
                  , :time
                    decode-map-as
                      .unwrap $ get fields :time
                      , 'Number
                    , :mode
                      match (get fields :mode)
                        (:some value)
                          if (nil? value) (Option :none)
                            Option :some $ decode-map-as value 'Tag
                        (:none) (Option :none)
                      , :extra $ -> fields (dissoc :id) (dissoc :text) (dissoc :time) (dissoc :mode)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Task)
            :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |legacy-task-roundtrip-preserves-extension)
            :code $ quote $ let
                raw $ {} (:id |t1) (:text "|迁移任务🐈") (:mode nil) (:time 0) (:custom false)
                task $ decode-task raw
              assert= raw $ task-to-wire task
              assert= "|迁移任务🐈" $ :text task
              assert= (Option :none) (:mode task)
            :tags $ #{} :unit
        'decode-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-tasks (raw)
            filter-map-kv
              decode-map-as raw $ :: 'Map 'String 'Dynamic
              fn (id value)
                MapEntryDecision :keep id $ decode-task value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'String 'app.schema/Task
        'decode-view-numbers $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-view-numbers (raw)
            let
                fields $ decode-map-as raw $ :: 'Map 'Tag 'Dynamic
              ViewNumbers :working
                decode-map-as
                  .unwrap $ get fields :working
                  , 'Number
                , :pending
                  decode-map-as
                    .unwrap $ get fields :pending
                    , 'Number
                  , :done
                    decode-map-as
                      .unwrap $ get fields :done
                      , 'Number
                    , :sessions $ decode-map-as
                      .unwrap $ get fields :sessions
                      , 'Number
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/ViewNumbers)
            :args $ [] 'Dynamic
        'decode-view-router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-view-router (raw)
            let
                fields $ decode-map-as raw $ :: 'Map 'Tag 'Dynamic
              ViewRouter :name
                decode-map-as
                  .unwrap $ get fields :name
                  , 'Tag
                , :data
                  .unwrap-or (get fields :data) nil
                  , :raw fields
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/ViewRouter)
            :args $ [] 'Dynamic
        'notification $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def notification
            {} (:id nil) (:kind nil) (:text nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'read-done-tasks-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-done-tasks-state (raw)
            decode-map-as
              merge
                {} $ :editing? false
                decode-map-as
                  or raw $ {}
                  :: 'Map 'Tag 'Dynamic
              , 'app.schema/DoneTasksState
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/DoneTasksState)
            :args $ [] 'Dynamic
        'read-field $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-field (value field)
            option:unwrap-or (get value field) nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Tag
        'read-login-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-login-state (raw)
            decode-map-as
              merge
                {} (:username |) (:password |)
                decode-map-as
                  or raw $ {}
                  :: 'Map 'Tag 'Dynamic
              , 'app.schema/LoginState
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/LoginState)
            :args $ [] 'Dynamic
        'read-task-card-state $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn read-task-card-state (raw text)
            decode-map-as
              merge
                {} (:show-menu? false) (:show-editor? false) (:task-draft text)
                decode-map-as
                  or raw $ {}
                  :: 'Map 'Tag 'Dynamic
              , 'app.schema/TaskCardState
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/TaskCardState)
            :args $ [] 'Dynamic 'String
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def router
            {} (:name nil) (:title nil)
              :data $ {}
              :router nil
          :examples $ []
          :schema $ :: 'Dynamic
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ {} (:name :home) (:data nil)
              :messages $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'sorted-task-values $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sorted-task-values (raw)
            ->
              map-list-kv (decode-tasks raw)
                fn (id task) task
              .sort-by $ fn (task)
                negate $ :time task
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'List 'app.schema/Task
        'task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def task
            {} (:id nil) (:text |) (:mode nil) (:time 0)
          :examples $ []
          :schema $ :: 'Dynamic
        'task-to-wire $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn task-to-wire (task)
            merge (:extra task)
              {}
                :id $ :id task
                :text $ :text task
                :time $ :time task
                :mode $ match (:mode task)
                  (:some value) value
                  (:none) nil
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Task
            :return $ :: 'Map 'Tag 'Dynamic
        'tasks-to-wire $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn tasks-to-wire (tasks)
            filter-map-kv tasks $ fn (id task)
              MapEntryDecision :keep id $ task-to-wire task
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'Map 'String 'app.schema/Task
            :return $ :: 'Map 'String $ :: 'Map 'Tag 'Dynamic
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def user
            {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
              :working-tasks $ {}
              :pending-tasks $ {}
              :done-tasks $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'view-route-selected? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn view-route-selected? (router name)
            match router
              (:some value)
                = (:name value) name
              (:none) false
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] (:: 'Option 'app.schema/ViewRouter) 'Tag
        'working-task-positions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn working-task-positions (raw)
            -> (sorted-task-values raw)
              .map-indexed $ fn (idx task) (TaskPosition :index idx :task task)
              .sort-by $ fn (position)
                :id $ :task position
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'List 'app.schema/TaskPosition
          :tests $ [] $ %{} 'TestEntry (:name |preserve-time-position-and-key-render-order)
            :code $ quote $ let
                tasks $ {}
                  |a $ {} (:id |a) (:text |A) (:mode nil) (:time 1)
                  |z $ {} (:id |z) (:text |Z) (:mode nil) (:time 3)
                  |m $ {} (:id |m) (:text |M) (:mode nil) (:time 2)
              assert= ([] |z |m |a)
                map (sorted-task-values tasks)
                  fn (task) (:id task)
              assert=
                [] ([] |a 2) ([] |m 1) ([] |z 0)
                map (working-task-positions tasks)
                  fn (position)
                    []
                      :id $ :task position
                      :index position
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *client-caches ({})
          :examples $ []
          :schema $ :: 'Dynamic
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *initial-db
            if
              path-exists? $ w-log storage-file
              do (println "|Found local EDN data")
                merge schema/database $ assert-type
                  parse-cirru-edn $ read-file storage-file
                  :: 'Map 'Tag $ :: 'Map 'Dynamic 'Dynamic
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag (:: 'Map 'Dynamic 'Dynamic)
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reader-reel @*reel
          :examples $ []
          :schema $ :: 'Ref 'cumulo-reel.core/ReelState
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            struct-with reel-schema (:base @*initial-db) (:db @*initial-db)
          :examples $ []
          :schema $ :: 'Ref 'cumulo-reel.core/ReelState
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op sid)
            let
                op-id $ turn-string $ generate-id!
                op-time $ calcit.std.date/get-timestamp $ get-time!
              if config/dev? $ println |Dispatch! (str op) sid
              match op
                (:effect/persist) (persist-db!)
                (:effect/ping)
                  wss-send! sid $ format-cirru-edn $ :: :effect/pong
                _ $ reset! *reel $ reel-reducer @*reel updater op sid op-id op-time config/dev?
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Enum 'Number
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-backup-path! ()
            let
                now $ extract-time $ get-time!
              join-path calcit-dirname |backups
                str $ app.schema/read-field now :month
                str (app.schema/read-field now :day) |-snapshot.cirru
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            let
                port $ result:unwrap-or
                  parse-float $ option:unwrap-or (get-env |port)
                    str $ :port config/site
                  , 11000
              run-server! port
              println $ str "|Server started on port:" port
            ; "|init it before doing multi-threading"
            identity @*reader-reel
            set-interval 200 $ fn () $ render-loop!
            set-interval 600000 $ fn () $ persist-db!
            on-control-c on-exit!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'FfiTask)
            :args $ []
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                file-content $ format-cirru-edn $ assoc
                  :db $ unsafe-coerce @*reel 'cumulo-reel.core/ReelState
                  , :sessions ({})
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|Code updated..")
            if (not config/dev?) (raise "|reloading only happens in dev mode")
            clear-twig-caches!
            reset! *reader-reel $ deref *reel
            sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! ()
            when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            wss-serve! (&{} :port port)
              fn (data)
                match data
                  (:connect sid)
                    do
                      dispatch! (:: :session/connect) sid
                      println "|New client."
                  (:message sid msg)
                    let
                        action $ parse-cirru-edn msg
                      dispatch! action sid
                  (:disconnect sid)
                    do (println "|Client closed!")
                      dispatch! (:: :session/disconnect) sid
                  _ $ eprintln "|unknown data:" data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'FfiTask)
            :args $ [] 'Number
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def storage-file
            if (empty? calcit-dirname)
              str calcit-dirname $ :storage-file config/site
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
          :schema $ :: 'Dynamic
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sync-clients! (reel)
            wss-each! $ fn (sid)
              let
                  db $ app.schema/read-field reel :db
                  records $ app.schema/read-field reel :records
                  session $
                    get-in db $ [] :sessions sid
                    , .unwrap-or schema/session
                  old-store $
                    get @*client-caches sid
                    , .unwrap-or nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store $ {} (:key :id)
                ; when config/dev? $ println "|Changes for" sid |: changes $ count records
                if
                  not $ empty? changes
                  do
                    wss-send! sid $ format-cirru-edn $ :: :patch changes
                    swap! *client-caches assoc sid new-store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'cumulo-reel.core/ReelState
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.server
          :require (app.schema :as schema)
            app.updater :refer $ updater
            cumulo-reel.core :refer $ reel-reducer refresh-reel reel-schema
            app.config :as config
            app.twig.container :refer $ twig-container
            recollect.diff :refer $ diff-twig
            wss.core :refer $ wss-serve! wss-send! wss-each!
            recollect.twig :refer $ clear-twig-caches!
            app.$meta :refer $ calcit-dirname
            calcit.std.fs :refer $ path-exists? check-write-file!
            calcit.std.time :refer $ set-interval
            calcit.std.date :refer $ get-time! extract-time
            calcit.std.path :refer $ join-path
    'app.style $ %{} 'FileEntry
      :defs $ {}
        'button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def button
            merge ui/button $ {} $ :border-radius |16px
          :examples $ []
          :schema $ :: 'Dynamic
        'link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def link
            {} (:text-decoration :underline) (:cursor :pointer)
              :color $ hsl 240 80 80
              :font-family ui/font-fancy
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.style
          :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'as-tag-map $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn as-tag-map (value)
            unsafe-coerce value $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db session records)
            let
                logged-in? $ some? $ app.schema/read-field session :user-id
                router $ app.schema/read-field session :router
                base-data $ {} (:logged-in? logged-in?) (:session session)
                  :reel-length $ count records
              merge base-data $ as-tag-map $ if logged-in?
                let
                    user $ ->
                      get-in db $ [] :users $ app.schema/read-field session :user-id
                      .unwrap-or schema/user
                  {}
                    :user $ twig-user user
                    :router $ assoc router :data $ case-default (app.schema/read-field router :name) ({})
                      :home $ app.schema/read-field user :working-tasks
                      :pending $ app.schema/read-field user :pending-tasks
                      :profile $ twig-members (app.schema/read-field db :sessions) (app.schema/read-field db :users)
                      :done $ twig-done-tasks (app.schema/read-field user :done-tasks) (app.schema/read-field router :data)
                    :numbers $ {}
                      :sessions $ count $ app.schema/read-field db :sessions
                      :working $ count $ app.schema/read-field user :working-tasks
                      :pending $ count $ app.schema/read-field user :pending-tasks
                      :done $ count $ app.schema/read-field user :done-tasks
                    :color $ rand-hex-color!
                {}
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic) (:: 'List 'Dynamic)
            :return $ :: 'Map 'Tag 'Dynamic
        'twig-done-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-done-tasks (raw-done-tasks year-month)
            let
                done-tasks $ schema/decode-tasks raw-done-tasks
                year-months $ distinct $ map-list-kv done-tasks
                  fn (id task)
                    wrap-format-time (:time task) |%Y-%m
                cursor $ if (nil? year-month)
                  -> year-months
                    sort $ fn (a b) (.compare b a)
                    get 0
                    .unwrap-or |
                  decode-map-as year-month 'String
                reading-tasks $ filter-map-kv done-tasks $ fn (id task)
                  if
                    = cursor $ wrap-format-time (:time task) |%Y-%m
                    MapEntryDecision :keep id task
                    MapEntryDecision :drop
              {} (:months year-months) (:cursor cursor)
                :tasks $ schema/tasks-to-wire reading-tasks
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic 'Dynamic
            :return $ :: 'Map 'Tag 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |legacy-month-selection-and-wire-format)
            :code $ quote $ let
                september $ {} (:id |s) (:text |September) (:mode :working) (:time 1789732800000)
                october $ {} (:id |o) (:text |October) (:mode :working) (:time 1792324800000) (:custom |retained)
                tasks $ {} (|s september) (|o october)
                selected $ twig-done-tasks tasks |2026-09
                latest $ twig-done-tasks tasks nil
                empty-result $ twig-done-tasks ({}) nil
              assert= |2026-09 $ .unwrap $ get selected :cursor
              assert=
                {} $ |s september
                .unwrap $ get selected :tasks
              assert= |2026-10 $ .unwrap $ get latest :cursor
              assert=
                {} $ |o october
                .unwrap $ get latest :tasks
              assert= | $ .unwrap $ get empty-result :cursor
              assert= ({})
                .unwrap $ get empty-result :tasks
            :tags $ #{} :unit
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-members (sessions users)
            filter-map-kv sessions $ fn (k session)
              %:: MapEntryDecision :keep k $ option:unwrap-or
                get-in users $ [] (app.schema/read-field session :user-id) :name
                , |unknown
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
              :: 'Map 'Dynamic $ :: 'Map 'Tag 'Dynamic
              :: 'Map 'Dynamic $ :: 'Map 'Tag 'Dynamic
            :return $ :: 'Map 'Dynamic 'String
        'wrap-format-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn wrap-format-time (stamp format)
            format-time (calcit.std.date/Date0 :date stamp) (Option :some format)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Number 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.container
          :require
            app.twig.user :refer $ twig-user
            app.schema :as schema
            calcit.std.rand :refer $ rand-hex-color!
            calcit.std.date :refer $ extract-time format-time
    'app.twig.user $ %{} 'FileEntry
      :defs $ {} $ 'twig-user
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-user (user)
            -> user (dissoc :password) (dissoc :done-tasks) (dissoc :working-tasks) (dissoc :pending-tasks)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.user (:require)
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (db op sid op-id op-time)
            match op
              (:session/connect) (session/connect db sid op-id op-time)
              (:session/disconnect) (session/disconnect db sid op-id op-time)
              (:user/log-in op-data) (user/log-in db op-data sid op-id op-time)
              (:user/sign-up op-data) (user/sign-up db op-data sid op-id op-time)
              (:user/log-out) (user/log-out db sid op-id op-time)
              (:session/remove-message op-data) (session/remove-message db op-data sid op-id op-time)
              (:router/change op-data) (router/change db op-data sid op-id op-time)
              (:task/create op-data) (task/create db op-data sid op-id op-time)
              (:task/move-task op-data) (task/move-task db op-data sid op-id op-time)
              (:task/update-text op-data) (task/update-text db op-data sid op-id op-time)
              (:task/remove-done op-data) (task/remove-done db op-data sid op-id op-time)
              (:task/clear-done op-data) (task/clear-done db op-data sid op-id op-time)
              (:task/remove-working op-data) (task/remove-working db op-data sid op-id op-time)
              (:task/touch-working op-data) (task/touch-working db op-data sid op-id op-time)
              _ $ do (eprintln "|Unknown op:" op) db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require (app.updater.session :as session) (app.updater.user :as user) (app.updater.router :as router) (app.updater.task :as task)
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db op-data session-id op-id op-time)
            assoc-in db ([] :sessions session-id :router) op-data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db session-id op-id op-time)
            assoc-in db ([] :sessions session-id)
              merge schema/session $ {} $ :id session-id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db session-id op-id op-time)
            update db :sessions $ fn (session) (dissoc session session-id)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db op-data sid op-id op-time)
            update-in db ([] :sessions sid :messages)
              fn (messages-option)
                dissoc
                  option:unwrap-or messages-option $ {}
                  app.schema/read-field op-data :id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ app.schema :as schema
    'app.updater.task $ %{} 'FileEntry
      :defs $ {}
        'clear-done $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn clear-done (db op-data sid op-id op-time)
            let
                user-id $ get-in db $ [] :sessions sid :user-id
              assoc-in db ([] :users user-id :done-tasks) ({})
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        'create $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create (db op-data sid op-id op-time)
            let
                user-id $ decode-map-as
                  .unwrap $ get-in db $ [] :sessions sid :user-id
                  , 'String
              assoc-in db ([] :users user-id :working-tasks op-id)
                {} (:id op-id) (:text op-data) (:mode :working) (:time op-time)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |create-task-under-session-user-id)
            :code $ quote $ let
                db $ {}
                  :users $ {} $ |u1
                    {} $ :working-tasks $ {}
                  :sessions $ {} $ 1
                    {} $ :user-id |u1
                changed $ create db |Synthetic-task 1 |t1 1
              assert= |Synthetic-task $ .unwrap-or
                get-in changed $ [] :users |u1 :working-tasks |t1 :text
                , nil
            :tags $ #{} :unit
        'move-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn move-task (db op-data sid op-id op-time)
            let
                task-id $ app.schema/read-field op-data :id
                from-group $ app.schema/read-field op-data :from
                to-group $ app.schema/read-field op-data :to
                user-id $
                  get-in db $ [] :sessions sid :user-id
                  , .unwrap-or nil
                task-option $ get-in db $ [] :users user-id from-group task-id
              match task-option
                (:some task)
                  update-in db ([] :users user-id)
                    fn (user-option)
                      let
                          user $ option:unwrap-or user-option schema/user
                        -> user
                          assoc-in ([] to-group task-id) (assoc task :time op-time)
                          update from-group $ fn (tasks-option)
                            dissoc
                              option:unwrap-or tasks-option $ {}
                              , task-id
                (:none)
                  assoc-in db ([] :sessions sid :messages op-id)
                    {} (:id op-id) (:text "|No such task")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        'remove-done $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-done (db op-data sid op-id op-time)
            let
                user-id $
                  get-in db $ [] :sessions sid :user-id
                  , .unwrap-or nil
              dissoc-in db $ [] :users user-id :done-tasks op-data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        'remove-working $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-working (db op-data sid op-id op-time)
            let
                user-id $
                  get-in db $ [] :sessions sid :user-id
                  , .unwrap-or nil
              dissoc-in db $ [] :users user-id :working-tasks op-data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        'touch-working $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn touch-working (db op-data sid op-id op-time)
            let
                user-id $
                  get-in db $ [] :sessions sid :user-id
                  , .unwrap-or nil
              update-in db ([] :users user-id :working-tasks)
                fn (tasks-option)
                  let
                      tasks $ option:unwrap-or tasks-option $ {}
                    if
                      option:some? $ get tasks op-data
                      assoc-in tasks ([] op-data :time) op-time
                      , tasks
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        'update-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-text (db op-data sid op-id op-time)
            let
                user-id $
                  get-in db $ [] :sessions sid :user-id
                  , .unwrap-or nil
              update-in db
                [] :users user-id (app.schema/read-field op-data :group) (app.schema/read-field op-data :id)
                fn (task-option)
                  -> (option:unwrap-or task-option schema/task)
                    assoc :text $ app.schema/read-field op-data :text
                    assoc :time $ app.schema/read-field op-data :time
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.task
          :require
            medley.core :refer $ dissoc-in
            app.schema :as schema
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db op-data sid op-id op-time)
            let-sugar
                  [] username password
                  , op-data
                maybe-user $ -> (app.schema/read-field db :users) (vals) (.to-list)
                  find $ fn (user)
                    and $ = username $ app.schema/read-field user :name
              update-in db ([] :sessions sid)
                fn (session-option)
                  let
                      session $ option:unwrap-or session-option schema/session
                    match maybe-user
                      (:some user)
                        if
                          = (md5 password) (app.schema/read-field user :password)
                          assoc session :user-id $ app.schema/read-field user :id
                          assoc session :messages $ assoc (app.schema/read-field session :messages) op-id $ {} (:id op-id)
                            :text $ str "|Wrong password for " username
                      (:none)
                        assoc session :messages $ assoc (app.schema/read-field session :messages) op-id $ {} (:id op-id)
                          :text $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db session-id op-id op-time)
            assoc-in db ([] :sessions session-id :user-id) nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db op-data sid op-id op-time)
            let-sugar
                  [] username password
                  , op-data
                maybe-user $ find
                  -> (app.schema/read-field db :users) vals .to-list
                  fn (user)
                    = username $ app.schema/read-field user :name
              match maybe-user
                (:some _user)
                  update-in db ([] :sessions sid :messages)
                    fn (messages-option)
                      assoc
                        option:unwrap-or messages-option $ {}
                        , op-id $ {} (:id op-id)
                          :text $ str "|Name is taken: " username
                (:none)
                  -> db
                    assoc-in ([] :sessions sid :user-id) op-id
                    assoc-in ([] :users op-id)
                      {} (:id op-id) (:name username) (:nickname username)
                        :password $ md5 password
                        :avatar nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] 'Dynamic 'Dynamic 'Dynamic 'Dynamic 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require
            calcit.std.hash :refer $ md5
            app.schema :as schema
