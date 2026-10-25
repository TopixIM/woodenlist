
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
          :code $ quote $ defn mount-target ()
            .unwrap $ respo.ffi.browser/query-selector |.app
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
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
            .test $ :: 'Fn $ {}
              :args $ [] 'app.comp.home/RegExpHost 'String
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
            .match $ :: 'Fn $ {}
              :args $ [] 'app.comp.home/StringMatchHost 'app.comp.home/RegExpHost
              :return $ :: 'JsNullish 'app.comp.home/RegExpMatchHost
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
                        .test http-pattern $ :text task
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
                          .unwrap-or (nth item 1) nil
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
                result $ .match typed-text pattern
              match (js-nullish->option result)
                (:some matched) (.-0 matched)
                (:none) |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String 'app.comp.home/RegExpHost
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
            = |dev $ .unwrap-or (get-env |mode) |release
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
        'Credentials $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Credentials (:username 'String) (:password 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'Database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Database
            :users $ :: 'Map 'String 'app.schema/User
            :sessions $ :: 'Map 'Number 'app.schema/Session
            :extra $ :: 'Map 'Tag 'Dynamic
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
        'EditTask $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct EditTask (:id 'String) (:group 'Tag) (:text 'String) (:time 'Number)
          :examples $ []
          :schema $ :: 'StructDef
        'LoginState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct LoginState (:username 'String) (:password 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'MoveTask $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct MoveTask (:id 'String) (:from 'Tag) (:to 'Tag)
          :examples $ []
          :schema $ :: 'StructDef
        'ServerOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum ServerOp (:session/connect) (:session/disconnect) (:session/remove-message 'String) (:user/log-in 'app.schema/Credentials) (:user/sign-up 'app.schema/Credentials) (:user/log-out)
            :router/change $ :: 'Map 'Tag 'Dynamic
            :task/create 'String
            :task/move-task 'app.schema/MoveTask
            :task/update-text 'app.schema/EditTask
            :task/remove-working 'String
            :task/remove-done 'String
            :task/clear-done
            :task/touch-working 'String
            :reel/reset
            :reel/merge
            :unknown 'Enum
          :examples $ []
          :schema $ :: 'EnumDef
        'Session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Session (:id 'Number)
            :user-id $ :: 'Option 'String
            :nickname $ :: 'Option 'String
            :router $ :: 'Map 'Tag 'Dynamic
            :messages $ :: 'Map 'String 'Dynamic
            :extra $ :: 'Map 'Tag 'Dynamic
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
        'User $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct User (:id 'String) (:name 'String) (:password 'String)
            :nickname $ :: 'Option 'String
            :avatar $ :: 'Option 'String
            :working-tasks $ :: 'Map 'String 'app.schema/Task
            :pending-tasks $ :: 'Map 'String 'app.schema/Task
            :done-tasks $ :: 'Map 'String 'app.schema/Task
            :extra $ :: 'Map 'Tag 'Dynamic
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
        'database-to-wire $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn database-to-wire (db)
            merge (:extra db)
              {}
                :users $ filter-map-kv (:users db)
                  fn (id user)
                    MapEntryDecision :keep id $ user-to-wire user
                :sessions $ filter-map-kv (:sessions db)
                  fn (sid session)
                    MapEntryDecision :keep sid $ session-to-wire session
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Database
            :return $ :: 'Map 'Tag 'Dynamic
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
        'decode-credentials $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-credentials (raw)
            if (list? raw)
              let
                  values $ decode-map-as raw $ :: 'List 'String
                if
                  not= 2 $ count values
                  raise |Expected-two-credential-strings
                Credentials :username
                  .unwrap $ nth values 0
                  , :password $ .unwrap $ nth values 1
              decode-map-as
                if (struct? raw) (&struct:to-map raw) raw
                , 'app.schema/Credentials
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Credentials)
            :args $ [] 'Dynamic
        'decode-database $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-database (raw)
            let
                fields $ merge database $ decode-map-as raw (:: 'Map 'Tag 'Dynamic)
              Database :users (decode-nullable-field fields :users decode-users) :sessions (decode-nullable-field fields :sessions decode-sessions) :extra $ -> fields (dissoc :users) (dissoc :sessions)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'Dynamic
          :tests $ [] $ %{} 'TestEntry (:name |legacy-domain-and-task-roundtrip)
            :code $ quote $ let
                task $ {} (:id |t1) (:text "|任务🐈") (:time 0) (:mode nil) (:extension false)
                user $ {} (:id |u1) (:name "|本地用户🐈") (:password |digest) (:nickname nil) (:avatar nil)
                  :working-tasks $ {} $ |t1 task
                  :pending-tasks $ {}
                  :done-tasks $ {}
                  :custom-user true
                session $ {} (:id 1) (:user-id |u1) (:nickname nil)
                  :router $ {} (:name :home) (:data nil)
                  :messages $ {}
                  :custom-session |retained
                raw $ {}
                  :users $ {} $ |u1 user
                  :sessions $ {} $ 1 session
                  :custom-root false
                model $ decode-database raw
              assert= raw $ database-to-wire model
              assert= "|任务🐈" $ :text $ .unwrap
                get
                  :working-tasks $ .unwrap $ get (:users model) |u1
                  , |t1
              assert= (Option :some |u1)
                :user-id $ .unwrap $ get (:sessions model) 1
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
        'decode-edit-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-edit-task (raw)
            let
                fields $ decode-map-as
                  if (struct? raw) (&struct:to-map raw) raw
                  :: 'Map 'Tag 'Dynamic
              EditTask :id
                decode-map-as
                  .unwrap $ get fields :id
                  , 'String
                , :group
                  decode-task-group $ .unwrap $ get fields :group
                  , :text
                    decode-map-as
                      .unwrap $ get fields :text
                      , 'String
                    , :time $ decode-map-as
                      .unwrap $ get fields :time
                      , 'Number
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/EditTask)
            :args $ [] 'Dynamic
        'decode-move-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-move-task (raw)
            let
                fields $ decode-map-as
                  if (struct? raw) (&struct:to-map raw) raw
                  :: 'Map 'Tag 'Dynamic
              MoveTask :id
                decode-map-as
                  .unwrap $ get fields :id
                  , 'String
                , :from
                  decode-task-group $ .unwrap $ get fields :from
                  , :to $ decode-task-group $ .unwrap (get fields :to)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/MoveTask)
            :args $ [] 'Dynamic
        'decode-nullable-field $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-nullable-field (fields field decoder)
            match (get fields field)
              (:some value) (decoder value)
              (:none) (decoder nil)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'T)
            :args $ [] (:: 'Map 'K 'Dynamic) 'K $ :: 'Fn
              {} (:return 'T)
                :args $ [] 'Dynamic
            :generics $ [] 'K 'T
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
        'decode-server-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-server-op (raw)
            if (enum? raw)
              match raw
                (:session/connect) (ServerOp :session/connect)
                (:session/disconnect) (ServerOp :session/disconnect)
                (:session/remove-message value)
                  ServerOp :session/remove-message $ if (string? value) (decode-map-as value 'String)
                    decode-map-as
                      .unwrap $ get
                        decode-map-as value $ :: 'Map 'Tag 'Dynamic
                        , :id
                      , 'String
                (:user/log-in value)
                  ServerOp :user/log-in $ decode-credentials value
                (:user/sign-up value)
                  ServerOp :user/sign-up $ decode-credentials value
                (:user/log-out) (ServerOp :user/log-out)
                (:router/change value)
                  ServerOp :router/change $ decode-map-as value $ :: 'Map 'Tag 'Dynamic
                (:task/create value)
                  ServerOp :task/create $ decode-map-as value 'String
                (:task/move-task value)
                  ServerOp :task/move-task $ decode-move-task value
                (:task/update-text value)
                  ServerOp :task/update-text $ decode-edit-task value
                (:task/remove-working value)
                  ServerOp :task/remove-working $ decode-map-as value 'String
                (:task/remove-done value)
                  ServerOp :task/remove-done $ decode-map-as value 'String
                (:task/clear-done value) (ServerOp :task/clear-done)
                (:task/clear-done) (ServerOp :task/clear-done)
                (:task/touch-working value)
                  ServerOp :task/touch-working $ decode-map-as value 'String
                (:reel/reset) (ServerOp :reel/reset)
                (:reel/merge) (ServerOp :reel/merge)
                (:unknown value)
                  if (enum? value) (ServerOp :unknown value) (ServerOp :unknown raw)
                _ $ ServerOp :unknown raw
              raise |Expected-server-operation-enum
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/ServerOp)
            :args $ [] 'Dynamic
        'decode-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-session (raw)
            let
                fields $ merge session $ decode-map-as raw (:: 'Map 'Tag 'Dynamic)
              Session :id
                decode-map-as
                  .unwrap $ get fields :id
                  , 'Number
                , :user-id
                  decode-optional-field fields :user-id $ fn (value) (decode-map-as value 'String)
                  , :nickname
                    decode-optional-field fields :nickname $ fn (value) (decode-map-as value 'String)
                    , :router
                      decode-nullable-field fields :router $ fn (value)
                        decode-map-as value $ :: 'Map 'Tag 'Dynamic
                      , :messages
                        decode-nullable-field fields :messages $ fn (value)
                          decode-map-as value $ :: 'Map 'String 'Dynamic
                        , :extra $ -> fields (dissoc :id) (dissoc :user-id) (dissoc :nickname) (dissoc :router) (dissoc :messages)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Session)
            :args $ [] 'Dynamic
        'decode-sessions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-sessions (raw)
            filter-map-kv
              decode-map-as raw $ :: 'Map 'Number 'Dynamic
              fn (key value)
                MapEntryDecision :keep key $ decode-session value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'Number 'app.schema/Session
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
        'decode-task-group $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-task-group (raw)
            let
                group $ decode-map-as raw 'Tag
              match group (:working-tasks group) (:pending-tasks group) (:done-tasks group)
                _ $ raise |Unknown-task-group
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Tag)
            :args $ [] 'Dynamic
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
        'decode-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-user (raw)
            let
                fields $ decode-map-as raw $ :: 'Map 'Tag 'Dynamic
                task-fields $ merge
                  {}
                    :working-tasks $ {}
                    :pending-tasks $ {}
                    :done-tasks $ {}
                  , fields
              User :id
                decode-map-as
                  .unwrap $ get fields :id
                  , 'String
                , :name
                  decode-map-as
                    .unwrap $ get fields :name
                    , 'String
                  , :password
                    decode-map-as
                      .unwrap $ get fields :password
                      , 'String
                    , :nickname
                      decode-optional-field fields :nickname $ fn (value) (decode-map-as value 'String)
                      , :avatar
                        decode-optional-field fields :avatar $ fn (value) (decode-map-as value 'String)
                        , :working-tasks (decode-nullable-field task-fields :working-tasks decode-tasks) :pending-tasks (decode-nullable-field task-fields :pending-tasks decode-tasks) :done-tasks (decode-nullable-field task-fields :done-tasks decode-tasks) :extra $ -> fields (dissoc :id) (dissoc :name) (dissoc :password) (dissoc :nickname) (dissoc :avatar) (dissoc :working-tasks) (dissoc :pending-tasks) (dissoc :done-tasks)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/User)
            :args $ [] 'Dynamic
        'decode-users $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-users (raw)
            filter-map-kv
              decode-map-as raw $ :: 'Map 'String 'Dynamic
              fn (key value)
                MapEntryDecision :keep key $ decode-user value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :return $ :: 'Map 'String 'app.schema/User
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
        'optional-string-to-wire $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn optional-string-to-wire (value)
            match value
              (:some text) text
              (:none) nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] $ :: 'Option 'String
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
            .unwrap-or (get value field) nil
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
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def session
            {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ {} (:name :home) (:data nil)
              :messages $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'session-to-wire $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn session-to-wire (session)
            merge (:extra session)
              {}
                :id $ :id session
                :router $ :router session
                :messages $ :messages session
                :user-id $ optional-string-to-wire $ :user-id session
                :nickname $ optional-string-to-wire $ :nickname session
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Session
            :return $ :: 'Map 'Tag 'Dynamic
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
        'user-to-wire $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn user-to-wire (user)
            merge (:extra user)
              {}
                :id $ :id user
                :name $ :name user
                :password $ :password user
                :nickname $ optional-string-to-wire $ :nickname user
                :avatar $ optional-string-to-wire $ :avatar user
                :working-tasks $ tasks-to-wire $ :working-tasks user
                :pending-tasks $ tasks-to-wire $ :pending-tasks user
                :done-tasks $ tasks-to-wire $ :done-tasks user
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/User
            :return $ :: 'Map 'Tag 'Dynamic
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
          :code $ quote $ defref *client-caches ({})
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Number (:: 'Map 'Tag 'Dynamic)
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *initial-db
            if
              path-exists? $ w-log storage-file
              do (println "|Found local EDN data")
                schema/decode-database $ parse-cirru-edn $ read-file storage-file
              do (println "|Found no data") (schema/decode-database schema/database)
          :examples $ []
          :schema $ :: 'Ref 'app.schema/Database
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reader-reel @*reel
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState 'app.schema/Database
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel
            cumulo-reel.core/ReelState :base @*initial-db :db @*initial-db :records ([]) :merged? false
          :examples $ []
          :schema $ :: 'Ref $ :: 'cumulo-reel.core/ReelState 'app.schema/Database
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op sid)
            let
                op-id $ turn-string $ generate-id!
                op-time $ calcit.std.date/get-timestamp $ get-time!
              when config/dev? $ println |Dispatch! (str op) sid
              match op
                (:effect/persist) (persist-db!)
                (:effect/ping)
                  do
                    wss-send! sid $ format-cirru-edn $ :: :effect/pong
                    , &unit
                _ $ reset! *reel $ reel-reducer @*reel updater (schema/decode-server-op op) sid op-id op-time config/dev?
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
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
                  parse-float $ .unwrap-or (get-env |port)
                    str $ :port config/site
                  :port config/site
              run-server! port
              println $ str "|Server started on port:" port
            identity @*reader-reel
            calcit.std.time/set-interval! 200 $ fn () $ render-loop!
            calcit.std.time/set-interval! 600000 $ fn () $ persist-db!
            on-control-c on-exit!
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-exit! () (persist-db!) (quit! 0)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-db! ()
            let
                file-content $ format-cirru-edn $ assoc
                  schema/database-to-wire $ :db @*reel
                  , :sessions ({})
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! () (println "|Code updated..")
            if (not config/dev?) (raise "|reloading only happens in dev mode")
            clear-twig-caches!
            reset! *reader-reel @*reel
            sync-clients! @*reader-reel
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-loop! ()
            when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn run-server! (port)
            wss-serve!
              {} $ :port port
              fn (event)
                hint-fn $ {}
                  :args $ [] 'wss.core/WssEvent
                  :return 'Unit
                match event
                  (:connect sid)
                    do
                      dispatch! (:: :session/connect) sid
                      println "|New client."
                  (:message sid msg)
                    let
                        action $ parse-cirru-edn msg
                      if (enum? action) (dispatch! action sid) (raise |Expected-client-operation-enum)
                  (:disconnect sid)
                    do (println "|Client closed!")
                      dispatch! (:: :session/disconnect) sid
                  _ $ eprintln "|unknown data:" event
                , &unit
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
              hint-fn $ {}
                :args $ [] 'Number
                :return 'Unit
              let
                  db $ :db reel
                  records $ :records reel
                  session $ get (:sessions db) sid
                  old-store $ match (get @*client-caches sid)
                    (:some store) store
                    (:none) nil
                  new-store $ twig-container db session records
                  changes $ diff-twig old-store new-store $ {} (:key :id)
                when
                  not $ empty? changes
                  wss-send! sid $ format-cirru-edn $ :: :patch changes
                  swap! *client-caches assoc sid new-store
                , &unit
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] $ :: 'cumulo-reel.core/ReelState 'app.schema/Database
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.server
          :require (app.schema :as schema)
            app.updater :refer $ updater
            cumulo-reel.core :refer $ reel-reducer
            app.config :as config
            app.twig.container :refer $ twig-container
            recollect.diff :refer $ diff-twig
            wss.core :refer $ wss-serve! wss-send! wss-each!
            recollect.twig :refer $ clear-twig-caches!
            app.$meta :refer $ calcit-dirname
            calcit.std.fs :refer $ path-exists? check-write-file!
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
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn twig-container (db maybe-session records)
            let
                raw-session $ match maybe-session
                  (:some session) (schema/session-to-wire session)
                  (:none) schema/session
                base-data $ {} (:logged-in? false) (:session raw-session)
                  :reel-length $ count records
              match maybe-session
                (:none) base-data
                (:some session)
                  match (:user-id session)
                    (:none) base-data
                    (:some uid)
                      let
                          user $ .unwrap $ get (:users db) uid
                          router $ :router session
                          route $ schema/decode-optional-field router :name $ fn (value) (decode-map-as value 'Tag)
                          route-data $ match route
                            (:none) ({})
                            (:some name)
                              match name
                                :home $ schema/tasks-to-wire $ :working-tasks user
                                :pending $ schema/tasks-to-wire $ :pending-tasks user
                                :profile $ twig-members (:sessions db) (:users db)
                                :done $ twig-done-tasks
                                  schema/tasks-to-wire $ :done-tasks user
                                  schema/read-field router :data
                                _ $ {}
                        merge base-data $ {} (:logged-in? true)
                          :user $ twig-user user
                          :router $ assoc router :data route-data
                          :numbers $ {}
                            :sessions $ count $ :sessions db
                            :working $ count $ :working-tasks user
                            :pending $ count $ :pending-tasks user
                            :done $ count $ :done-tasks user
                          :color $ rand-hex-color!
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/Database (:: 'Option 'app.schema/Session) (:: 'List 'Dynamic)
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
            filter-map-kv sessions $ fn (sid session)
              MapEntryDecision :keep sid $ match (:user-id session)
                (:none) |unknown
                (:some uid)
                  match (get users uid)
                    (:some user) (:name user)
                    (:none) |unknown
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Number 'app.schema/Session) (:: 'Map 'String 'app.schema/User)
            :return $ :: 'Map 'Number 'String
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
            -> (app.schema/user-to-wire user) (dissoc :password) (dissoc :done-tasks) (dissoc :working-tasks) (dissoc :pending-tasks)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/User
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.twig.user (:require)
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (db op sid op-id op-time)
            match op
              (:session/connect) (session/connect db sid op-id op-time)
              (:session/disconnect) (session/disconnect db sid op-id op-time)
              (:user/log-in data) (user/log-in db data sid op-id op-time)
              (:user/sign-up data) (user/sign-up db data sid op-id op-time)
              (:user/log-out) (user/log-out db sid op-id op-time)
              (:session/remove-message data) (session/remove-message db data sid op-id op-time)
              (:router/change data) (router/change db data sid op-id op-time)
              (:task/create data) (task/create db data sid op-id op-time)
              (:task/move-task data) (task/move-task db data sid op-id op-time)
              (:task/update-text data) (task/update-text db data sid op-id op-time)
              (:task/remove-done data) (task/remove-done db data sid op-id op-time)
              (:task/clear-done) (task/clear-done db sid op-id op-time)
              (:task/remove-working data) (task/remove-working db data sid op-id op-time)
              (:task/touch-working data) (task/touch-working db data sid op-id op-time)
              (:reel/reset) db
              (:reel/merge) db
              (:unknown value)
                do (eprintln "|Unknown op:" value) db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'app.schema/ServerOp 'Number 'String 'Number
          :tests $ [] $ %{} 'TestEntry (:name |account-task-lifecycle-and-real-reel-replay)
            :code $ quote $ let
                base $ app.schema/decode-database app.schema/database
                initial $ cumulo-reel.core/ReelState :base base :db base :records ([]) :merged? false
                step $ fn (reel op id time)
                  hint-fn $ {}
                    :args $ [] (:: 'cumulo-reel.core/ReelState 'app.schema/Database) 'Enum 'String 'Number
                    :return $ :: 'cumulo-reel.core/ReelState 'app.schema/Database
                  cumulo-reel.core/reel-reducer reel updater (app.schema/decode-server-op op) 1 id time true
                connected $ step initial (:: :session/connect) |connect 0
                signed-up $ step connected
                  :: :user/sign-up $ [] "|用户🐈" |synthetic-password
                  , |u1 1
                created $ step signed-up (:: :task/create "|原始任务🐈") |t1 2
                touched $ step created (:: :task/touch-working |t1) |touch 3
                edited $ step touched
                  :: :task/update-text $ {} (:id |t1) (:group :working-tasks) (:text "|已编辑🐈") (:time 4)
                  , |edit 99
                pending $ step edited
                  :: :task/move-task $ {} (:id |t1) (:from :working-tasks) (:to :pending-tasks)
                  , |move1 5
                done $ step pending
                  :: :task/move-task $ {} (:id |t1) (:from :pending-tasks) (:to :done-tasks)
                  , |move2 6
                cleared $ step done (:: :task/clear-done nil) |clear 7
                replay $ fn (db op sid id time)
                  hint-fn $ {}
                    :args $ [] 'app.schema/Database 'Dynamic 'Dynamic 'Dynamic 'Dynamic
                    :return 'app.schema/Database
                  updater db (app.schema/decode-server-op op) (decode-map-as sid 'Number) (decode-map-as id 'String) (decode-map-as time 'Number)
                refreshed $ cumulo-reel.core/refresh-reel cleared base replay
                user-at $ fn (reel)
                  hint-fn $ {}
                    :args $ [] $ :: 'cumulo-reel.core/ReelState 'app.schema/Database
                    :return 'app.schema/User
                  .unwrap $ get
                    :users $ :db reel
                    , |u1
                task-at $ .unwrap $ get
                  :done-tasks $ user-at done
                  , |t1
              assert= 8 $ count $ :records cleared
              assert= "|已编辑🐈" $ :text task-at
              assert= 6 $ :time task-at
              assert= (Option :some :working) (:mode task-at)
              assert= 4 $ :time $ .unwrap
                get
                  :working-tasks $ user-at edited
                  , |t1
              assert= 0 $ count $ :working-tasks (user-at pending)
              assert= 1 $ count $ :pending-tasks (user-at pending)
              assert= 0 $ count $ :done-tasks (user-at cleared)
              assert=
                app.schema/database-to-wire $ :db cleared
                app.schema/database-to-wire $ :db refreshed
              assert= (Option :some |u1)
                :user-id $ app.updater.session/get-session (:db refreshed) 1
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require (app.updater.session :as session) (app.updater.user :as user) (app.updater.router :as router) (app.updater.task :as task)
    'app.updater.router $ %{} 'FileEntry
      :defs $ {} $ 'change
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn change (db route sid op-id op-time)
            let
                session $ app.updater.session/get-session db sid
              app.updater.session/put-session db sid $ struct-with session $ :router route
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database (:: 'Map 'Tag 'Dynamic) 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.router
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'add-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn add-message (db sid id text)
            let
                session $ get-session db sid
              put-session db sid $ struct-with session $ :messages
                assoc (:messages session) id $ {} (:id id) (:text text)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'String 'String
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn connect (db sid op-id op-time)
            put-session db sid $ schema/decode-session $ assoc schema/session :id sid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'String 'Number
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn disconnect (db sid op-id op-time)
            struct-with db $ :sessions $ dissoc (:sessions db) sid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'String 'Number
        'get-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-session (db sid)
            .unwrap $ get (:sessions db) sid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Session)
            :args $ [] 'app.schema/Database 'Number
        'put-session $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn put-session (db sid session)
            struct-with db $ :sessions $ assoc (:sessions db) sid session
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'app.schema/Session
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-message (db id sid op-id op-time)
            let
                session $ get-session db sid
              put-session db sid $ struct-with session $ :messages
                dissoc (:messages session) id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'String 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.session
          :require $ app.schema :as schema
    'app.updater.task $ %{} 'FileEntry
      :defs $ {}
        'clear-done $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn clear-done (db sid op-id op-time)
            put-user db sid $ struct-with (get-user db sid)
              :done-tasks $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'String 'Number
        'create $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn create (db text sid op-id op-time)
            let
                user $ get-user db sid
                task $ schema/Task :id op-id :text text :time op-time :mode (Option :some :working) :extra $ {}
              put-user db sid $ struct-with user $ :working-tasks
                assoc (:working-tasks user) op-id task
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'String 'Number 'String 'Number
          :tests $ [] $ %{} 'TestEntry (:name |create-task-under-session-user-id)
            :code $ quote $ let
                db $ schema/decode-database $ {}
                  :users $ {} $ |u1
                    {} (:id |u1) (:name |User) (:password |digest)
                      :working-tasks $ {}
                  :sessions $ {} $ 1
                    {} (:id 1) (:user-id |u1)
                changed $ create db |Synthetic-task 1 |t1 1
              assert= |Synthetic-task $ :text $ .unwrap
                get
                  :working-tasks $ get-user changed 1
                  , |t1
              assert= 1 $ count $ :users changed
            :tags $ #{} :unit
        'get-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-user (db sid)
            .unwrap $ get (:users db) (session-user-id db sid)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/User)
            :args $ [] 'app.schema/Database 'Number
        'group-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn group-tasks (user group)
            match group
              :working-tasks $ :working-tasks user
              :pending-tasks $ :pending-tasks user
              :done-tasks $ :done-tasks user
              _ $ raise |Unknown-task-group
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'app.schema/User 'Tag
            :return $ :: 'Map 'String 'app.schema/Task
        'move-task $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn move-task (db move sid op-id op-time)
            let
                user $ get-user db sid
                from-tasks $ group-tasks user $ :from move
                task-id $ :id move
              match (get from-tasks task-id)
                (:some task)
                  let
                      target-user $ with-tasks user (:to move)
                        assoc
                          group-tasks user $ :to move
                          , task-id $ struct-with task $ :time op-time
                    put-user db sid $ with-tasks target-user (:from move)
                      dissoc
                        group-tasks target-user $ :from move
                        , task-id
                (:none) (app.updater.session/add-message db sid op-id "|No such task")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'app.schema/MoveTask 'Number 'String 'Number
        'put-user $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn put-user (db sid user)
            struct-with db $ :users $ assoc (:users db) (session-user-id db sid) user
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'app.schema/User
        'remove-done $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-done (db id sid op-id op-time)
            let
                user $ get-user db sid
              put-user db sid $ struct-with user $ :done-tasks
                dissoc (:done-tasks user) id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'String 'Number 'String 'Number
        'remove-working $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn remove-working (db id sid op-id op-time)
            let
                user $ get-user db sid
              put-user db sid $ struct-with user $ :working-tasks
                dissoc (:working-tasks user) id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'String 'Number 'String 'Number
        'session-user-id $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn session-user-id (db sid)
            .unwrap $ :user-id $ app.updater.session/get-session db sid
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'app.schema/Database 'Number
        'touch-working $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn touch-working (db id sid op-id op-time)
            let
                user $ get-user db sid
              match
                get (:working-tasks user) id
                (:some task)
                  put-user db sid $ struct-with user $ :working-tasks
                    assoc (:working-tasks user) id $ struct-with task $ :time op-time
                (:none) db
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'String 'Number 'String 'Number
        'update-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-text (db edit sid op-id op-time)
            let
                user $ get-user db sid
                tasks $ group-tasks user $ :group edit
                task $ .unwrap $ get tasks (:id edit)
                changed $ struct-with task
                  :text $ :text edit
                  :time $ :time edit
              put-user db sid $ with-tasks user (:group edit)
                assoc tasks (:id edit) changed
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'app.schema/EditTask 'Number 'String 'Number
        'with-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn with-tasks (user group tasks)
            match group
              :working-tasks $ struct-with user $ :working-tasks tasks
              :pending-tasks $ struct-with user $ :pending-tasks tasks
              :done-tasks $ struct-with user $ :done-tasks tasks
              _ $ raise |Unknown-task-group
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/User)
            :args $ [] 'app.schema/User 'Tag $ :: 'Map 'String 'app.schema/Task
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.task
          :require
            medley.core :refer $ dissoc-in
            app.schema :as schema
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-in (db credentials sid op-id op-time)
            let
                username $ :username credentials
                password $ :password credentials
                maybe-user $ find
                  .to-list $ vals $ :users db
                  fn (user)
                    = username $ :name user
              match maybe-user
                (:some user)
                  if
                    = (md5 password) (:password user)
                    app.updater.session/put-session db sid $ struct-with (app.updater.session/get-session db sid)
                      :user-id $ Option :some $ :id user
                    app.updater.session/add-message db sid op-id $ str "|Wrong password for " username
                (:none)
                  app.updater.session/add-message db sid op-id $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'app.schema/Credentials 'Number 'String 'Number
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn log-out (db sid op-id op-time)
            app.updater.session/put-session db sid $ struct-with (app.updater.session/get-session db sid)
              :user-id $ Option :none
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'Number 'String 'Number
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sign-up (db credentials sid op-id op-time)
            let
                username $ :username credentials
                maybe-user $ find
                  .to-list $ vals $ :users db
                  fn (user)
                    = username $ :name user
              match maybe-user
                (:some _user)
                  app.updater.session/add-message db sid op-id $ str "|Name is taken: " username
                (:none)
                  let
                      user $ schema/decode-user $ {} (:id op-id) (:name username) (:nickname username)
                        :password $ md5 $ :password credentials
                        :avatar nil
                      session $ app.updater.session/get-session db sid
                      next-db $ struct-with db $ :users
                        assoc (:users db) op-id user
                    app.updater.session/put-session next-db sid $ struct-with session $ :user-id (Option :some op-id)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Database)
            :args $ [] 'app.schema/Database 'app.schema/Credentials 'Number 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater.user
          :require
            calcit.std.hash :refer $ md5
            app.schema :as schema
