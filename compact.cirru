
{} (:package |app)
  :configs $ {} (:init-fn |app.client/main!) (:reload-fn |app.client/reload!) (:version nil)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |respo-feather.calcit/ |alerts.calcit/ |respo-markdown.calcit/
  :entries $ {}
    :server $ {} (:init-fn |app.server/main!) (:port 6001) (:reload-fn |app.server/reload!) (:storage-key |calcit.cirru)
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit-wss/ |calcit.std/
  :files $ {}
    |app.client $ %{} :FileEntry
      :defs $ {}
        |*states $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *states $ {}
              :states $ {}
                :cursor $ []
        |*store $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *store $ :: :initial
        |connect! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn connect! () $ let
                url-obj $ url-parse js/location.href true
                host $ either (-> url-obj .-query .-host) js/location.hostname
                port $ either (-> url-obj .-query .-port) (:port config/site)
              ws-connect!
                if config/dev? (str "\"ws://" host "\":" port) "\"wss://wood.topix.im/ws/"
                {}
                  :on-open $ fn (event) (simulate-login!)
                  :on-close $ fn (event)
                    reset! *store $ :: :offline
                    js/console.error "\"Lost connection!"
                  :on-data on-server-data
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= (first op) :states
                js/console.log "\"Dispatch" op
              tag-match op
                  :states cursor s
                  reset! *states $ update-states @*states cursor s
                (:effect/connect) (connect!)
                _ $ ws-send! op
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
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
              println "\"App started!"
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector "\".app"
        |on-server-data $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-server-data (data)
              tag-match data
                  :patch changes
                  do
                    when config/dev? $ js/console.log "\"Changes" changes
                    reset! *store $ patch-twig @*store changes
                (:effect/pong) :ok
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if
              or (some? client-errors) (some? server-errors)
              hud! "\"error" $ str client-errors &newline server-errors
              do (hud! "\"inactive" nil) (remove-watch *store :changes) (remove-watch *states :changes) (clear-cache!) (render-app!)
                add-watch *store :changes $ fn (store prev) (render-app!)
                add-watch *states :changes $ fn (states prev) (render-app!)
                println "\"Code updated."
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target
              comp-container (:states @*states) @*store
              , dispatch!
        |simulate-login! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn simulate-login! () $ let
                raw $ js/localStorage.getItem (:storage-key config/site)
              if (some? raw)
                do (println "\"Found storage.")
                  dispatch! $ :: :user/log-in (parse-cirru-edn raw)
                do $ println "\"Found no storage."
      :ns $ %{} :CodeEntry (:doc |)
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
            "\"url-parse" :default url-parse
            "\"bottom-tip" :default hud!
            "\"./calcit.build-errors" :default client-errors
            "\"../js-out/calcit.build-errors" :default server-errors
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (states store)
              case-default store
                let
                    state $ :data states
                    session $ :session store
                  div
                    {} $ :class-name (str-spaced css/global css/fullscreen css/column)
                    comp-sidebar (:router store) (:logged-in? store) (:numbers store)
                    div
                      {} (:class-name css/flex)
                        :style $ {} (:overflow :auto) (:height "\"100%")
                      div
                        {} $ :style
                          {} (:margin "\"0 auto") (:max-width 800) (:height "\"100%") (:overflow :auto)
                        if (:logged-in? store)
                          let
                              router $ :router store
                            case-default (:name router) (<> router nil)
                              :profile $ comp-profile (:user store) (:data router)
                              :home $ comp-home (>> states :home) (:data router)
                              :pending $ comp-pending (>> states :pending) (:data router)
                              :done $ comp-done-tasks (>> states :done) (:data router)
                          comp-login $ >> states :login
                    comp-messages
                      get-in store $ [] :session :messages
                      {}
                      fn (info d!) (d! :session/remove-message info)
                    comp-status-color $ :color store
                    if dev? $ comp-inspect |Store store style-debugger
                    if dev? $ comp-reel (:reel-length store)
                      {} $ :bottom 24
                (:: :initial) (comp-offline :initial)
                (:: :offline) (comp-offline :offline)
        |comp-offline $ %{} :CodeEntry (:doc |)
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
                    :background-image $ str "\"url(" (:icon config/site) "\")"
                    :width 128
                    :height 128
                    :background-size :contain
                div
                  {}
                    :style $ {} (:cursor :pointer) (:line-height "\"32px")
                    :on-click $ fn (e d!) (d! :effect/connect nil)
                  <>
                    if (= state :offline) "\"Socket broken, click to retry" |Loading...
                    {} (:font-family ui/font-fancy) (:font-size 24)
        |comp-status-color $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-status-color (color)
              div $ {} (:class-name css-status-color)
                :style $ {} (:background-color color)
        |css-status-color $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-status-color $ {}
              "\"$0" $ {} (:height 16) (:width 16) (:position :absolute) (:border-radius "\"8px") (:top 8) (:right 8) (:transition-duration "\"300ms")
        |style-body $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-body $ {} (:padding "|8px 16px")
        |style-debugger $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-debugger $ {} (:bottom 8) (:right 8) (:max-width |100%) (:margin 0)
      :ns $ %{} :CodeEntry (:doc |)
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
    |app.comp.done-tasks $ %{} :FileEntry
      :defs $ {}
        |comp-done-task $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-done-task (states task editing?)
              let
                  remove-plugin $ use-confirm (>> states :remove)
                    {}
                      :style $ {} (:cursor :pointer) (:margin-right 16)
                      :text "\"Remove record forever?"
                div
                  {} (:class-name css/row)
                    :style $ {} (:margin "|8px 0") (:align-items :center)
                  span $ {} (:class-name css-done-content)
                    :inner-text $ :text task
                  when editing? $ comp-icon :trash
                    &{} :font-size 14 :color (hsl 0 0 50) :cursor :pointer
                    fn (e d!)
                      .show remove-plugin d! $ fn ()
                        d! :task/remove-done $ :id task
                  when editing? $ div
                    {}
                      :style $ {} (:cursor :pointer)
                      :on-click $ fn (e d!)
                        d! :task/move-task $ {}
                          :id $ :id task
                          :from :done-tasks
                          :to :working-tasks
                    comp-i :repeat 14 $ hsl 0 0 50
                  .render remove-plugin
        |comp-done-tasks $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-done-tasks (states router-data)
              let
                  cursor $ :cursor states
                  state $ or (:data states)
                    {} $ :editing? false
                  day-cursor $ :cursor router-data
                  months $ :months router-data
                  tasks $ :tasks router-data
                div
                  {}
                    :class-name $ str-spaced css/flex css/row
                    :style $ {} (:padding "\"16px 8px") (:overflow :auto) (:height "\"100%")
                  list->
                    {} (:class-name css/font-fancy)
                      :style $ {} (:overflow :auto) (:width 80) (:flex-shrink 0)
                    -> months
                      sort $ fn (x y) (&compare y x)
                      map $ fn (year-month)
                        [] year-month $ div
                          {}
                            :style $ merge
                              {} (:cursor :pointer) (:padding "\"0 8px")
                              when (= day-cursor year-month)
                                {} $ :background-color (hsl 0 0 94)
                            :class-name "\"item"
                            :on-click $ fn (e d!)
                              d! :router/change $ {} (:name :done) (:data year-month)
                          <> year-month
                  =< 8 nil
                  div
                    {}
                      :class-name $ str-spaced css/flex css/column
                      :style $ {} (:overflow :auto) (:height "\"100%") (:padding-bottom 120)
                    div ({})
                      <>
                        str "|Done Tasks(" (count tasks) "\")"
                        {} (:font-size 24) (:font-family ui/font-fancy) (:font-weight 100)
                      =< 16 nil
                      if (:editing? state)
                        a $ {} (:class-name css/link) (:inner-text "\"Done")
                          :on-click $ fn (e d!)
                            d! cursor $ update state :editing? not
                        a $ {} (:class-name css/link) (:inner-text "\"Edit")
                          :on-click $ fn (e d!)
                            d! cursor $ update state :editing? not
                    let
                        tasks-by-time $ -> tasks (.to-list) (map last)
                          group-by $ fn (task)
                            .format
                              dayjs $ :time task
                              , "\"DD"
                      list-> ({})
                        -> tasks-by-time (.to-list)
                          .sort $ fn (pair-a pair-b)
                            &compare (first pair-b) (first pair-a)
                          .map-pair $ fn (date tasks)
                            [] date $ div ({})
                              div
                                {} (:class-name css/font-fancy)
                                  :style $ {} (:font-size 16) (:font-weight 100) (:margin-top 16) (:line-height "\"24px")
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
        |css-done-content $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-done-content $ {}
              "\"$0" $ {}
                :background-color $ hsl 0 0 94
                :padding "|0 8px"
                :height 32
                :line-height "\"32px"
                :margin-right 16
                :display :inline-block
                :overflow :auto
                :white-space :nowrap
      :ns $ %{} :CodeEntry (:doc |)
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
            "\"dayjs" :default dayjs
    |app.comp.home $ %{} :FileEntry
      :defs $ {}
        |comp-home $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-home (states tasks)
              let
                  state $ or (:data states)
                    {} $ :draft |
                  create-plugin $ use-prompt (>> states :create)
                    {} (:text "\"New task:") (:initial "\"")
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
                      {} $ :css css/row-parted
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
                        negate $ :time (last pair)
                      .map-indexed $ fn (idx pair)
                        let
                            task $ last pair
                          [] (:id task)
                            comp-task
                              >> states $ :id task
                              , task idx
                      .sort-by first
                  .render create-plugin
        |comp-task $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-task (states task idx)
              let
                  cursor $ :cursor states
                  state $ or (:data states)
                    {} (:show-menu? false) (:show-editor? false)
                      :task-draft $ :text task
                  remove-plugin $ use-confirm (>> states :remove)
                    {} $ :text "\"Sure to remove?"
                  update-plugin $ use-prompt (>> states :update)
                    {} (:text "\"Edit task:")
                      :initial $ :text task
                      :button-text "\"Edit"
                div
                  {}
                    :class-name $ str-spaced css/row css-item
                    :style $ merge
                      {} $ :top
                        + 8 $ * idx 48
                      when
                        or (:show-menu? state) (:show-editor? state)
                        {} $ :outline
                          str "\"2px solid " $ hsl 240 80 86
                    :on-click $ fn (e d!)
                      d! cursor $ assoc state :show-menu? true
                    :draggable true
                    :on-dragend $ fn (e d!)
                      d! :task/touch-working $ :id task
                  <> (:text task)
                    merge ui/expand $ {} (:text-overflow :ellipsis) (:overflow :hidden) (:max-width "\"100%")
                  =< 32 nil
                  comp-modal-menu
                    {} (:title "\"Operations")
                      :style $ {} (:line-height "\"24px")
                      :items $ &list:concat
                        if
                          .!test http-pattern $ :text task
                          [] $ {} (:value :open) (:display "\"Open Link")
                          , nil
                        []
                          {} (:value :finish) (:display "\"Finish")
                          {} (:value :edit) (:display "\"Edit")
                          {} (:value :postpone) (:display "\"Postpone")
                          {} (:value :touch) (:display "\"Up")
                          {} (:value :remove) (:display "\"Remove")
                    :show-menu? state
                    fn (d!)
                      d! cursor $ assoc state :show-menu? false
                    fn (item d!)
                      let
                          new-state $ assoc state :show-menu? false
                        case-default (nth item 1) nil
                          :finish $ do
                            d! :task/move-task $ {}
                              :id $ :id task
                              :from :working-tasks
                              :to :done-tasks
                            d! cursor new-state
                          :postpone $ do
                            d! :task/move-task $ {}
                              :id $ :id task
                              :from :working-tasks
                              :to :pending-tasks
                            d! cursor new-state
                          :edit $ do (d! cursor new-state)
                            .show update-plugin d! $ fn (text)
                              when (some? text)
                                d! :task/update-text $ {}
                                  :id $ :id task
                                  :text text
                                  :group :working-tasks
                                  :time $ js/Date.now
                          :remove $ do (d! cursor new-state)
                            .show remove-plugin d! $ fn ()
                              d! :task/remove-working $ :id task
                          :touch $ do
                            d! :task/touch-working $ :id task
                            d! cursor new-state
                          :open $ do
                            js/window.open $ .-0
                              .!match (:text task) url-pattern
                            d! cursor new-state
                          nil $ d! cursor new-state
                  .render remove-plugin
                  .render update-plugin
        |css-item $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-item $ {}
              "\"$0" $ {} (:line-height |32px) (:margin "|8px 0px") (:position :absolute) (:width "\"100%") (:transition-duration |300ms) (:white-space :nowrap) (:line-height "\"32px") (:height "\"32px") (:max-width 480)
                :background-color $ hsl 0 0 94
                :padding "\"0 8px"
        |http-pattern $ %{} :CodeEntry (:doc |)
          :code $ quote
            def http-pattern $ new js/RegExp "\"https?://"
        |url-pattern $ %{} :CodeEntry (:doc |)
          :code $ quote
            def url-pattern $ new js/RegExp "\"https?://\\S+"
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.home $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.core :refer $ defcomp <> div span button input >> list-> span input
            respo.comp.inspect :refer $ comp-inspect
            respo.comp.space :refer $ =<
            respo.css :refer $ defstyle
            feather.core :refer $ comp-icon
            respo-alerts.core :refer $ use-confirm use-prompt comp-modal-menu
            cumulo-util.core :refer $ delay!
    |app.comp.login $ %{} :FileEntry
      :defs $ {}
        |comp-login $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-login (states)
              let
                  cursor $ :cursor states
                  state $ or (:data states) initial-state
                div
                  {} $ :class-name (str-spaced css/flex css/center)
                  div ({})
                    comp-md-block "|Woodenlist is an online Todolist built by [@jiyinyiyong](https://github.com/jiyinyiyong) based on [Cumulo](http://cumulo.org/) solution.\nFind out more on [GitHub](https://github.com/TopixIM/woodenlist).\n\nCaution! It's an toy app. Don't trust my database!" $ {} (:css "|.md-p {margin: 20px 0; line-height: 1.6em;}")
                  =< nil 40
                  div ({})
                    div ({})
                      div ({})
                        input $ {} (:placeholder |Username) (:class-name css/input)
                          :value $ :username state
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :username (:value e)
                      =< nil 8
                      div ({})
                        input $ {} (:placeholder |Password) (:class-name css/input)
                          :value $ :password state
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :password (:value e)
                    =< nil 8
                    div
                      {} $ :style
                        {} $ :text-align :right
                      span $ {} (:inner-text "|Sign up") (:class-name css/link)
                        :on-click $ on-submit (:username state) (:password state) true
                      =< 8 nil
                      span $ {} (:inner-text "|Log in") (:class-name css/link)
                        :on-click $ on-submit (:username state) (:password state) false
        |initial-state $ %{} :CodeEntry (:doc |)
          :code $ quote
            def initial-state $ {} (:username |) (:password |)
        |on-submit $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-submit (username password signup?)
              fn (e dispatch!)
                dispatch! (if signup? :user/sign-up :user/log-in) ([] username password)
                js/localStorage.setItem (:storage-key config/site)
                  format-cirru-edn $ [] username password
      :ns $ %{} :CodeEntry (:doc |)
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
    |app.comp.pending $ %{} :FileEntry
      :defs $ {}
        |comp-pending $ %{} :CodeEntry (:doc |)
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
                    {} $ :width "\"100%"
                  -> router-data (.to-list)
                    .sort-by $ fn (pair)
                      negate $ :time (last pair)
                    .map-pair $ fn (k task)
                      [] k $ comp-task
                        >> states $ :id task
                        , task
        |comp-task $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-task (states task)
              let
                  update-plugin $ use-prompt (>> states :update)
                    {} (:text "\"Update task:")
                      :initial $ or (:text task) "\""
                div
                  {} (:class-name css/row)
                    :style $ {} (:margin "|8px 0") (:align-items :center) (:max-width 480) (:width "\"100%")
                  div
                    {} (:class-name css/flex)
                      :style $ {} (:padding "\"0 8px")
                        :background-color $ hsl 0 0 96
                        :overflow :auto
                    span $ {}
                      :inner-text $ :text task
                      :style $ {} (:display :block) (:height 32) (:line-height "\"32px") (:overflow :auto) (:white-space :nowrap)
                      :on-click $ fn (e d!)
                        .show update-plugin d! $ fn (result)
                          d! :task/update-text $ {}
                            :id $ :id task
                            :text result
                            :group :pending-tasks
                            :time $ js/Date.now
                  =< 16 nil
                  div
                    {}
                      :style $ {} (:cursor :pointer)
                      :on-click $ fn (e d!)
                        d! :task/move-task $ {}
                          :id $ :id task
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
      :ns $ %{} :CodeEntry (:doc |)
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
    |app.comp.profile $ %{} :FileEntry
      :defs $ {}
        |comp-profile $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-profile (user members)
              div
                {} (:class-name css/flex)
                  :style $ {} (:padding 16)
                div
                  {} (:class-name css/font-fancy)
                    :style $ {} (:font-size 32) (:font-weight 100)
                  <> $ str "|Hello! " (:name user)
                =< nil 16
                div
                  {} $ :class-name css/row
                  <> "\"Members:"
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
                        js/location.replace $ str js/location.origin "\"?time=" (js/Date.now)
                    <> "\"Refresh"
                  =< 8 nil
                  button
                    {} (:class-name css/button)
                      :style $ {} (:color :red) (:border-color :red)
                      :on-click $ fn (e dispatch! mutate!) (dispatch! :user/log-out nil)
                        .removeItem js/localStorage $ :storage-key config/site
                    <> "\"Log out"
        |css-member-label $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-member-label $ {}
              "\"$0" $ {} (:padding "\"0 8px")
                :border $ str "\"1px solid " (hsl 0 0 80)
                :border-radius "\"16px"
                :margin "\"0 4px"
        |style-trigger $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-trigger $ {} (:font-size 14) (:cursor :pointer)
              :background-color $ hsl 200 100 84
              :color :white
              :padding "|0 8px"
      :ns $ %{} :CodeEntry (:doc |)
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
    |app.comp.sidebar $ %{} :FileEntry
      :defs $ {}
        |comp-sidebar $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-sidebar (router logged-in? numbers)
              div
                {} $ :style
                  {} (:flex-shrink 0)
                    :border-bottom $ str "\"1px solid " (hsl 0 0 90)
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
                          = :home $ :name router
                          {} $ :color :white
                      div
                        {} $ :class-name css-icon
                        comp-i :home 14 "\"white"
                      <> (:working numbers) style-count
                    div
                      {}
                        :on-click $ fn (e d!)
                          d! :router/change $ {} (:name :pending)
                        :class-name $ str-spaced css/row css-entry
                        :style $ if
                          = :pending $ :name router
                          {} $ :color :white
                      div
                        {} $ :class-name css-icon
                        comp-i :clock 14 "\"white"
                      <> (:pending numbers) style-count
                    div
                      {}
                        :on-click $ fn (e d!)
                          d! :router/change $ {} (:name :done)
                        :class-name $ str-spaced css/row css-entry
                        :style $ if
                          = :done $ :name router
                          {} $ :color :white
                      div
                        {} $ :class-name css-icon
                        comp-i :package 14 "\"white"
                      <> (:done numbers) style-count
                  div
                    {} $ :class-name css/column
                    div
                      {}
                        :class-name $ str-spaced css/row css-entry
                        :style $ if
                          = :profile $ :name router
                          {} $ :color :white
                        :on-click $ fn (e d!)
                          d! :router/change $ {} (:name :profile)
                      div
                        {} $ :class-name css-icon
                        if logged-in? (comp-i :user 14 "\"white") (comp-i :log-in 14 "\"white")
                      <> (:sessions numbers) style-count
        |css-entry $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-entry $ {}
              "\"$0" $ {} (:cursor :pointer)
                :color $ hsl 0 0 80
                :align-items :center
                :height 40
                :margin-right 24
        |css-icon $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-icon $ {}
              "\"$0" $ merge ui/center
                {} $ :width 24
        |style-count $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-count $ merge ui/center
              {} (:min-width 20) (:font-size 14)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.sidebar $ :require
            respo-ui.core :refer $ hsl
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.css :refer $ defstyle
            respo.core :refer $ defcomp <> span div
            feather.core :refer $ comp-i
            app.config :as config
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode" "\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:port 11000) (:title "\"Woodenlist") (:icon "\"http://cdn.tiye.me/logo/woodenlist.png") (:server-folder "\"tiye.me:servers/woodenlist") (:theme "\"#4DB386") (:storage-key "\"woodenlist-storage") (:storage-file "\"woodenlist.cirru")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.config)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |database $ %{} :CodeEntry (:doc |)
          :code $ quote
            def database $ {}
              :sessions $ {}
              :users $ {}
        |notification $ %{} :CodeEntry (:doc |)
          :code $ quote
            def notification $ {} (:id nil) (:kind nil) (:text nil)
        |router $ %{} :CodeEntry (:doc |)
          :code $ quote
            def router $ {} (:name nil) (:title nil)
              :data $ {}
              :router nil
        |session $ %{} :CodeEntry (:doc |)
          :code $ quote
            def session $ {} (:user-id nil) (:id nil) (:nickname nil)
              :router $ {} (:name :home) (:data nil)
              :messages $ {}
        |task $ %{} :CodeEntry (:doc |)
          :code $ quote
            def task $ {} (:id nil) (:text |) (:mode nil) (:time 0)
        |user $ %{} :CodeEntry (:doc |)
          :code $ quote
            def user $ {} (:name nil) (:id nil) (:nickname nil) (:avatar nil) (:password nil)
              :working-tasks $ {}
              :pending-tasks $ {}
              :done-tasks $ {}
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.server $ %{} :FileEntry
      :defs $ {}
        |*client-caches $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *client-caches $ {}
        |*initial-db $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *initial-db $ if
              path-exists? $ w-log storage-file
              do (println "\"Found local EDN data")
                merge schema/database $ parse-cirru-edn (read-file storage-file)
              do (println "\"Found no data") schema/database
        |*reader-reel $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *reader-reel @*reel)
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ merge reel-schema
              {} (:base @*initial-db) (:db @*initial-db)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op sid)
              let
                  op-id $ generate-id!
                  op-time $ -> (get-time!) (.timestamp)
                if config/dev? $ println "\"Dispatch!" (str op) sid
                tag-match op
                    :effect/persist
                    persist-db!
                  (:effect/ping)
                    wss-send! sid $ format-cirru-edn (:: :effect/pong)
                  _ $ reset! *reel (reel-reducer @*reel updater op sid op-id op-time config/dev?)
        |get-backup-path! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-backup-path! () $ let
                now $ extract-time (get-time!)
              join-path calcit-dirname "\"backups"
                str $ :month now
                str (:day now) "\"-snapshot.cirru"
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              let
                  p? $ get-env "\"port"
                  port $ if (some? p?) (parse-float p?) (:port config/site)
                run-server! port
                println $ str "\"Server started on port:" port
              do (; "\"init it before doing multi-threading") (identity @*reader-reel)
              set-interval 200 $ fn () (render-loop!)
              set-interval 600000 $ fn () (persist-db!)
              on-control-c on-exit!
        |on-exit! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-exit! () (persist-db!) (; println "\"exit code is...") (quit! 0)
        |persist-db! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-db! () $ let
                file-content $ format-cirru-edn
                  assoc (:db @*reel) :sessions $ {}
                storage-path storage-file
                backup-path $ get-backup-path!
              check-write-file! storage-path file-content
              check-write-file! backup-path file-content
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () (println "\"Code updated..")
              if (not config/dev?) (raise "\"reloading only happens in dev mode")
              clear-twig-caches!
              reset! *reel $ refresh-reel @*reel @*initial-db updater
              sync-clients! @*reader-reel
        |render-loop! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-loop! () $ when
              not $ identical? @*reader-reel @*reel
              reset! *reader-reel @*reel
              sync-clients! @*reader-reel
        |run-server! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn run-server! (port)
              wss-serve! (&{} :port port)
                fn (data)
                  tag-match data
                      :connect sid
                      do
                        dispatch! (:: :session/connect) sid
                        println "\"New client."
                    (:message sid msg)
                      let
                          action $ parse-cirru-edn msg
                        dispatch! action sid
                    (:disconnect sid)
                      do (println "\"Client closed!")
                        dispatch! (:: :session/disconnect) sid
                    _ $ eprintln "\"unknown data:" data
        |storage-file $ %{} :CodeEntry (:doc |)
          :code $ quote
            def storage-file $ if (empty? calcit-dirname)
              str calcit-dirname $ :storage-file config/site
              str calcit-dirname "\"/" $ :storage-file config/site
        |sync-clients! $ %{} :CodeEntry (:doc |)
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
                  ; when config/dev? $ println "\"Changes for" sid "\":" changes (count records)
                  if
                    not= changes $ []
                    do
                      wss-send! sid $ format-cirru-edn (:: :patch changes)
                      swap! *client-caches assoc sid new-store
      :ns $ %{} :CodeEntry (:doc |)
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
    |app.style $ %{} :FileEntry
      :defs $ {}
        |button $ %{} :CodeEntry (:doc |)
          :code $ quote
            def button $ merge ui/button
              {} $ :border-radius "\"16px"
        |link $ %{} :CodeEntry (:doc |)
          :code $ quote
            def link $ {} (:text-decoration :underline) (:cursor :pointer)
              :color $ hsl 240 80 80
              :font-family ui/font-fancy
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.style $ :require
            [] respo-ui.core :refer $ [] hsl
            [] respo-ui.core :as ui
    |app.twig.container $ %{} :FileEntry
      :defs $ {}
        |twig-container $ %{} :CodeEntry (:doc |)
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
        |twig-done-tasks $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn twig-done-tasks (done-tasks year-month)
              let
                  year-months $ -> done-tasks
                    &map:map-list $ fn (pair)
                      -> pair (&list:nth 1) (&map:get :time) (wrap-format-time "\"%Y-%m")
                    distinct
                  cursor $ or year-month (&list:max year-months)
                  reading-tasks $ -> done-tasks
                    &map:filter-kv $ fn (k task)
                      &= cursor $ -> (&map:get task :time) (wrap-format-time "\"%Y-%m")
                {} (:months year-months) (:cursor cursor) (:tasks reading-tasks)
        |twig-members $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn twig-members (sessions users)
              -> sessions $ map-kv
                fn (k session)
                  [] k $ get-in users
                    [] (:user-id session) :name
        |wrap-format-time $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn wrap-format-time (stamp format)
              format-time (:: Date stamp) format
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.twig.container $ :require
            [] app.twig.user :refer $ [] twig-user
            calcit.std.rand :refer $ rand-hex-color!
            calcit.std.date :refer $ extract-time format-time Date
    |app.twig.user $ %{} :FileEntry
      :defs $ {}
        |twig-user $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn twig-user (user)
              -> user (dissoc :password) (dissoc :done-tasks) (dissoc :working-tasks) (dissoc :pending-tasks)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.twig.user $ :require
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (db op sid op-id op-time)
              tag-match op
                  :session/connect
                  session/connect db sid op-id op-time
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
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require ([] app.updater.session :as session) ([] app.updater.user :as user) ([] app.updater.router :as router) ([] app.updater.task :as task)
    |app.updater.router $ %{} :FileEntry
      :defs $ {}
        |change $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn change (db op-data session-id op-id op-time)
              assoc-in db ([] :sessions session-id :router) op-data
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.updater.router)
    |app.updater.session $ %{} :FileEntry
      :defs $ {}
        |connect $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn connect (db session-id op-id op-time)
              assoc-in db ([] :sessions session-id)
                merge schema/session $ {} (:id session-id)
        |disconnect $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn disconnect (db session-id op-id op-time)
              update db :sessions $ fn (session) (dissoc session session-id)
        |remove-message $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn remove-message (db op-data sid op-id op-time)
              update-in db ([] :sessions sid :messages)
                fn (messages)
                  dissoc messages $ :id op-data
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater.session $ :require ([] app.schema :as schema)
    |app.updater.task $ %{} :FileEntry
      :defs $ {}
        |clear-done $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn clear-done (db op-data sid op-id op-time)
              let
                  user-id $ get-in db ([] :sessions sid :user-id)
                assoc-in db ([] :users user-id :done-tasks) ({})
        |create $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn create (db op-data sid op-id op-time)
              let
                  user-id $ get-in db ([] :sessions sid :user-id)
                assoc-in db ([] :users user-id :working-tasks op-id)
                  {} (:id op-id) (:text op-data) (:mode :working) (:time op-time)
        |move-task $ %{} :CodeEntry (:doc |)
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
                    {} (:id op-id) (:text "\"No such task")
        |remove-done $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn remove-done (db op-data sid op-id op-time)
              let
                  user-id $ get-in db ([] :sessions sid :user-id)
                dissoc-in db $ [] :users user-id :done-tasks op-data
        |remove-working $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn remove-working (db op-data sid op-id op-time)
              let
                  user-id $ get-in db ([] :sessions sid :user-id)
                dissoc-in db $ [] :users user-id :working-tasks op-data
        |touch-working $ %{} :CodeEntry (:doc |)
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
        |update-text $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn update-text (db op-data sid op-id op-time)
              let
                  user-id $ get-in db ([] :sessions sid :user-id)
                update-in db
                  [] :users user-id (:group op-data) (:id op-data)
                  fn (task)
                    assoc task :text (:text op-data) :time $ :time op-data
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater.task $ :require
            [] medley.core :refer $ [] dissoc-in
    |app.updater.user $ %{} :FileEntry
      :defs $ {}
        |log-in $ %{} :CodeEntry (:doc |)
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
                            :text $ str "\"Wrong password for " username
                      update session :messages $ fn (messages)
                        assoc messages op-id $ {} (:id op-id)
                          :text $ str "\"No user named: " username
        |log-out $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn log-out (db session-id op-id op-time)
              assoc-in db ([] :sessions session-id :user-id) nil
        |sign-up $ %{} :CodeEntry (:doc |)
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
                        :text $ str "\"Name is taken: " username
                  -> db
                    assoc-in ([] :sessions sid :user-id) op-id
                    assoc-in ([] :users op-id)
                      {} (:id op-id) (:name username) (:nickname username)
                        :password $ md5 password
                        :avatar nil
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater.user $ :require
            calcit.std.hash :refer $ md5
            [] app.schema :as schema
