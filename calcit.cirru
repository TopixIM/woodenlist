
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |app)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'app.client/main!) (:mode :js) (:reload-fn 'app.client/reload!)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |respo-feather.calcit/ |alerts.calcit/ |respo-markdown.calcit/
      :type-slots $ {}
    :server $ {} (:description |) (:init-fn 'app.server/main!) (:mode :native) (:reload-fn 'app.server/reload!)
      :feature-policy $ {}
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit-wss/ |calcit.std/
      :type-slots $ {}
  :files $ {}
    'app.client $ %{} 'FileEntry
      :defs $ {}
        '*states $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *states $ {}
              :states $ {}
                :cursor $ []
          :examples $ []
          :schema $ :: 'Dynamic
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *store $ :: :initial
          :examples $ []
          :schema $ :: 'Dynamic
        'connect! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn connect! () $ let
                url-obj $ unsafe-coerce (url-parse js/location.href true) 'JsObject
                query $ unsafe-coerce (.-query url-obj) 'JsObject
                host-value $ .-host query
                port-value $ .-port query
                host $ if (js-present? host-value) (unsafe-coerce host-value 'String) js/location.hostname
                port $ if (js-present? port-value) (unsafe-coerce port-value 'String)
                  str $ app.schema/read-field config/site :port
              ws-connect!
                if config/dev? (str |ws:// host |: port) |wss://wood.topix.im/ws
                {}
                  :on-open $ fn (event) (simulate-login!)
                  :on-close $ fn (event)
                    reset! *store $ :: :offline
                    js/console.error "|Lost connection!"
                  :on-data on-server-data
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not=
                    first op
                    , .unwrap-or :unknown
                  , :states
                js/console.log |Dispatch op
              tag-match op
                (:states cursor s)
                  reset! *states $ update-states @*states cursor s
                (:effect/connect) (connect!)
                _ $ ws-send! op
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              if config/dev? $ load-console-formatter!
              render-app!
              connect!
              add-watch *store :changes $ fn (store prev) (render-app!)
              add-watch *states :changes $ fn (states prev) (render-app!)
              on-page-touch $ fn ()
                if
                  = @*store $ :: :offline
                  connect!
              visibility-heartbeat $ fn ()
                if (map? @*store)
                  ws-send! $ :: :effect/ping
              println "|App started!"
          :examples $ []
          :schema $ :: 'Dynamic
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
          :schema $ :: 'Dynamic
        'on-server-data $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-server-data (data)
              tag-match data
                (:patch changes)
                  do
                    when config/dev? $ js/console.log |Changes changes
                    reset! *store $ patch-twig @*store changes
                (:effect/pong) :ok
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if
              or (some? client-errors) (some? server-errors)
              hud! |error $ str client-errors &newline server-errors
              do (hud! |inactive nil) (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!) (render-app!)
                add-watch *store :changes $ fn (store prev) (render-app!)
                add-watch *states :changes $ fn (states prev) (render-app!)
                println "|Code updated."
          :examples $ []
          :schema $ :: 'Dynamic
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target
              comp-container (app.schema/read-field @*states :states) @*store
              , dispatch!
          :examples $ []
          :schema $ :: 'Dynamic
        'simulate-login! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn simulate-login! () $ let
                raw $ js/localStorage.getItem (:storage-key config/site)
              if (js-present? raw)
                do (println "|Found storage.")
                  dispatch! $ :: :user/log-in
                    parse-cirru-edn $ unsafe-coerce raw 'String
                do $ println "|Found no storage."
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.client $ :require
            respo.core :refer $ render! clear-cache! realize-ssr!
            respo.cursor :refer $ update-states
            app.comp.container :refer $ comp-container
            app.schema :as schema
            app.config :as config
            ws-edn.client :refer $ ws-connect! ws-send!
            recollect.patch :refer $ patch-twig
            cumulo-util.core :refer $ on-page-touch visibility-heartbeat
            |url-parse :default url-parse
            |bottom-tip :default hud!
            |./calcit.build-errors :default client-errors
            |../js-out/calcit.build-errors :default server-errors
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (states store)
              case-default store
                let
                    state $ app.schema/read-field states :data
                    session $ app.schema/read-field store :session
                  div
                    {} $ :class-name (str-spaced css/global css/fullscreen css/column)
                    comp-sidebar (app.schema/read-field store :router) (app.schema/read-field store :logged-in?) (app.schema/read-field store :numbers)
                    div
                      {} (:class-name css/flex)
                        :style $ {} (:overflow :auto) (:height |100%)
                      div
                        {} $ :style
                          {} (:margin "|0 auto") (:max-width 800) (:height |100%) (:overflow :auto)
                        if (app.schema/read-field store :logged-in?)
                          let
                              router $ app.schema/read-field store :router
                            case-default (app.schema/read-field router :name)
                              <> (str router) nil
                              :profile $ comp-profile (app.schema/read-field store :user) (app.schema/read-field router :data)
                              :home $ comp-home (>> states :home) (app.schema/read-field router :data)
                              :pending $ comp-pending (>> states :pending) (app.schema/read-field router :data)
                              :done $ comp-done-tasks (>> states :done) (app.schema/read-field router :data)
                          comp-login $ >> states :login
                    comp-messages
                      ->
                        get-in store $ [] :session :messages
                        .unwrap-or $ {}
                        unsafe-coerce $ :: 'Map 'String 'Dynamic
                      {}
                      fn (info d!) (d! :session/remove-message info)
                    comp-status-color $ app.schema/read-field store :color
                    if dev? $ comp-inspect |Store store style-debugger
                    if dev? $ comp-reel (app.schema/read-field store :reel-length)
                      {} $ :bottom 24
                (:: :initial) (comp-offline :initial)
                (:: :offline) (comp-offline :offline)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-offline $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-offline (state)
              div
                {}
                  :class-name $ str-spaced css/global css/fullscreen css/column-dispersive
                  :style $ {}
                    :background-color $ :theme config/site
                div $ {}
                  :style $ {} (:height 0)
                div $ {}
                  :style $ {}
                    :background-image $ str "|url(" (:icon config/site) "|)"
                    :width 128
                    :height 128
                    :background-size :contain
                div
                  {}
                    :style $ {} (:cursor :pointer) (:line-height |32px)
                    :on-click $ fn (e d!) (d! :effect/connect nil)
                  <>
                    if (= state :offline) "|Socket broken, click to retry" |Loading...
                    {} (:font-family ui/font-fancy) (:font-size 24)
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-status-color (color)
              div $ {} (:class-name css-status-color)
                :style $ {} (:background-color color)
          :examples $ []
          :schema $ :: 'Dynamic
        'css-status-color $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-status-color $ {}
              |$0 $ {} (:height 16) (:width 16) (:position :absolute) (:border-radius |8px) (:top 8) (:right 8) (:transition-duration |300ms)
          :examples $ []
          :schema $ :: 'Dynamic
        'style-body $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def style-body $ {} (:padding "|8px 16px")
          :examples $ []
          :schema $ :: 'Dynamic
        'style-debugger $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def style-debugger $ {} (:bottom 8) (:right 8) (:max-width |100%) (:margin 0)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
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
        'comp-done-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-done-task (states task editing?)
              let
                  remove-plugin $ use-confirm (>> states :remove)
                    {}
                      :style $ {} (:cursor :pointer) (:margin-right 16)
                      :text "|Remove record forever?"
                div
                  {} (:class-name css/row)
                    :style $ {} (:margin "|8px 0") (:align-items :center)
                  span $ {} (:class-name css-done-content)
                    :inner-text $ app.schema/read-field task :text
                  when editing? $ comp-icon :trash
                    &{} :font-size 14 :color (hsl 0 0 50) :cursor :pointer
                    fn (e d!)
                      .show remove-plugin d! $ fn ()
                        d! :task/remove-done $ app.schema/read-field task :id
                  when editing? $ div
                    {}
                      :style $ {} (:cursor :pointer)
                      :on-click $ fn (e d!)
                        d! :task/move-task $ {}
                          :id $ app.schema/read-field task :id
                          :from :done-tasks
                          :to :working-tasks
                    comp-i :repeat 14 $ hsl 0 0 50
                  .render remove-plugin
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-done-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-done-tasks (states router-data)
              let
                  cursor $ app.schema/read-field states :cursor
                  state $ or (app.schema/read-field states :data)
                    {} $ :editing? false
                  day-cursor $ option:unwrap-or (get router-data :cursor) |
                  months $ option:unwrap-or (get router-data :months) ([])
                  tasks $ option:unwrap-or (get router-data :tasks) ({})
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
                            :style $ merge
                              unsafe-coerce
                                {} (:cursor :pointer) (:padding "|0 8px")
                                :: 'Map 'Tag 'Dynamic
                              unsafe-coerce
                                when (= day-cursor year-month)
                                  {} $ :background-color (hsl 0 0 94)
                                :: 'Map 'Tag 'Dynamic
                            :class-name |item
                            :on-click $ fn (e d!)
                              d! :router/change $ {} (:name :done) (:data year-month)
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
                      if (app.schema/read-field state :editing?)
                        a $ {} (:class-name css/link) (:inner-text |Done)
                          :on-click $ fn (e d!)
                            d! cursor $ update state :editing? not
                        a $ {} (:class-name css/link) (:inner-text |Edit)
                          :on-click $ fn (e d!)
                            d! cursor $ update state :editing? not
                    let
                        tasks-by-time $ -> tasks (.to-list) (map last)
                          group-by $ fn (task)
                            .format
                              dayjs $ app.schema/read-field
                                option:unwrap $ unsafe-coerce task (:: 'Option 'Dynamic)
                                , :time
                              , |DD
                      list-> ({})
                        -> tasks-by-time (.to-list)
                          .sort $ fn (pair-a pair-b)
                            &compare
                                first pair-b
                                , .unwrap
                              (first pair-a) .unwrap
                          .map-pair $ fn (date tasks)
                            [] date $ div ({})
                              div
                                {} (:class-name css/font-fancy)
                                  :style $ {} (:font-size 16) (:font-weight 100) (:margin-top 16) (:line-height |24px)
                                <> date
                              list-> ({})
                                -> tasks
                                  .sort-by $ fn (task)
                                    negate $ assert-type (app.schema/read-field task :time) 'Number
                                  map $ fn (task)
                                    [] (app.schema/read-field task :id)
                                      comp-done-task
                                        >> states $ app.schema/read-field task :id
                                        , task $ app.schema/read-field state :editing?
                  ; if
                    pos? $ count router-data
                    div ({})
                      button
                        {} (:class-name css/button)
                          :on-click $ fn (e d!) (d! :task/clear-done nil)
                        <> |Clear
                  =< nil 240
          :examples $ []
          :schema $ :: 'Dynamic
        'css-done-content $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-done-content $ {}
              |$0 $ {}
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
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.done-tasks $ :require
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
        'comp-home $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-home (states tasks)
              let
                  state $ or (app.schema/read-field states :data)
                    {} $ :draft |
                  create-plugin $ use-prompt (>> states :create)
                    {} (:text "|New task:") (:initial |)
                div
                  {} (:class-name css/flex)
                    :style $ {} (:padding 16) (:overflow :auto)
                  div ({})
                    <>
                      str "|Working(" (count tasks) "|)"
                      {} (:font-size 24) (:font-family ui/font-fancy) (:font-weight 100)
                    =< 16 nil
                    comp-icon :plus
                      &{} :font-size 14 :color (hsl 0 0 50) :cursor :ponter
                      fn (e d!)
                        .show create-plugin d! $ fn (result)
                          when
                            not $ .blank? result
                            d! :task/create result
                  if (empty? tasks)
                    div
                      {} $ :class-name css/row-parted
                      button $ {} (:class-name css/button) (:inner-text |Add)
                        :on-click $ fn (e d!)
                          .show create-plugin d! $ fn (result)
                            when
                              not $ .blank? result
                              d! :task/create result
                  list->
                    {} $ :style
                      {} (:position :relative)
                        :height $ + 8
                          * 48 $ count tasks
                    -> tasks (.to-list)
                      .sort-by $ fn (pair)
                        negate $ assert-type
                          app.schema/read-field
                              last pair
                              , .unwrap
                            , :time
                          , 'Number
                      .map-indexed $ fn (idx pair)
                        let
                            task $
                              last pair
                              , .unwrap
                          [] (app.schema/read-field task :id)
                            comp-task
                              >> states $ app.schema/read-field task :id
                              , task idx
                      .sort-by first
                  .render create-plugin
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-task (states task idx)
              let
                  cursor $ app.schema/read-field states :cursor
                  state $ or (app.schema/read-field states :data)
                    {} (:show-menu? false) (:show-editor? false)
                      :task-draft $ app.schema/read-field task :text
                  remove-plugin $ use-confirm (>> states :remove)
                    {} $ :text "|Sure to remove?"
                  update-plugin $ use-prompt (>> states :update)
                    {} (:text "|Edit task:")
                      :initial $ app.schema/read-field task :text
                      :button-text |Edit
                div
                  {}
                    :class-name $ str-spaced css/row css-item
                    :style $ merge
                      unsafe-coerce
                        {} $ :top
                          + 8 $ * idx 48
                        :: 'Map 'Tag 'Dynamic
                      unsafe-coerce
                        when
                          or (app.schema/read-field state :show-menu?) (app.schema/read-field state :show-editor?)
                          {} $ :outline
                            str "|2px solid " $ hsl 240 80 86
                        :: 'Map 'Tag 'Dynamic
                    :on-click $ fn (e d!)
                      d! cursor $ assoc state :show-menu? true
                    :draggable true
                    :on $ {}
                      :dragend $ fn (e d!)
                        d! :task/touch-working $ app.schema/read-field task :id
                  <> (app.schema/read-field task :text)
                    merge ui/expand $ {} (:text-overflow :ellipsis) (:overflow :hidden) (:max-width |100%)
                  =< 32 nil
                  comp-modal-menu
                    {} (:title |Operations)
                      :style $ {} (:line-height |24px)
                      :items $ &list:concat
                        if
                          .!test http-pattern $ app.schema/read-field task :text
                          [] $ {} (:value :open) (:display "|Open Link")
                          , nil
                        []
                          {} (:value :finish) (:display |Finish)
                          {} (:value :edit) (:display |Edit)
                          {} (:value :postpone) (:display |Postpone)
                          {} (:value :touch) (:display |Up)
                          {} (:value :remove) (:display |Remove)
                    app.schema/read-field state :show-menu?
                    fn (d!)
                      d! cursor $ assoc state :show-menu? false
                    fn (item d!)
                      let
                          new-state $ assoc state :show-menu? false
                        case-default (nth item 1) nil
                          :finish $ do
                            d! :task/move-task $ {}
                              :id $ app.schema/read-field task :id
                              :from :working-tasks
                              :to :done-tasks
                            d! cursor new-state
                          :postpone $ do
                            d! :task/move-task $ {}
                              :id $ app.schema/read-field task :id
                              :from :working-tasks
                              :to :pending-tasks
                            d! cursor new-state
                          :edit $ do (d! cursor new-state)
                            .show update-plugin d! $ fn (text)
                              when (some? text)
                                d! :task/update-text $ {}
                                  :id $ app.schema/read-field task :id
                                  :text text
                                  :group :working-tasks
                                  :time $ js/Date.now
                          :remove $ do (d! cursor new-state)
                            .show remove-plugin d! $ fn ()
                              d! :task/remove-working $ app.schema/read-field task :id
                          :touch $ do
                            d! :task/touch-working $ app.schema/read-field task :id
                            d! cursor new-state
                          :open $ do
                            js/window.open $ unsafe-coerce
                              .-0 $ unsafe-coerce
                                .!match (app.schema/read-field task :text) url-pattern
                                , 'JsObject
                              , 'String
                            d! cursor new-state
                          nil $ d! cursor new-state
                  .render remove-plugin
                  .render update-plugin
          :examples $ []
          :schema $ :: 'Dynamic
        'css-item $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-item $ {}
              |$0 $ {} (:line-height |32px) (:margin "|8px 0px") (:position :absolute) (:width |100%) (:transition-duration |300ms) (:white-space :nowrap) (:line-height |32px) (:height |32px) (:max-width 480)
                :background-color $ hsl 0 0 94
                :padding "|0 8px"
          :examples $ []
          :schema $ :: 'Dynamic
        'http-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def http-pattern $ new js/RegExp |https?://
          :examples $ []
          :schema $ :: 'Dynamic
        'url-pattern $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def url-pattern $ new js/RegExp |https?://\S+
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.home $ :require
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
          :code $ quote
            defcomp comp-login (states)
              let
                  cursor $ app.schema/read-field states :cursor
                  state $ or (app.schema/read-field states :data) initial-state
                div
                  {} $ :class-name (str-spaced css/flex css/center)
                  div ({})
                    comp-md-block "|Woodenlist is an online Todolist built by [@jiyinyiyong](https://github.com/jiyinyiyong) based on [Cumulo](http://cumulo.org/) solution.\nFind out more on [GitHub](https://github.com/TopixIM/woodenlist).\n\nCaution! It's an toy app. Don't trust my database!" $ {} (:css "|.md-p {margin: 20px 0; line-height: 1.6em;}")
                  =< nil 40
                  div ({})
                    div ({})
                      div ({})
                        input $ {} (:placeholder |Username) (:class-name css/input)
                          :value $ app.schema/read-field state :username
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :username (app.schema/read-field e :value)
                      =< nil 8
                      div ({})
                        input $ {} (:placeholder |Password) (:class-name css/input)
                          :value $ app.schema/read-field state :password
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :password (app.schema/read-field e :value)
                    =< nil 8
                    div
                      {} $ :style
                        {} $ :text-align :right
                      span $ {} (:inner-text "|Sign up") (:class-name css/link)
                        :on-click $ on-submit (app.schema/read-field state :username) (app.schema/read-field state :password) true
                      =< 8 nil
                      span $ {} (:inner-text "|Log in") (:class-name css/link)
                        :on-click $ on-submit (app.schema/read-field state :username) (app.schema/read-field state :password) false
          :examples $ []
          :schema $ :: 'Dynamic
        'initial-state $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def initial-state $ {} (:username |) (:password |)
          :examples $ []
          :schema $ :: 'Dynamic
        'on-submit $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-submit (username password signup?)
              fn (e dispatch!)
                dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
                js/localStorage.setItem (:storage-key config/site)
                  format-cirru-edn $ [] username password
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.login $ :require
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
          :code $ quote
            defcomp comp-pending (states router-data)
              div
                {} (:class-name css/flex)
                  :style $ {} (:padding 16) (:overflow :auto)
                div
                  {} (:class-name css/font-fancy)
                    :style $ {} (:font-size 24) (:font-weight 100)
                  <> $ str "|Pending Tasks(" (count router-data) "|)"
                list->
                  {} $ :style
                    {} $ :width |100%
                  ->
                    unsafe-coerce router-data $ :: 'Map 'Dynamic 'Dynamic
                    .to-list
                    .sort $ fn (pair-a pair-b)
                      &compare
                        assert-type
                          app.schema/read-field
                              last pair-b
                              , .unwrap
                            , :time
                          , 'Number
                        assert-type
                          app.schema/read-field
                              last pair-a
                              , .unwrap
                            , :time
                          , 'Number
                    .map-pair $ fn (k task)
                      [] k $ comp-task
                        >> states $ app.schema/read-field task :id
                        , task
          :examples $ []
          :schema $ :: 'Dynamic
        'comp-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defcomp comp-task (states task)
              let
                  update-plugin $ use-prompt (>> states :update)
                    {} (:text "|Update task:")
                      :initial $ or (app.schema/read-field task :text) |
                div
                  {} (:class-name css/row)
                    :style $ {} (:margin "|8px 0") (:align-items :center) (:max-width 480) (:width |100%)
                  div
                    {} (:class-name css/flex)
                      :style $ {} (:padding "|0 8px")
                        :background-color $ hsl 0 0 96
                        :overflow :auto
                    span $ {}
                      :inner-text $ app.schema/read-field task :text
                      :style $ {} (:display :block) (:height 32) (:line-height |32px) (:overflow :auto) (:white-space :nowrap)
                      :on-click $ fn (e d!)
                        .show update-plugin d! $ fn (result)
                          d! :task/update-text $ {}
                            :id $ app.schema/read-field task :id
                            :text result
                            :group :pending-tasks
                            :time $ js/Date.now
                  =< 16 nil
                  div
                    {}
                      :style $ {} (:cursor :pointer)
                      :on-click $ fn (e d!)
                        d! :task/move-task $ {}
                          :id $ app.schema/read-field task :id
                          :from :pending-tasks
                          :to :working-tasks
                    comp-i :corner-up-left 14 $ hsl 0 0 50
                  ; div
                    {}
                      :style $ {} (:cursor :pointer)
                      :on-click $ action-> :task/move-task
                        {}
                          :id $ :id task
                          :from :pending-tasks
                          :to :done-tasks
                    comp-i :check 14 $ hsl 0 0 50
                  .render update-plugin
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.pending $ :require
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
          :code $ quote
            defcomp comp-profile (user members)
              div
                {} (:class-name css/flex)
                  :style $ {} (:padding 16)
                div $ {} (:class-name css/font-fancy)
                  :style $ {} (:font-size 32) (:font-weight 100)
              <> $ str "|Hello! " (app.schema/read-field user :name) (=< nil 16)
                div
                  {} $ :class-name css/row
                  <> |Members:
                  =< 8 nil
                  list->
                    {} $ :class-name css/row
                    -> members (.to-list)
                      .map-pair $ fn (k username)
                        [] k $ div
                          {} $ :class-name css-member-label
                          <> username
                =< nil 48
                div ({})
                  button
                    {} (:class-name css/button)
                      :on-click $ fn (e d!)
                        js/location.replace $ str js/location.origin |?time= (js/Date.now)
                    <> |Refresh
                  =< 8 nil
                  button
                    {} (:class-name css/button)
                      :style $ {} (:color :red) (:border-color :red)
                      :on-click $ fn (e dispatch! mutate!) (dispatch! :user/log-out nil)
                        .removeItem js/localStorage $ :storage-key config/site
                    <> "|Log out"
          :examples $ []
          :schema $ :: 'Dynamic
        'css-member-label $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-member-label $ {}
              |$0 $ {} (:padding "|0 8px")
                :border $ str "|1px solid " (hsl 0 0 80)
                :border-radius |16px
                :margin "|0 4px"
          :examples $ []
          :schema $ :: 'Dynamic
        'style-trigger $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def style-trigger $ {} (:font-size 14) (:cursor :pointer)
              :background-color $ hsl 200 100 84
              :color :white
              :padding "|0 8px"
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.profile $ :require
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
          :code $ quote
            defcomp comp-sidebar (router logged-in? numbers)
              div
                {} $ :style
                  {} (:flex-shrink 0)
                    :border-bottom $ str "|1px solid " (hsl 0 0 90)
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
                          d! :router/change $ {} (:name :home)
                        :style $ if
                          = :home $ app.schema/read-field router :name
                          {} $ :color :white
                      div
                        {} $ :class-name css-icon
                        comp-i :home 14 |white
                      <>
                        str $ app.schema/read-field numbers :working
                        , style-count
                    div
                      {}
                        :on-click $ fn (e d!)
                          d! :router/change $ {} (:name :pending)
                        :class-name $ str-spaced css/row css-entry
                        :style $ if
                          = :pending $ app.schema/read-field router :name
                          {} $ :color :white
                      div
                        {} $ :class-name css-icon
                        comp-i :clock 14 |white
                      <>
                        str $ app.schema/read-field numbers :pending
                        , style-count
                    div
                      {}
                        :on-click $ fn (e d!)
                          d! :router/change $ {} (:name :done)
                        :class-name $ str-spaced css/row css-entry
                        :style $ if
                          = :done $ app.schema/read-field router :name
                          {} $ :color :white
                      div
                        {} $ :class-name css-icon
                        comp-i :package 14 |white
                      <>
                        str $ app.schema/read-field numbers :done
                        , style-count
                  div
                    {} $ :class-name css/column
                    div
                      {}
                        :class-name $ str-spaced css/row css-entry
                        :style $ if
                          = :profile $ app.schema/read-field router :name
                          {} $ :color :white
                        :on-click $ fn (e d!)
                          d! :router/change $ {} (:name :profile)
                      div
                        {} $ :class-name css-icon
                        if logged-in? (comp-i :user 14 |white) (comp-i :log-in 14 |white)
                      <>
                        str $ app.schema/read-field numbers :sessions
                        , style-count
          :examples $ []
          :schema $ :: 'Dynamic
        'css-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-entry $ {}
              |$0 $ {} (:cursor :pointer)
                :color $ hsl 0 0 80
                :align-items :center
                :height 40
                :margin-right 24
          :examples $ []
          :schema $ :: 'Dynamic
        'css-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defstyle css-icon $ {}
              |$0 $ merge
                unsafe-coerce ui/center $ :: 'Map 'Tag 'Dynamic
                {} $ :width 24
          :examples $ []
          :schema $ :: 'Dynamic
        'style-count $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def style-count $ merge
              unsafe-coerce ui/center $ :: 'Map 'Tag 'Dynamic
              {} (:min-width 20) (:font-size 14)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.comp.sidebar $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.css :refer $ defstyle
            respo.core :refer $ defcomp <> span div
            feather.core :refer $ comp-i
            app.config :as config
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def dev? $ = |dev
              option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Dynamic
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:port 11000) (:title |Woodenlist) (:icon |http://cdn.tiye.me/logo/woodenlist.png) (:server-folder |tiye.me:servers/woodenlist) (:theme |#4DB386) (:storage-key |woodenlist-storage) (:storage-file |woodenlist.cirru)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.config)
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'database $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def database $ {}
              :sessions $ {}
              :users $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'notification $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def notification $ {} (:id nil) (:kind nil) (:text nil)
          :examples $ []
          :schema $ :: 'Dynamic
        'read-field $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn read-field (value field)
              if (struct? value) (&struct:get value field) (&map:get value field)
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Dynamic)
              :args $ [] 'Dynamic 'Tag
        'router $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def router $ {} (:name nil) (:title nil)
              :data $ {}
              :router nil
          :examples $ []
          :schema $ :: 'Dynamic
        'session $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def session $ {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ {} (:name :home) (:data nil)
              :messages $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        'task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def task $ {} (:id nil) (:text |) (:mode nil) (:time 0)
          :examples $ []
          :schema $ :: 'Dynamic
        'user $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def user $ {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
              :working-tasks $ {}
              :pending-tasks $ {}
              :done-tasks $ {}
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.schema)
    'app.server $ %{} 'FileEntry
      :defs $ {}
        '*client-caches $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *client-caches $ {}
          :examples $ []
          :schema $ :: 'Dynamic
        '*initial-db $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *initial-db $ if
              path-exists? $ w-log storage-file
              do (println "|Found local EDN data")
                merge schema/database $ parse-cirru-edn (read-file storage-file)
              do (println "|Found no data") schema/database
          :examples $ []
          :schema $ :: 'Dynamic
        '*reader-reel $ %{} 'CodeEntry (:doc |)
          :code $ quote (defatom *reader-reel @*reel)
          :examples $ []
          :schema $ :: 'Dynamic
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ merge reel-schema
              {} (:base @*initial-db) (:db @*initial-db)
          :examples $ []
          :schema $ :: 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op sid)
              let
                  op-id $ generate-id!
                  op-time $ -> (get-time!) (.timestamp)
                if config/dev? $ println |Dispatch! (str op) sid
                tag-match op
                  (:effect/persist) (persist-db!)
                  (:effect/ping)
                    wss-send! sid $ format-cirru-edn (:: :effect/pong)
                  _ $ reset! *reel (reel-reducer @*reel updater op sid op-id op-time config/dev?)
          :examples $ []
          :schema $ :: 'Dynamic
        'get-backup-path! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn get-backup-path! () $ let
                now $ extract-time (get-time!)
              join-path calcit-dirname |backups
                str $ :month now
                str (:day now) |-snapshot.cirru
          :examples $ []
          :schema $ :: 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "|Running mode:" $ if config/dev? |dev |release
              let
                  port $ parse-float
                    option:unwrap-or (get-env |port)
                      str $ :port config/site
                run-server! port
                println $ str "|Server started on port:" port
              do (; "|init it before doing multi-threading") (identity @*reader-reel)
              set-interval 200 $ fn () (render-loop!)
              set-interval 600000 $ fn () (persist-db!)
              on-control-c on-exit!
          :examples $ []
          :schema $ :: 'Dynamic
        'on-exit! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn on-exit! () (persist-db!) (; println "|exit code is...") (quit! 0)
          :examples $ []
          :schema $ :: 'Dynamic
        'persist-db! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn persist-db! () $ let
                file-content $ format-cirru-edn
                  assoc (:db @*reel) :sessions $ {}
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
          :examples $ []
          :schema $ :: 'Dynamic
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () (println "|Code updated..")
              if (not config/dev?) (raise "|reloading only happens in dev mode")
              clear-twig-caches!
              reset! *reel $ refresh-reel @*reel @*initial-db updater
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        'render-loop! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn render-loop! () $ when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
          :examples $ []
          :schema $ :: 'Dynamic
        'run-server! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-server! (port)
              wss-serve! (&{} :port port)
                fn (data)
                  tag-match data
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
          :schema $ :: 'Dynamic
        'storage-file $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def storage-file $ if (empty? calcit-dirname)
              str calcit-dirname $ :storage-file config/site
              str calcit-dirname |/ $ :storage-file config/site
          :examples $ []
          :schema $ :: 'Dynamic
        'sync-clients! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn sync-clients! (reel)
              wss-each! $ fn (sid)
                let
                    db $ :db reel
                    records $ :records reel
                    session $ get-in db ([] :sessions sid)
                    old-store $ or (get @*client-caches sid) nil
                    new-store $ twig-container db session records
                    changes $ diff-twig old-store new-store
                      {} $ :key :id
                  ; when config/dev? $ println "|Changes for" sid |: changes (count records)
                  if
                    not= changes $ []
                    do
                      wss-send! sid $ format-cirru-edn (:: :patch changes)
                      swap! *client-caches assoc sid new-store
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.server $ :require (app.schema :as schema)
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
          :code $ quote
            def button $ merge ui/button
              {} $ :border-radius |16px
          :examples $ []
          :schema $ :: 'Dynamic
        'link $ %{} 'CodeEntry (:doc |)
          :code $ quote
            def link $ {} (:text-decoration :underline) (:cursor :pointer)
              :color $ hsl 240 80 80
              :font-family ui/font-fancy
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.style $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
    'app.twig.container $ %{} 'FileEntry
      :defs $ {}
        'twig-container $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-container (db session records)
              let
                  logged-in? $ some? (:user-id session)
                  router $ :router session
                  base-data $ {} (:logged-in? logged-in?) (:session session)
                    :reel-length $ count records
                merge base-data $ if logged-in?
                  let
                      user $ get-in db
                        [] :users $ :user-id session
                    {}
                      :user $ twig-user user
                      :router $ assoc router :data
                        case-default (:name router) ({})
                          :home $ :working-tasks user
                          :pending $ :pending-tasks user
                          :profile $ twig-members (:sessions db) (:users db)
                          :done $ twig-done-tasks (:done-tasks user) (:data router)
                      :numbers $ {}
                        :sessions $ count (:sessions db)
                        :working $ count (:working-tasks user)
                        :pending $ count (:pending-tasks user)
                        :done $ count (:done-tasks user)
                      :color $ rand-hex-color!
                  {}
          :examples $ []
          :schema $ :: 'Dynamic
        'twig-done-tasks $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-done-tasks (done-tasks year-month)
              let
                  year-months $ -> done-tasks
                    &map:map-list $ fn (pair)
                      -> pair (&list:nth 1) (&map:get :time) (wrap-format-time |%Y-%m)
                    distinct
                  cursor $ or year-month (&list:max year-months)
                  reading-tasks $ -> done-tasks
                    &map:filter-kv $ fn (k task)
                      &= cursor $ -> (&map:get task :time) (wrap-format-time |%Y-%m)
                {} (:months year-months) (:cursor cursor) (:tasks reading-tasks)
          :examples $ []
          :schema $ :: 'Dynamic
        'twig-members $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-members (sessions users)
              -> sessions $ map-kv
                fn (k session)
                  [] k $ get-in users
                    [] (:user-id session) :name
          :examples $ []
          :schema $ :: 'Dynamic
        'wrap-format-time $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn wrap-format-time (stamp format)
              format-time (:: Date stamp) format
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.twig.container $ :require
            [] app.twig.user :refer $ [] twig-user
            calcit.std.rand :refer $ rand-hex-color!
            calcit.std.date :refer $ extract-time format-time Date
    'app.twig.user $ %{} 'FileEntry
      :defs $ {}
        'twig-user $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn twig-user (user)
              -> user (dissoc :password) (dissoc :done-tasks) (dissoc :working-tasks) (dissoc :pending-tasks)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.twig.user $ :require
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn updater (db op sid op-id op-time)
              tag-match op
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
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater $ :require ([] app.updater.session :as session) ([] app.updater.user :as user) ([] app.updater.router :as router) ([] app.updater.task :as task)
    'app.updater.router $ %{} 'FileEntry
      :defs $ {}
        'change $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn change (db op-data session-id op-id op-time)
              assoc-in db ([] :sessions session-id :router) op-data
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns app.updater.router)
    'app.updater.session $ %{} 'FileEntry
      :defs $ {}
        'connect $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn connect (db session-id op-id op-time)
              assoc-in db ([] :sessions session-id)
                merge schema/session $ {} (:id session-id)
          :examples $ []
          :schema $ :: 'Dynamic
        'disconnect $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn disconnect (db session-id op-id op-time)
              update db :sessions $ fn (session) (dissoc session session-id)
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-message $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-message (db op-data sid op-id op-time)
              update-in db ([] :sessions sid :messages)
                fn (messages)
                  dissoc messages $ :id op-data
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.session $ :require ([] app.schema :as schema)
    'app.updater.task $ %{} 'FileEntry
      :defs $ {}
        'clear-done $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn clear-done (db op-data sid op-id op-time)
              let
                  user-id $ get-in db ([] :sessions sid :user-id)
                assoc-in db ([] :users user-id :done-tasks) ({})
          :examples $ []
          :schema $ :: 'Dynamic
        'create $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn create (db op-data sid op-id op-time)
              let
                  user-id $ get-in db ([] :sessions sid :user-id)
                assoc-in db ([] :users user-id :working-tasks op-id)
                  {} (:id op-id) (:text op-data) (:mode :working) (:time op-time)
          :examples $ []
          :schema $ :: 'Dynamic
        'move-task $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn move-task (db op-data sid op-id op-time)
              let
                  task-id $ :id op-data
                  user-id $ get-in db ([] :sessions sid :user-id)
                if
                  some? $ get-in db
                    [] :users user-id (:from op-data) task-id
                  update-in db ([] :users user-id)
                    fn (user)
                      -> user
                        assoc-in
                          [] (:to op-data) task-id
                          assoc
                            get-in user $ [] (:from op-data) task-id
                            , :time op-time
                        update (:from op-data)
                          fn (tasks) (dissoc tasks task-id)
                  assoc-in db ([] :sessions sid :messages op-id)
                    {} (:id op-id) (:text "|No such task")
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-done $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-done (db op-data sid op-id op-time)
              let
                  user-id $ get-in db ([] :sessions sid :user-id)
                dissoc-in db $ [] :users user-id :done-tasks op-data
          :examples $ []
          :schema $ :: 'Dynamic
        'remove-working $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn remove-working (db op-data sid op-id op-time)
              let
                  user-id $ get-in db ([] :sessions sid :user-id)
                dissoc-in db $ [] :users user-id :working-tasks op-data
          :examples $ []
          :schema $ :: 'Dynamic
        'touch-working $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn touch-working (db op-data sid op-id op-time)
              let
                  user-id $ get-in db ([] :sessions sid :user-id)
                update-in db ([] :users user-id :working-tasks)
                  fn (tasks)
                    if
                      some? $ get tasks op-data
                      assoc-in tasks ([] op-data :time) op-time
                      , tasks
          :examples $ []
          :schema $ :: 'Dynamic
        'update-text $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn update-text (db op-data sid op-id op-time)
              let
                  user-id $ get-in db ([] :sessions sid :user-id)
                update-in db
                  [] :users user-id (:group op-data) (:id op-data)
                  fn (task)
                    assoc task :text (:text op-data) :time $ :time op-data
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.task $ :require
            [] medley.core :refer $ [] dissoc-in
    'app.updater.user $ %{} 'FileEntry
      :defs $ {}
        'log-in $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn log-in (db op-data sid op-id op-time)
              let-sugar
                    [] username password
                    , op-data
                  maybe-user $ -> (:users db) (vals) (.to-list)
                    find $ fn (user)
                      and $ = username (:name user)
                update-in db ([] :sessions sid)
                  fn (session)
                    if (some? maybe-user)
                      if
                        = (md5 password) (:password maybe-user)
                        assoc session :user-id $ :id maybe-user
                        update session :messages $ fn (messages)
                          assoc messages op-id $ {} (:id op-id)
                            :text $ str "|Wrong password for " username
                      update session :messages $ fn (messages)
                        assoc messages op-id $ {} (:id op-id)
                          :text $ str "|No user named: " username
          :examples $ []
          :schema $ :: 'Dynamic
        'log-out $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn log-out (db session-id op-id op-time)
              assoc-in db ([] :sessions session-id :user-id) nil
          :examples $ []
          :schema $ :: 'Dynamic
        'sign-up $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn sign-up (db op-data sid op-id op-time)
              let-sugar
                    [] username password
                    , op-data
                  maybe-user $ find
                    vals $ :users db
                    fn (user)
                      = username $ :name user
                if (some? maybe-user)
                  update-in db ([] :sessions sid :messages)
                    fn (messages)
                      assoc messages op-id $ {} (:id op-id)
                        :text $ str "|Name is taken: " username
                  -> db
                    assoc-in ([] :sessions sid :user-id) op-id
                    assoc-in ([] :users op-id)
                      {} (:id op-id) (:name username) (:nickname username)
                        :password $ md5 password
                        :avatar nil
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns app.updater.user $ :require
            calcit.std.hash :refer $ md5
            [] app.schema :as schema
