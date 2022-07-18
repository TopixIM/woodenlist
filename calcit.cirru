
{}
  :configs $ {} (:init-fn |app.client/main!) (:port 6001) (:reload-fn |app.client/reload!) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |respo-feather.calcit/ |alerts.calcit/ |respo-markdown.calcit/
  :entries $ {}
    :server $ {} (:init-fn |app.server/main!) (:port 6001) (:reload-fn |app.server/reload!) (:storage-key |calcit.cirru)
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit-wss/ |calcit.std/
  :ir $ {} (:package |app)
    :files $ {}
      |app.client $ {}
        :defs $ {}
          |*states $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
          |*store $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
          |connect! $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |url-parse) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |js/location.href) (:type :leaf)
                              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |true) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |host) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |.-query) (:type :leaf)
                                  |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |.-host) (:type :leaf)
                              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |js/location.hostname) (:type :leaf)
                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |either) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |url-obj) (:type :leaf)
                                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |.-query) (:type :leaf)
                                  |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |.-port) (:type :leaf)
                              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |ws-connect!) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"ws://") (:type :leaf)
                          |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |host) (:type :leaf)
                          |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\":") (:type :leaf)
                          |x $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:on-open) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |event) (:type :leaf)
                                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |simulate-login!) (:type :leaf)
                          |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:on-close) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |event) (:type :leaf)
                                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                  |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |js/console.error) (:type :leaf)
                                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"Lost connection!") (:type :leaf)
                          |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:on-data) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |on-server-data) (:type :leaf)
          |dispatch! $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
              |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |and) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |not=) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657800365414) (:by |B1y7Rc-Zz) (:text |js/console.log) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"Dispatch") (:type :leaf)
                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                      |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
              |x $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |ws-send!) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                          |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                          |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |update-states) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |@*states) (:type :leaf)
                              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |x $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:effect/connect) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
          |main! $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |main!) (:type :leaf)
              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
              |w $ {} (:at 1657800381518) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657800381916) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |b $ {} (:at 1657800384323) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                  |h $ {} (:at 1657800385226) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657800390491) (:by |B1y7Rc-Zz) (:text |load-console-formatter!) (:type :leaf)
              |x $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |y $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
              |yT $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |store) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |yj $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |yr $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |on-page-touch) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |nil?) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |@*store) (:type :leaf)
                          |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |connect!) (:type :leaf)
              |yv $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"App started!") (:type :leaf)
          |mount-target $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |mount-target) (:type :leaf)
              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |.querySelector) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |js/document) (:type :leaf)
                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\".app") (:type :leaf)
          |on-server-data $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |on-server-data) (:type :leaf)
              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
              |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"unknown server data kind:") (:type :leaf)
                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                  |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:patch) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                          |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |js/console.log) (:type :leaf)
                                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"Changes") (:type :leaf)
                                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |to-js-data) (:type :leaf)
                                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                          |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |patch-twig) (:type :leaf)
                                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |@*store) (:type :leaf)
                                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
          |reload! $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |client-errors) (:type :leaf)
                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |server-errors) (:type :leaf)
                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |hud!) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"error") (:type :leaf)
                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |client-errors) (:type :leaf)
                          |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |&newline) (:type :leaf)
                          |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |server-errors) (:type :leaf)
                  |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |hud!) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"inactive") (:type :leaf)
                          |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |remove-watch) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                          |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                      |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |remove-watch) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                          |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                      |x $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |clear-cache!) (:type :leaf)
                      |y $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
                      |yT $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*store) (:type :leaf)
                          |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                          |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |store) (:type :leaf)
                                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
                      |yj $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |add-watch) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*states) (:type :leaf)
                          |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:changes) (:type :leaf)
                          |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |prev) (:type :leaf)
                              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
                      |yr $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"Code updated.") (:type :leaf)
          |render-app! $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render-app!) (:type :leaf)
              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render!) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |mount-target) (:type :leaf)
                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:states) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |@*states) (:type :leaf)
                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |@*store) (:type :leaf)
                  |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
          |simulate-login! $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |simulate-login!) (:type :leaf)
              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |.!getItem) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |js/localStorage) (:type :leaf)
                              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:storage-key) (:type :leaf)
                                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                      |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"Found storage.") (:type :leaf)
                          |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:user/log-in) (:type :leaf)
                              |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                                  |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |raw) (:type :leaf)
                      |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                          |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                              |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"Found no storage.") (:type :leaf)
        :ns $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
            |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |ns) (:type :leaf)
            |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |app.client) (:type :leaf)
            |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
              :data $ {}
                |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:require) (:type :leaf)
                |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |respo.core) (:type :leaf)
                    |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render!) (:type :leaf)
                        |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |clear-cache!) (:type :leaf)
                        |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |realize-ssr!) (:type :leaf)
                |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |respo.cursor) (:type :leaf)
                    |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |update-states) (:type :leaf)
                |v $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |app.comp.container) (:type :leaf)
                    |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |comp-container) (:type :leaf)
                |x $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |app.schema) (:type :leaf)
                    |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |schema) (:type :leaf)
                |y $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |app.config) (:type :leaf)
                    |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |config) (:type :leaf)
                |yT $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |ws-edn.client) (:type :leaf)
                    |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |ws-connect!) (:type :leaf)
                        |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |ws-send!) (:type :leaf)
                |yj $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |recollect.patch) (:type :leaf)
                    |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |patch-twig) (:type :leaf)
                |yr $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |cumulo-util.core) (:type :leaf)
                    |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |on-page-touch) (:type :leaf)
                |yv $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"url-parse") (:type :leaf)
                    |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |url-parse) (:type :leaf)
                |yx $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"bottom-tip") (:type :leaf)
                    |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |hud!) (:type :leaf)
                |yy $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"./calcit.build-errors") (:type :leaf)
                    |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |client-errors) (:type :leaf)
                |yyT $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"../js-out/calcit.build-errors") (:type :leaf)
                    |j $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |server-errors) (:type :leaf)
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {} (:at 1500541010211) (:by nil) (:id |rJcN9Iee0Bb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |ryo4cIlgAHZ) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |H1hV5IlxCH-) (:text |comp-container) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |r1aE9IglCB-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1CV9UxeCBb) (:text |states) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |SkyrqIglCr-) (:text |store) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |HyxSq8llRHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |ByZB58exAB-) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |rkzr9UggCHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by nil) (:id |HJmS5IllASW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rJVBcUxx0Bb) (:text |state) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |ByrH5IggAHW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |S1LScUglRSW) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |SJvHc8eeAB-) (:text |states) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |ryuSqIllABW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkYrq8lgCHb) (:text |session) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |BycSqLllCSW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |Hksr5IxlCSZ) (:text |:session) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |SJhS5UxeRBb) (:text |store) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |ByaHq8gxCSW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |S10HqUelASb) (:text |if) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |rJJIc8gg0BZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |ryeLc8egCS-) (:text |nil?) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |r1-LcUggCrZ) (:text |store) (:type :leaf)
                      |r $ {} (:at 1521952221322) (:by |root) (:id |HyVrJUjEcf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521952220999) (:by |root) (:id |HyYZehIDnvM) (:text |comp-offline) (:type :leaf)
                      |v $ {} (:at 1500541010211) (:by nil) (:id |BJGP9LlxRB-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1mvc8lgRH-) (:text |div) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |r1VPqLxxRrb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |HJHD5UxeCHZ) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |B1Uwq8gxArb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657802073146) (:by |B1y7Rc-Zz) (:id |HkwD58ggCr-) (:text |:class-name) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |rkdw5Lgg0rW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657802103002) (:by |B1y7Rc-Zz) (:id |SktwcIxlCS-) (:text |str-spaced) (:type :leaf)
                                      |j $ {} (:at 1657802104924) (:by |B1y7Rc-Zz) (:id |Hk9PqUlg0Bb) (:text |css/global) (:type :leaf)
                                      |p $ {} (:at 1657802107280) (:by |B1y7Rc-Zz) (:id |HkCo2Odm7) (:text |css/fullscreen) (:type :leaf)
                                      |v $ {} (:at 1657802109123) (:by |B1y7Rc-Zz) (:id |SJ3vcUegASZ) (:text |css/column) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |r1pw9LelCr-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1531640824563) (:by |root) (:id |SyAvc8lgCB-) (:text |comp-sidebar) (:type :leaf)
                              |b $ {} (:at 1520961748118) (:by |root) (:id |Skg2RuFrYM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1520961750317) (:by |root) (:id |SJ2A_tHFz) (:text |:router) (:type :leaf)
                                  |j $ {} (:at 1520961751565) (:by |root) (:id |HykkFKHFf) (:text |store) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |rkyu9UglRHZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkedq8xxAB-) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |rJ-_cLge0SW) (:text |store) (:type :leaf)
                              |r $ {} (:at 1521219988161) (:by |root) (:id |Byg29KOtFf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521737516590) (:by |root) (:id |S1xjcKuYYG) (:text |:numbers) (:type :leaf)
                                  |j $ {} (:at 1521219990041) (:by |root) (:id |r1VacFdtKz) (:text |store) (:type :leaf)
                          |v $ {} (:at 1531641022324) (:by |root) (:id |H1Lp2udXQ) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1531641023137) (:by |root) (:id |Sywa3O_7X) (:text |div) (:type :leaf)
                              |L $ {} (:at 1531641023395) (:by |root) (:id |B1Nw63_umQ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1531641023742) (:by |root) (:id |Bkmv6hudX7) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1657802118185) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657802120700) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                      |b $ {} (:at 1657802122115) (:by |B1y7Rc-Zz) (:text |css/flex) (:type :leaf)
                                  |j $ {} (:at 1531641024674) (:by |root) (:id |BytTn_uQm) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1531641026255) (:by |root) (:id |r1WuanOdmm) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1531641037411) (:by |root) (:id |SyeSA2udQ7) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1531641037743) (:by |root) (:id |SJSA3dO7X) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1531641088880) (:by |root) (:id |rJxFbT_dXm) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1531641092131) (:by |root) (:id |B1tW6u_Qm) (:text |:overflow) (:type :leaf)
                                              |j $ {} (:at 1531641094027) (:by |root) (:id |HJHhW6ddmX) (:text |:auto) (:type :leaf)
                                          |r $ {} (:at 1551633292179) (:by |B1y7Rc-Zz) (:id |f2ojVcH86E) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1551633320743) (:by |B1y7Rc-Zz) (:id |f2ojVcH86Eleaf) (:text |:height) (:type :leaf)
                                              |j $ {} (:at 1551633323325) (:by |B1y7Rc-Zz) (:id |oQU_yM_XCq) (:text "|\"100%") (:type :leaf)
                              |T $ {} (:at 1531641055156) (:by |root) (:id |SJw1p_umX) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1531641056688) (:by |root) (:id |S1ewJau_X7) (:text |div) (:type :leaf)
                                  |L $ {} (:at 1531641056911) (:by |root) (:id |S1zYkaduXQ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1531641057259) (:by |root) (:id |S1ZKJaO_QQ) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1531641061822) (:by |root) (:id |H1g0y6uu7X) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1531641062528) (:by |root) (:id |SJCy6__m7) (:text |:style) (:type :leaf)
                                          |j $ {} (:at 1531641067336) (:by |root) (:id |B1-7gpdu77) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1531641068156) (:by |root) (:id |ryx7l6_dQQ) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1531641068350) (:by |root) (:id |B1QVl6u_7X) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1531641070538) (:by |root) (:id |rJzVe6dOmQ) (:text |:margin) (:type :leaf)
                                                  |j $ {} (:at 1531641073086) (:by |root) (:id |HkeDlauuXQ) (:text "|\"0 auto") (:type :leaf)
                                              |r $ {} (:at 1531641076366) (:by |root) (:id |HJl2gp_uQX) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1531641079692) (:by |root) (:id |HJl2gp_uQXleaf) (:text |:max-width) (:type :leaf)
                                                  |j $ {} (:at 1531641080825) (:by |root) (:id |rJ-lWp_dQX) (:text |800) (:type :leaf)
                                              |v $ {} (:at 1551633286736) (:by |B1y7Rc-Zz) (:id |z8K0mvPlC) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1551633287934) (:by |B1y7Rc-Zz) (:id |z8K0mvPlCleaf) (:text |:height) (:type :leaf)
                                                  |j $ {} (:at 1551633289608) (:by |B1y7Rc-Zz) (:id |8sE7xktI7R) (:text "|\"100%") (:type :leaf)
                                              |x $ {} (:at 1551633371767) (:by |B1y7Rc-Zz) (:id |qxN9nkk1Hy) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1551633371767) (:by |B1y7Rc-Zz) (:id |IArZfeGsaV) (:text |:overflow) (:type :leaf)
                                                  |j $ {} (:at 1551633371767) (:by |B1y7Rc-Zz) (:id |b0f2bGwm9y) (:text |:auto) (:type :leaf)
                                  |T $ {} (:at 1500541010211) (:by nil) (:id |rkXYc8ll0SW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJVYcUxlRrZ) (:text |if) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |S1rK5UggABZ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkUtqUxg0HZ) (:text |:logged-in?) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |r1Dtq8lxArb) (:text |store) (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |B1dK5UggRBW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |H1FFc8lx0Hb) (:text |let) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |r1qFcIglRrb) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by nil) (:id |HyjK5UxgAr-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |B12tqUxlASZ) (:text |router) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by nil) (:id |HJ6Fc8xeRHW) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SJAF9Lle0HW) (:text |:router) (:type :leaf)
                                                      |j $ {} (:at 1500541010211) (:by |root) (:id |Byy95UlgRBW) (:text |store) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |rkl99UlgCSZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629914297143) (:by |B1y7Rc-Zz) (:id |rkbqq8xgAHb) (:text |case-default) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |rkz5q8eeRH-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HJX958ggAS-) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |HkE558leAH-) (:text |router) (:type :leaf)
                                              |n $ {} (:at 1629914297831) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629914297831) (:by |B1y7Rc-Zz) (:text |<>) (:type :leaf)
                                                  |j $ {} (:at 1629914297831) (:by |B1y7Rc-Zz) (:text |router) (:type :leaf)
                                                  |r $ {} (:at 1629914297831) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                              |r $ {} (:at 1500541010211) (:by nil) (:id |rJH998xlAH-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |H1LqqUexArZ) (:text |:profile) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by nil) (:id |B1v5cLxgASb) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1500541010211) (:by |root) (:id |BJd95UxlRHZ) (:text |comp-profile) (:type :leaf)
                                                      |j $ {} (:at 1500541010211) (:by nil) (:id |ByF99IxlCBZ) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1500541010211) (:by |root) (:id |BJq558xxRBZ) (:text |:user) (:type :leaf)
                                                          |j $ {} (:at 1500541010211) (:by |root) (:id |HJo558lxAH-) (:text |store) (:type :leaf)
                                                      |r $ {} (:at 1545759806833) (:by |root) (:id |LFjuKTELuT) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1545759806833) (:by |root) (:id |JSwieUeApc) (:text |:data) (:type :leaf)
                                                          |j $ {} (:at 1545759806833) (:by |root) (:id |g3yUdcWSgb) (:text |router) (:type :leaf)
                                              |t $ {} (:at 1520961937753) (:by |root) (:id |Hk55YKrKf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1520961939270) (:by |root) (:id |Hk55YKrKfleaf) (:text |:home) (:type :leaf)
                                                  |j $ {} (:at 1520961939578) (:by |root) (:id |rJn5YYBFG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1520961941426) (:by |root) (:id |BySi5YtSYG) (:text |comp-home) (:type :leaf)
                                                      |j $ {} (:at 1584892785641) (:by |B1y7Rc-Zz) (:id |zg8Ug52umT) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1584892787403) (:by |B1y7Rc-Zz) (:id |JAmrDaLGpJ) (:text |>>) (:type :leaf)
                                                          |T $ {} (:at 1584892786693) (:by |B1y7Rc-Zz) (:id |rJT85trtz) (:text |states) (:type :leaf)
                                                          |j $ {} (:at 1584892789580) (:by |B1y7Rc-Zz) (:id |66p5-yHGWP) (:text |:home) (:type :leaf)
                                                      |r $ {} (:at 1520962863000) (:by |root) (:id |r1xvEpKBYM) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1520962869013) (:by |root) (:id |B1wVTFrYf) (:text |:data) (:type :leaf)
                                                          |j $ {} (:at 1520962869986) (:by |root) (:id |SyE6NTtBKz) (:text |router) (:type :leaf)
                                              |u $ {} (:at 1521044444854) (:by |root) (:id |SySyhTLYG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1521044447898) (:by |root) (:id |SySyhTLYGleaf) (:text |:pending) (:type :leaf)
                                                  |j $ {} (:at 1521044448218) (:by |root) (:id |BJNdy3TIKG) (:type :expr)
                                                    :data $ {}
                                                      |r $ {} (:at 1521044457285) (:by |root) (:id |r1X1x3p8FM) (:text |comp-pending) (:type :leaf)
                                                      |v $ {} (:at 1584892796701) (:by |B1y7Rc-Zz) (:id |ZJXHI9H9Yq) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1584892797391) (:by |B1y7Rc-Zz) (:id |Kn7jxzV6oy) (:text |>>) (:type :leaf)
                                                          |T $ {} (:at 1521044458191) (:by |root) (:id |B1fl2TItf) (:text |states) (:type :leaf)
                                                          |j $ {} (:at 1584892798166) (:by |B1y7Rc-Zz) (:id |CTWizZPRhl) (:text |:pending) (:type :leaf)
                                                      |x $ {} (:at 1521044460866) (:by |root) (:id |B1eSx3pUYf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1521044462403) (:by |root) (:id |SkHxnpUFz) (:text |:data) (:type :leaf)
                                                          |j $ {} (:at 1521044463214) (:by |root) (:id |BkPl2TItz) (:text |router) (:type :leaf)
                                              |uT $ {} (:at 1521044444854) (:by |root) (:id |B1f-eAUYf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1521045499905) (:by |root) (:id |SySyhTLYGleaf) (:text |:done) (:type :leaf)
                                                  |j $ {} (:at 1521044448218) (:by |root) (:id |BJNdy3TIKG) (:type :expr)
                                                    :data $ {}
                                                      |r $ {} (:at 1521045507199) (:by |root) (:id |r1X1x3p8FM) (:text |comp-done-tasks) (:type :leaf)
                                                      |v $ {} (:at 1584892803506) (:by |B1y7Rc-Zz) (:id |f7876O94pp) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1584892804877) (:by |B1y7Rc-Zz) (:id |2KN_2SHE3) (:text |>>) (:type :leaf)
                                                          |T $ {} (:at 1521044458191) (:by |root) (:id |B1fl2TItf) (:text |states) (:type :leaf)
                                                          |j $ {} (:at 1584892805612) (:by |B1y7Rc-Zz) (:id |4xJuzUf5cl) (:text |:done) (:type :leaf)
                                                      |x $ {} (:at 1521044460866) (:by |root) (:id |B1eSx3pUYf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1521044462403) (:by |root) (:id |SkHxnpUFz) (:text |:data) (:type :leaf)
                                                          |j $ {} (:at 1521044463214) (:by |root) (:id |BkPl2TItz) (:text |router) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |BkciqUxgRrZ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |BysicIxgAHW) (:text |comp-login) (:type :leaf)
                                          |j $ {} (:at 1584892813301) (:by |B1y7Rc-Zz) (:id |4wGUBZaYI0) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1584892813949) (:by |B1y7Rc-Zz) (:id |vaIYzVonwR) (:text |>>) (:type :leaf)
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkhocIleRrb) (:text |states) (:type :leaf)
                                              |j $ {} (:at 1584892816223) (:by |B1y7Rc-Zz) (:id |-k2B5qjx7Y) (:text |:login) (:type :leaf)
                          |y $ {} (:at 1500541010211) (:by nil) (:id |H1G3c8ll0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536859648923) (:by |root) (:id |HkQnqIex0Sb) (:text |comp-messages) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |Bk429LxgCS-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |S1B2cLgxCHZ) (:text |get-in) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryInqUelCHb) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |SJw25Uge0BW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |rJd398el0rZ) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by |root) (:id |B1Yn98xlRrZ) (:text |:session) (:type :leaf)
                                      |r $ {} (:at 1536859678771) (:by |root) (:id |SJqh5UlgRB-) (:text |:messages) (:type :leaf)
                              |r $ {} (:at 1536859683487) (:by |root) (:id |AKONicwVwr) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536859684863) (:by |root) (:id |r1s398ex0Hb) (:text |{}) (:type :leaf)
                              |v $ {} (:at 1536859688576) (:by |root) (:id |RijT4ZfSN) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536859688986) (:by |root) (:id |RijT4ZfSNleaf) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1536859689270) (:by |root) (:id |fVBZkw2scq) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536859691977) (:by |root) (:id |YhflrA7Nhl) (:text |info) (:type :leaf)
                                      |j $ {} (:at 1536859694304) (:by |root) (:id |0NhJLv6Uq1) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1536859696098) (:by |root) (:id |2S3jInlOmr) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536859699929) (:by |root) (:id |2S3jInlOmrleaf) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1536859706543) (:by |root) (:id |yMiFVsm0WN) (:text |:session/remove-message) (:type :leaf)
                                      |r $ {} (:at 1536859708926) (:by |root) (:id |xmoxnxHUC) (:text |info) (:type :leaf)
                          |y5 $ {} (:at 1524244643320) (:by |root) (:id |r1jjxsP2G) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524244630699) (:by |root) (:id |r1SZysxjD2M) (:text |comp-status-color) (:type :leaf)
                              |j $ {} (:at 1524244630699) (:by |root) (:id |r1AoloPhG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524244630699) (:by |root) (:id |rJ0yoxivnM) (:text |:color) (:type :leaf)
                                  |j $ {} (:at 1524244630699) (:by |root) (:id |HJ1lkjljv2G) (:text |store) (:type :leaf)
                          |yD $ {} (:at 1524203460848) (:by |root) (:id |rJaaybP2f) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1524203461381) (:by |root) (:id |H1gpaybwnf) (:text |if) (:type :leaf)
                              |L $ {} (:at 1524203462120) (:by |root) (:id |SJXaT1Wv3M) (:text |dev?) (:type :leaf)
                              |T $ {} (:at 1500541010211) (:by nil) (:id |r1-iTkbv2M) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkAi58lx0S-) (:text |comp-inspect) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |HJkhq8gxRrb) (:text ||Store) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by |root) (:id |Skln58ge0rb) (:text |store) (:type :leaf)
                                  |v $ {} (:at 1500541010211) (:by |root) (:id |Sy-n5UgxCBW) (:text |style-debugger) (:type :leaf)
                          |yT $ {} (:at 1521824338196) (:by |root) (:id |rye9IMnf5G) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521824374535) (:by |root) (:id |B1-9IMhMcG) (:text |if) (:type :leaf)
                              |L $ {} (:at 1524203456009) (:by |root) (:id |B1moUzhzcf) (:text |dev?) (:type :leaf)
                              |T $ {} (:at 1507828710405) (:by |root) (:id |BJgRkVX62W) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507828712159) (:by |root) (:id |BJgRkVX62Wleaf) (:text |comp-reel) (:type :leaf)
                                  |j $ {} (:at 1507829101137) (:by |root) (:id |HylruBmT3-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507830262253) (:by |root) (:id |HyBgV7T2Z) (:text |:reel-length) (:type :leaf)
                                      |j $ {} (:at 1507829104010) (:by |root) (:id |S1MvOr7a2Z) (:text |store) (:type :leaf)
                                  |r $ {} (:at 1507828721052) (:by |root) (:id |ByteVmTnZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507828722268) (:by |root) (:id |ByxdeN7anb) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1521824388695) (:by |root) (:id |r1ptfhf5G) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1521824389730) (:by |root) (:id |SJnFznGcz) (:text |:bottom) (:type :leaf)
                                          |j $ {} (:at 1521824397448) (:by |root) (:id |Skf0FMhz9z) (:text |24) (:type :leaf)
          |comp-offline $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |1R9YbXAhNj) (:type :expr)
            :data $ {}
              |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |Ney-h61XR5) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |_u2L-coCcf) (:text |comp-offline) (:type :leaf)
              |r $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |JLpYNRqpB4) (:type :expr)
                :data $ {}
              |v $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |qSoBtIyXsi) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |9dL-jGnSYd) (:text |div) (:type :leaf)
                  |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |l8vcDKhR82) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |xKunwgkk-T) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1657802181532) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657802184553) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                          |b $ {} (:at 1657802188306) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1657802189973) (:by |B1y7Rc-Zz) (:text |str-spaced) (:type :leaf)
                              |T $ {} (:at 1657802188057) (:by |B1y7Rc-Zz) (:text |css/global) (:type :leaf)
                              |b $ {} (:at 1657802194077) (:by |B1y7Rc-Zz) (:text |css/fullscreen) (:type :leaf)
                              |h $ {} (:at 1657802199144) (:by |B1y7Rc-Zz) (:text |css/column-dispersive) (:type :leaf)
                      |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |Ooa6iw_UEh) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |Khj9ERrDj0) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |048ERmKM3ig) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |QtB8ZI4TyXz) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |VuMMSZ7aAnf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |7Wl3ldBP6tz) (:text |:background-color) (:type :leaf)
                                  |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |AgmwkRF8WDG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |2moWt4KG9Hv) (:text |:theme) (:type :leaf)
                                      |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |5tEmlJVW4xe) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |HV0jn727C-9) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |tRKcYtN7d2X) (:text |div) (:type :leaf)
                      |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |Wo_9hhmFvPu) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |p3mnqXgXIYs) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |FjqLAvulu9x) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |9nkOmjJMI8S) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |OA1u2ouxY76) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |4ggJ3sjBeIR) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |cd3FE2J0h8D) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |zeO9wCE2wbZ) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |ra4BRwIrYuh) (:text |0) (:type :leaf)
                  |v $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |wIvWSobbxsb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |mev4qtvZ4s6) (:text |div) (:type :leaf)
                      |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |DRosl-YZsPt) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |rYLVUfl0-fO) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |H6hepztr4sw) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |U741_qGObI8) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |_fS00S2Ho_f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |Pb4XweYyOWj) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |bOGCOFG8gpx) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |bqPRYALGGmJ) (:text |:background-image) (:type :leaf)
                                      |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |lqvJRqO0j6B) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |hh4LiO8pN5d) (:text |str) (:type :leaf)
                                          |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |nxUizMJGYPX) (:text "|\"url(") (:type :leaf)
                                          |r $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |Pw_b1Gmn6u1) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |MXMVSk0zidV) (:text |:icon) (:type :leaf)
                                              |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |9qBTdVZQ9Km) (:text |config/site) (:type :leaf)
                                          |v $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |LDeXqLfkzns) (:text "|\")") (:type :leaf)
                                  |r $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |VeDhLrjp9KB) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |tXzEbpTUc4l) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |3qE3E-b2kIX) (:text |128) (:type :leaf)
                                  |v $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |99ZsBghngwc) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |dJzBhmZU1v_) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |Ufw8mGkjVvs) (:text |128) (:type :leaf)
                                  |x $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |b62w_mi3vRZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |VDIptezy1y0) (:text |:background-size) (:type :leaf)
                                      |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |OcXdOSeF-BV) (:text |:contain) (:type :leaf)
                  |x $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |FP88bOtLYaw) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |9UUF3ONwNqm) (:text |div) (:type :leaf)
                      |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |D2N31A4WrnD) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |xoSzf2pTaEY) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |KJ8Z0j9eGTO) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |5lDA7W4ZLp6) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |YGzC3ZG9l1V) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |geMlBkzYLy0) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |HvZVvb9rJW3) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |AuMZCwjLKSW) (:text |:cursor) (:type :leaf)
                                      |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |9WRFypRf5XQ) (:text |:pointer) (:type :leaf)
                                  |r $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |diJx9h-a1Pl) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |6UfjLsDQdA6) (:text |:line-height) (:type :leaf)
                                      |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |S_31R5cpOzu) (:text "|\"32px") (:type :leaf)
                          |r $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |Ngpo_9QpPUQ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |S88Eikpf2Tx) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1584892868540) (:by |B1y7Rc-Zz) (:id |N2L0byeQVp) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1584892869137) (:by |B1y7Rc-Zz) (:id |alszhmfL_L) (:text |fn) (:type :leaf)
                                  |L $ {} (:at 1584892869441) (:by |B1y7Rc-Zz) (:id |tovoKa2SQD) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584892870306) (:by |B1y7Rc-Zz) (:id |wc95IpUw7h) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1584892870971) (:by |B1y7Rc-Zz) (:id |9FagJ49Njq) (:text |d!) (:type :leaf)
                                  |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |m5K_Beb_yYU) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584892867923) (:by |B1y7Rc-Zz) (:id |5J-3b6rsyT_) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |no2iN3O2Xxz) (:text |:effect/connect) (:type :leaf)
                                      |r $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |sXUz876J69A) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |9qO0328HZXe) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |koWHgACufqO) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |gf54dilrMSL) (:text "||No connection...") (:type :leaf)
                          |r $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |JK409P9mpmr) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |0noAMHFce1u) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |4hyHCrs52Ef) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |LE_UKU8RXgZ) (:text |:font-family) (:type :leaf)
                                  |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |35iIO315W7e) (:text |ui/font-fancy) (:type :leaf)
                              |r $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |S92kLOdxSWu) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |WotjKXilQA2) (:text |:font-size) (:type :leaf)
                                  |j $ {} (:at 1535566471371) (:by |B1y7Rc-Zz) (:id |eRZunIgPfWk) (:text |24) (:type :leaf)
          |comp-status-color $ {} (:at 1524244630699) (:by |root) (:id |rJgJoxiwnM) (:type :expr)
            :data $ {}
              |T $ {} (:at 1524244632254) (:by |root) (:id |ByZyiejvnz) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1524244630699) (:by |root) (:id |S1MyiljD2G) (:text |comp-status-color) (:type :leaf)
              |n $ {} (:at 1524244633411) (:by |root) (:id |S1bZoxswnG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524244635434) (:by |root) (:id |SyeboljP3M) (:text |color) (:type :leaf)
              |r $ {} (:at 1524244630699) (:by |root) (:id |SJmyjeiP2M) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524244630699) (:by |root) (:id |B14kjgoDnz) (:text |div) (:type :leaf)
                  |j $ {} (:at 1524244630699) (:by |root) (:id |rkSJsgiwnz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524244630699) (:by |root) (:id |HkLkseov3M) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1657802141589) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657802144069) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                          |b $ {} (:at 1657802147591) (:by |B1y7Rc-Zz) (:text |css-status-color) (:type :leaf)
                      |j $ {} (:at 1524244630699) (:by |root) (:id |SyD1jxoP3z) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524244630699) (:by |root) (:id |ry_yolowhG) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1524244630699) (:by |root) (:id |H1tJoeiwhG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524244630699) (:by |root) (:id |Hk5JjxsP2f) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1524244630699) (:by |root) (:id |HkjkoxsDnM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524244630699) (:by |root) (:id |HJn1oloDhM) (:text |:background-color) (:type :leaf)
                                  |j $ {} (:at 1524244639818) (:by |root) (:id |r1xIigjw3z) (:text |color) (:type :leaf)
          |css-status-color $ {} (:at 1657802148006) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657802149352) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1657802148006) (:by |B1y7Rc-Zz) (:text |css-status-color) (:type :leaf)
              |h $ {} (:at 1657802148006) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657802150532) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |b $ {} (:at 1657802150875) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657802152662) (:by |B1y7Rc-Zz) (:text "|\"$0") (:type :leaf)
                      |b $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |h $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:height) (:type :leaf)
                              |b $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |16) (:type :leaf)
                          |l $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:width) (:type :leaf)
                              |b $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |16) (:type :leaf)
                          |o $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:position) (:type :leaf)
                              |b $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:absolute) (:type :leaf)
                          |q $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:border-radius) (:type :leaf)
                              |b $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text "|\"8px") (:type :leaf)
                          |s $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:top) (:type :leaf)
                              |b $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                          |t $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:right) (:type :leaf)
                              |b $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |8) (:type :leaf)
                          |u $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:transition-duration) (:type :leaf)
                              |b $ {} (:at 1657802153525) (:by |B1y7Rc-Zz) (:text "|\"300ms") (:type :leaf)
          |style-body $ {} (:at 1500541010211) (:by nil) (:id |ry965UlxRH-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |rkoaq8ge0BW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |Sk2p9UxgRBW) (:text |style-body) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |BJ66q8egCSZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |B1ApqUxg0B-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |SJJR9Ueg0HZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |Sye0cIle0B-) (:text |:padding) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |rkWR58eeCHZ) (:text "||8px 16px") (:type :leaf)
          |style-debugger $ {} (:at 1500541010211) (:by nil) (:id |ryh398xl0SZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |rkTn5IeeCBW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |Sk02qLexRHW) (:text |style-debugger) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |rky6q8xxASb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |SyeT5UllASZ) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |SJZ6qUleRS-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |ryfp9IxgABW) (:text |:bottom) (:type :leaf)
                      |j $ {} (:at 1521824154262) (:by |root) (:id |Skma9UglRr-) (:text |8) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |r1V65Ixl0HW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1520874997303) (:by |root) (:id |HkBp9LllArb) (:text |:right) (:type :leaf)
                      |j $ {} (:at 1521824157464) (:by |root) (:id |ryIpcIggCrb) (:text |8) (:type :leaf)
                  |v $ {} (:at 1500541010211) (:by nil) (:id |SJv6q8xeAH-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJ_acUlgCrZ) (:text |:max-width) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |BkYpc8ee0B-) (:text ||100%) (:type :leaf)
                  |x $ {} (:at 1521824146203) (:by |root) (:id |BJxcqZhMqM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521824147943) (:by |root) (:id |BJxcqZhMqMleaf) (:text |:margin) (:type :leaf)
                      |j $ {} (:at 1521824148344) (:by |root) (:id |BkMnqZ2z5f) (:text |0) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |B15IxeRH-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |SJxc8xl0HZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |SkZcLgxAB-) (:text |app.comp.container) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |SkCq8lx0rb) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HyJlqLelRBW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |SylgqLee0B-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |H1Gxq8xgCB-) (:text |hsl.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SJQlcUlgRr-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |By4lc8gxCB-) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |rJIlq8leCBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |ryvl5IllRSb) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1516547378489) (:by |root) (:id |H1Fgc8egCSW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |Hy9x5IeeASW) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |rkoe5LxlCBW) (:text |ui) (:type :leaf)
                |u $ {} (:at 1657802086348) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657802088252) (:by |B1y7Rc-Zz) (:text |respo-ui.css) (:type :leaf)
                    |b $ {} (:at 1657802088679) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1657802089260) (:by |B1y7Rc-Zz) (:text |css) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |B1gpZxc3yG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1542535126511) (:by |root) (:id |H189Igg0S-) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |HJw9LexRS-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1_98eeRSb) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkqqIggASZ) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |SysqUxxRH-) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |Bkh9UglCrZ) (:text |div) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |BkaqLel0H-) (:text |span) (:type :leaf)
                        |xT $ {} (:at 1584892776945) (:by |B1y7Rc-Zz) (:id |r1egw5YSFM) (:text |>>) (:type :leaf)
                        |y $ {} (:at 1507815955483) (:by |root) (:id |ryjGzeahb) (:text |button) (:type :leaf)
                |xT $ {} (:at 1657802091520) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657802095203) (:by |B1y7Rc-Zz) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1657802096718) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657802096976) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657802098442) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |rJu-cIxlRSZ) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |By9-qLxlRHW) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1oZq8gl0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |rk2ZqUlx0SZ) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SJ0bqLggCH-) (:text |comp-inspect) (:type :leaf)
                |yD $ {} (:at 1507816109319) (:by |root) (:id |Sklr2Mg6n-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507816117447) (:by |root) (:id |SkbLhMlp3b) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1507816112686) (:by |root) (:id |H1GOhGephb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507816113982) (:by |root) (:id |rk-53Mlah-) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1507816114704) (:by |root) (:id |SyN5nGgThZ) (:text |=<) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |H1kGc8glRHW) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1520874727426) (:by |root) (:id |B1-f5UgeABb) (:text |app.comp.sidebar) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkzM98gxRrZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Bymz5LglArW) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1520874729636) (:by |root) (:id |rkBfcLggCBb) (:text |comp-sidebar) (:type :leaf)
                |yj $ {} (:at 1500541010211) (:by nil) (:id |HJ8M5UeeCS-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |H1_fq8geCHb) (:text |app.comp.profile) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |ryFz9LglCHb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |r1qfqUlxASb) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H12z9LxxCHW) (:text |comp-profile) (:type :leaf)
                |yr $ {} (:at 1500541010211) (:by nil) (:id |Bypz9LxxRSW) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |Hkk7qUgxAr-) (:text |app.comp.login) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SJg798xxAHW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJ-m9Ueg0SW) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |r1Qmq8gxCrW) (:text |comp-login) (:type :leaf)
                |yv $ {} (:at 1500541010211) (:by nil) (:id |SyE7qLleCHW) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1536859637834) (:by |root) (:id |HkIQ9Iel0Hb) (:text |respo-message.comp.messages) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |ryv7cIgeCrZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Hk_7c8eg0rW) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1536859640755) (:by |root) (:id |BJcQcUxxASW) (:text |comp-messages) (:type :leaf)
                |yx $ {} (:at 1507828725931) (:by |root) (:id |BklAlV7a2Z) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1543512890577) (:by |B1y7Rc-Zz) (:id |ry7AeNmT3b) (:text |cumulo-reel.comp.reel) (:type :leaf)
                    |r $ {} (:at 1507828731528) (:by |root) (:id |H1bQW4762Z) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507828731735) (:by |root) (:id |Sk-NbNmT3W) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1507828733743) (:by |root) (:id |Bk44ZNXT2Z) (:text |comp-reel) (:type :leaf)
                |yy $ {} (:at 1520961943756) (:by |root) (:id |H1gliFYBFf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1520961948227) (:by |root) (:id |SJgZiFtrKz) (:text |app.comp.home) (:type :leaf)
                    |r $ {} (:at 1520961949112) (:by |root) (:id |S1QNjKtSYG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1520961949314) (:by |root) (:id |rJUHoYFHKM) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1520961950910) (:by |root) (:id |HJ8oFYrKf) (:text |comp-home) (:type :leaf)
                |yyT $ {} (:at 1520961943756) (:by |root) (:id |B1ol3aUtG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1521044472658) (:by |root) (:id |SJgZiFtrKz) (:text |app.comp.pending) (:type :leaf)
                    |r $ {} (:at 1520961949112) (:by |root) (:id |S1QNjKtSYG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1520961949314) (:by |root) (:id |rJUHoYFHKM) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1521044476147) (:by |root) (:id |HJ8oFYrKf) (:text |comp-pending) (:type :leaf)
                |yyj $ {} (:at 1520961943756) (:by |root) (:id |BJexGlR8tG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1521045515082) (:by |root) (:id |SJgZiFtrKz) (:text |app.comp.done-tasks) (:type :leaf)
                    |r $ {} (:at 1520961949112) (:by |root) (:id |S1QNjKtSYG) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1520961949314) (:by |root) (:id |rJUHoYFHKM) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1521045518102) (:by |root) (:id |HJ8oFYrKf) (:text |comp-done-tasks) (:type :leaf)
                |yyr $ {} (:at 1524203444768) (:by |root) (:id |r16hkZP2G) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1543513094104) (:by |B1y7Rc-Zz) (:id |r1x0nkZP2G) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1524203451000) (:by |root) (:id |SkW-ak-vhf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1524203451191) (:by |root) (:id |SyLQpJbw3M) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1524203452407) (:by |root) (:id |SyF76y-PnG) (:text |dev?) (:type :leaf)
                |yyv $ {} (:at 1535566481033) (:by |B1y7Rc-Zz) (:id |JvUvUPOQ2a) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1535566482662) (:by |B1y7Rc-Zz) (:id |mX_SjNX0X) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1535566485217) (:by |B1y7Rc-Zz) (:id |8Y4nAE4BRC) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1535566485973) (:by |B1y7Rc-Zz) (:id |RWDMoP8d6-) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |S1om9LgxCBZ) (:type :expr)
          :data $ {}
      |app.comp.done-tasks $ {}
        :defs $ {}
          |comp-done-task $ {} (:at 1524383437936) (:by |root) (:id |rkl8AA3Ynf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1524383442433) (:by |root) (:id |SJWIC0hthf) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1524383437936) (:by |root) (:id |HyMLAA2K2G) (:text |comp-done-task) (:type :leaf)
              |n $ {} (:at 1524383443947) (:by |root) (:id |HJnAR3Ynf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1567349802991) (:by |B1y7Rc-Zz) (:id |tQych8LfnL) (:text |states) (:type :leaf)
                  |T $ {} (:at 1524383445178) (:by |root) (:id |rylsAA3Y2f) (:text |task) (:type :leaf)
                  |j $ {} (:at 1530033253228) (:by |root) (:id |ryeivNegfX) (:text |editing?) (:type :leaf)
              |r $ {} (:at 1629914184272) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1629914195564) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |L $ {} (:at 1629914195865) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629914196010) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629914199525) (:by |B1y7Rc-Zz) (:text |remove-plugin) (:type :leaf)
                          |j $ {} (:at 1629914199850) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629914205300) (:by |B1y7Rc-Zz) (:text |use-confirm) (:type :leaf)
                              |j $ {} (:at 1629914209006) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629914209508) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                                  |j $ {} (:at 1629914210346) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                                  |r $ {} (:at 1629914211244) (:by |B1y7Rc-Zz) (:text |:remove) (:type :leaf)
                              |r $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                                              |j $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |:pointer) (:type :leaf)
                                          |r $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |:margin-right) (:type :leaf)
                                              |j $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |16) (:type :leaf)
                                  |v $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1629914215003) (:by |B1y7Rc-Zz) (:text "|\"Remove record forever?") (:type :leaf)
                  |T $ {} (:at 1524383437936) (:by |root) (:id |SyQURAhKnM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524383437936) (:by |root) (:id |BJELRC3Y3G) (:text |div) (:type :leaf)
                      |j $ {} (:at 1524383437936) (:by |root) (:id |HJBU0A3F3f) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524383437936) (:by |root) (:id |HJIIRC3Ynz) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1657813437618) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657813439628) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                              |b $ {} (:at 1657813441356) (:by |B1y7Rc-Zz) (:text |css/row) (:type :leaf)
                          |j $ {} (:at 1524383437936) (:by |root) (:id |ryPIACnKnM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524383437936) (:by |root) (:id |H1dU0C3t2f) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1524383437936) (:by |root) (:id |Bk2LCC2K2z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524383437936) (:by |root) (:id |Bk6L0C3Knz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1524383437936) (:by |root) (:id |H1AURC3t3M) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524383437936) (:by |root) (:id |HkJeLAR2Khz) (:text |:margin) (:type :leaf)
                                      |j $ {} (:at 1524383437936) (:by |root) (:id |SyggIRChKhz) (:text "||8px 0") (:type :leaf)
                                  |r $ {} (:at 1524383827972) (:by |root) (:id |rkH_epK3f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524383836589) (:by |root) (:id |SJgnLgpYhGleaf) (:text |:align-items) (:type :leaf)
                                      |j $ {} (:at 1524383838016) (:by |root) (:id |r1xSvx6KhG) (:text |:center) (:type :leaf)
                      |r $ {} (:at 1524383437936) (:by |root) (:id |SkbxICRnFnG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1530032824033) (:by |root) (:id |S1Mx8AChK3z) (:text |span) (:type :leaf)
                          |j $ {} (:at 1524383437936) (:by |root) (:id |B1Xe8AChFhz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524383437936) (:by |root) (:id |r1El8C0hF2z) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1524383437936) (:by |root) (:id |r1Hg8R03YnG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657813460503) (:by |B1y7Rc-Zz) (:id |HJIe8RR3Y3M) (:text |:class-name) (:type :leaf)
                                  |b $ {} (:at 1657813464097) (:by |B1y7Rc-Zz) (:text |css-done-content) (:type :leaf)
                              |r $ {} (:at 1530032825630) (:by |root) (:id |HJGpfleM7) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1530032829298) (:by |root) (:id |HJGpfleM7leaf) (:text |:inner-text) (:type :leaf)
                                  |j $ {} (:at 1524383437936) (:by |root) (:id |SkTWIRCnFhz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524383437936) (:by |root) (:id |r10ZU00ht2f) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1524383437936) (:by |root) (:id |BykfLCAnF2z) (:text |task) (:type :leaf)
                      |x $ {} (:at 1530033255236) (:by |root) (:id |S1eJOVgxMQ) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1530033256106) (:by |root) (:id |rkbJ_ExgG7) (:text |when) (:type :leaf)
                          |L $ {} (:at 1530033256582) (:by |root) (:id |BkXluElgG7) (:text |editing?) (:type :leaf)
                          |P $ {} (:at 1629914234122) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629914236051) (:by |B1y7Rc-Zz) (:text |comp-icon) (:type :leaf)
                              |j $ {} (:at 1629914234122) (:by |B1y7Rc-Zz) (:text |:trash) (:type :leaf)
                              |r $ {} (:at 1629914237146) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1629914239254) (:by |B1y7Rc-Zz) (:text |&{}) (:type :leaf)
                                  |L $ {} (:at 1629914242336) (:by |B1y7Rc-Zz) (:text |:font-size) (:type :leaf)
                                  |T $ {} (:at 1629914234122) (:by |B1y7Rc-Zz) (:text |14) (:type :leaf)
                                  |j $ {} (:at 1629914244137) (:by |B1y7Rc-Zz) (:text |:color) (:type :leaf)
                                  |r $ {} (:at 1629914248708) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629914248708) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                      |j $ {} (:at 1629914248708) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |r $ {} (:at 1629914248708) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |v $ {} (:at 1629914248708) (:by |B1y7Rc-Zz) (:text |50) (:type :leaf)
                                  |v $ {} (:at 1629914254138) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                                  |x $ {} (:at 1629914255923) (:by |B1y7Rc-Zz) (:text |:pointer) (:type :leaf)
                              |v $ {} (:at 1629914260275) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629914260816) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629914261036) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629914262015) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1629914262668) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1629914265337) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629914266707) (:by |B1y7Rc-Zz) (:text |.show) (:type :leaf)
                                      |j $ {} (:at 1629914271154) (:by |B1y7Rc-Zz) (:text |remove-plugin) (:type :leaf)
                                      |r $ {} (:at 1629914273130) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                      |v $ {} (:at 1629914274120) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629914275247) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1629914276067) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                          |r $ {} (:at 1629914280576) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629914280576) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1629914280576) (:by |B1y7Rc-Zz) (:text |:task/remove-done) (:type :leaf)
                                              |r $ {} (:at 1629914280576) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629914280576) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                  |j $ {} (:at 1629914280576) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                      |yT $ {} (:at 1530033257650) (:by |root) (:id |Skf_4lxMQ) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1530033258596) (:by |root) (:id |SkgGuVlxzm) (:text |when) (:type :leaf)
                          |L $ {} (:at 1530033259378) (:by |root) (:id |BkWQd4xxMQ) (:text |editing?) (:type :leaf)
                          |T $ {} (:at 1524383437936) (:by |root) (:id |ByRX80AhF3z) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1524383437936) (:by |root) (:id |HJkNLRRhF2z) (:text |div) (:type :leaf)
                              |j $ {} (:at 1524383437936) (:by |root) (:id |HkxEIAC2t3G) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524383437936) (:by |root) (:id |rJbE8ARht3G) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1524383437936) (:by |root) (:id |H1fEUAC3thG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524383437936) (:by |root) (:id |HJm48AR2F2G) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1524383437936) (:by |root) (:id |r1ENICCht2z) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1524383437936) (:by |root) (:id |r1S4UCAnY3M) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1524383437936) (:by |root) (:id |S18NIRR3Yhf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524383437936) (:by |root) (:id |rkDN8RR2F2G) (:text |:cursor) (:type :leaf)
                                              |j $ {} (:at 1524383437936) (:by |root) (:id |ryuN8A03Y3G) (:text |:pointer) (:type :leaf)
                                  |r $ {} (:at 1524383437936) (:by |root) (:id |S1KNIAAhKnf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524383437936) (:by |root) (:id |HycEI00hKnz) (:text |:on-click) (:type :leaf)
                                      |j $ {} (:at 1584893073144) (:by |B1y7Rc-Zz) (:id |v4cDUUiFH) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1584893073702) (:by |B1y7Rc-Zz) (:id |GuEGGIgxG1) (:text |fn) (:type :leaf)
                                          |L $ {} (:at 1584893074033) (:by |B1y7Rc-Zz) (:id |X1_NNmFiS0) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584893074528) (:by |B1y7Rc-Zz) (:id |EW-Y-RTRYr) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1584893075172) (:by |B1y7Rc-Zz) (:id |Xe6H7Dgwex) (:text |d!) (:type :leaf)
                                          |T $ {} (:at 1524383437936) (:by |root) (:id |HksE8RAhYhz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584893072665) (:by |B1y7Rc-Zz) (:id |B13N8C0nY2G) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1524383437936) (:by |root) (:id |H1TNLCR3t3M) (:text |:task/move-task) (:type :leaf)
                                              |r $ {} (:at 1524383437936) (:by |root) (:id |BJCEICC2Y3f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524383437936) (:by |root) (:id |rkJH80CnY2f) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1524383437936) (:by |root) (:id |BJgBUR02thG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524383437936) (:by |root) (:id |rkbHUAAnY2M) (:text |:id) (:type :leaf)
                                                      |j $ {} (:at 1524383437936) (:by |root) (:id |B1MBLC0nt2z) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1524383437936) (:by |root) (:id |ryQHLAC3F3G) (:text |:id) (:type :leaf)
                                                          |j $ {} (:at 1524383437936) (:by |root) (:id |HJ4BICRhK3f) (:text |task) (:type :leaf)
                                                  |r $ {} (:at 1524383437936) (:by |root) (:id |SkSHIRCnKnG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524383437936) (:by |root) (:id |ryIrICR2KhM) (:text |:from) (:type :leaf)
                                                      |j $ {} (:at 1524383437936) (:by |root) (:id |rkDBIC0hK2G) (:text |:done-tasks) (:type :leaf)
                                                  |v $ {} (:at 1524383437936) (:by |root) (:id |SkdrLCR2FnM) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524383437936) (:by |root) (:id |BkKBLCRnt3G) (:text |:to) (:type :leaf)
                                                      |j $ {} (:at 1524383437936) (:by |root) (:id |SJ5SUCAnF2G) (:text |:working-tasks) (:type :leaf)
                              |r $ {} (:at 1524383437936) (:by |root) (:id |BkirLRC3t3z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1558366478263) (:by |B1y7Rc-Zz) (:id |Synr8A0hKnz) (:text |comp-i) (:type :leaf)
                                  |j $ {} (:at 1558366479485) (:by |B1y7Rc-Zz) (:id |B1aH80AnK2f) (:text |:repeat) (:type :leaf)
                                  |r $ {} (:at 1558366481194) (:by |B1y7Rc-Zz) (:id |4EsAbD4xm) (:text |14) (:type :leaf)
                                  |v $ {} (:at 1558366482182) (:by |B1y7Rc-Zz) (:id |VSeo2lhMA) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1558366482600) (:by |B1y7Rc-Zz) (:id |mnZUbxqG4g) (:text |hsl) (:type :leaf)
                                      |j $ {} (:at 1558366483520) (:by |B1y7Rc-Zz) (:id |suWBwRX-r3) (:text |0) (:type :leaf)
                                      |r $ {} (:at 1558366484458) (:by |B1y7Rc-Zz) (:id |-vdf8J0ihE) (:text |0) (:type :leaf)
                                      |v $ {} (:at 1558366484775) (:by |B1y7Rc-Zz) (:id |400RJ2ew8) (:text |50) (:type :leaf)
                      |yj $ {} (:at 1629914221312) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629914223520) (:by |B1y7Rc-Zz) (:text |.render) (:type :leaf)
                          |j $ {} (:at 1629914227048) (:by |B1y7Rc-Zz) (:text |remove-plugin) (:type :leaf)
          |comp-done-tasks $ {} (:at 1521045530725) (:by |root) (:id |HkxmQe08Kz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521045533135) (:by |root) (:id |HybQmeCUFM) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1521045530725) (:by |root) (:id |SyM7QeC8KG) (:text |comp-done-tasks) (:type :leaf)
              |r $ {} (:at 1521045530725) (:by |root) (:id |HkX77eA8tf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1521045535968) (:by |root) (:id |ryx8XxALFG) (:text |states) (:type :leaf)
                  |j $ {} (:at 1521045539997) (:by |root) (:id |B1Wu7xA8YG) (:text |router-data) (:type :leaf)
              |v $ {} (:at 1530033032457) (:by |root) (:id |S1xlqXglMQ) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1530033042203) (:by |root) (:id |SJF57llzX) (:text |let) (:type :leaf)
                  |L $ {} (:at 1530033042489) (:by |root) (:id |SJE5qXggGm) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1584893131244) (:by |B1y7Rc-Zz) (:id |1O08wKHEm) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584893132277) (:by |B1y7Rc-Zz) (:id |1O08wKHEmleaf) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1584893132465) (:by |B1y7Rc-Zz) (:id |R75t3jHGO_) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584893133358) (:by |B1y7Rc-Zz) (:id |Vptfpm7yGl) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1584893134088) (:by |B1y7Rc-Zz) (:id |6QqLpK8hH_) (:text |states) (:type :leaf)
                      |T $ {} (:at 1530033042634) (:by |root) (:id |SJjcmlxGm) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1530033043460) (:by |root) (:id |rJXqqXgxzm) (:text |state) (:type :leaf)
                          |j $ {} (:at 1530033044060) (:by |root) (:id |B1lncXegMm) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1530033045120) (:by |root) (:id |Sy25QlxGX) (:text |or) (:type :leaf)
                              |j $ {} (:at 1530033045404) (:by |root) (:id |ByWpqQgeGQ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1530033045977) (:by |root) (:id |HylT9XxlMm) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1530033048533) (:by |root) (:id |S1VA57xxMX) (:text |states) (:type :leaf)
                              |r $ {} (:at 1530033050267) (:by |root) (:id |rJezj7eeGX) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1530033050938) (:by |root) (:id |rJezj7eeGXleaf) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1530033051236) (:by |root) (:id |S1z7j7lefm) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1530033052671) (:by |root) (:id |rkZQiXlez7) (:text |:editing?) (:type :leaf)
                                      |j $ {} (:at 1530033053317) (:by |root) (:id |HJxSimgefQ) (:text |false) (:type :leaf)
                      |j $ {} (:at 1531642768209) (:by |root) (:id |Hyxuc7YOXm) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584893119067) (:by |B1y7Rc-Zz) (:id |Hyxuc7YOXmleaf) (:text |day-cursor) (:type :leaf)
                          |j $ {} (:at 1531642773095) (:by |root) (:id |rJpqmFuQX) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1531642777227) (:by |root) (:id |ByncQYu7m) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1531642778826) (:by |root) (:id |Syr-jQFdm7) (:text |router-data) (:type :leaf)
                      |r $ {} (:at 1531642779733) (:by |root) (:id |ryVoQFumQ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1531642781287) (:by |root) (:id |ryVoQFumQleaf) (:text |months) (:type :leaf)
                          |j $ {} (:at 1531642782107) (:by |root) (:id |H1xUsQYOmX) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1531642783749) (:by |root) (:id |rkLimY_m7) (:text |:months) (:type :leaf)
                              |j $ {} (:at 1531642786022) (:by |root) (:id |ryZds7tOXm) (:text |router-data) (:type :leaf)
                      |v $ {} (:at 1531642803823) (:by |root) (:id |rkgnhmF_Qm) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1531642804556) (:by |root) (:id |rkgnhmF_Qmleaf) (:text |tasks) (:type :leaf)
                          |j $ {} (:at 1531642805225) (:by |root) (:id |ByZTnQYuQm) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1531642808530) (:by |root) (:id |Syga2mtumQ) (:text |:tasks) (:type :leaf)
                              |j $ {} (:at 1531642806751) (:by |root) (:id |SJ4Ah7Y_Xm) (:text |router-data) (:type :leaf)
                  |T $ {} (:at 1524383217559) (:by |root) (:id |S15lR2t2G) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521045540886) (:by |root) (:id |HJrhmgALtzleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1521045541162) (:by |root) (:id |HyX6QxC8FM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521045541506) (:by |root) (:id |H1GT7xAUtf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1657813130644) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657813132884) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                              |b $ {} (:at 1657813133803) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657813135932) (:by |B1y7Rc-Zz) (:text |str-spaced) (:type :leaf)
                                  |b $ {} (:at 1657813137582) (:by |B1y7Rc-Zz) (:text |css/flex) (:type :leaf)
                                  |h $ {} (:at 1657813139047) (:by |B1y7Rc-Zz) (:text |css/row) (:type :leaf)
                          |j $ {} (:at 1521045581680) (:by |root) (:id |SJl8UlRLKz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521045582849) (:by |root) (:id |HyLIeRUFM) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1521045583125) (:by |root) (:id |ry4DIlRLtG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521045583534) (:by |root) (:id |HyQvUlCUKz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1521045583880) (:by |root) (:id |HyZdLgCUFz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521045589938) (:by |root) (:id |BkgdIlCItz) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1551633546079) (:by |B1y7Rc-Zz) (:id |Hy40Lx0UtG) (:text "|\"16px 8px") (:type :leaf)
                                  |r $ {} (:at 1551633176577) (:by |B1y7Rc-Zz) (:id |4VxzIP4ur) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1551633179504) (:by |B1y7Rc-Zz) (:id |4VxzIP4urleaf) (:text |:overflow) (:type :leaf)
                                      |j $ {} (:at 1551633180628) (:by |B1y7Rc-Zz) (:id |0B7qPJ5Qe) (:text |:auto) (:type :leaf)
                                  |v $ {} (:at 1551633383402) (:by |B1y7Rc-Zz) (:id |-vJoUWPzPc) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1551633384886) (:by |B1y7Rc-Zz) (:id |-vJoUWPzPcleaf) (:text |:height) (:type :leaf)
                                      |j $ {} (:at 1551633387005) (:by |B1y7Rc-Zz) (:id |9cA0cC9mxp) (:text "|\"100%") (:type :leaf)
                      |v $ {} (:at 1531642535246) (:by |root) (:id |SyZJnfYdXQ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1531642550829) (:by |root) (:id |SyZJnfYdXQleaf) (:text |list->) (:type :leaf)
                          |j $ {} (:at 1531642551111) (:by |root) (:id |S1z1aMFu77) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1531642552367) (:by |root) (:id |SJZJpztOXQ) (:text |{}) (:type :leaf)
                              |b $ {} (:at 1657813148698) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657813151903) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                  |b $ {} (:at 1657813155256) (:by |B1y7Rc-Zz) (:text |css/font-fancy) (:type :leaf)
                              |j $ {} (:at 1657813147299) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1531642615790) (:by |root) (:id |Hyx1-XtuXm) (:text |:style) (:type :leaf)
                                  |b $ {} (:at 1531642612097) (:by |root) (:id |S1ZnxQK_7Q) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1531642612662) (:by |root) (:id |Bkz2eQKdQ7) (:text |{}) (:type :leaf)
                                      |T $ {} (:at 1531642613083) (:by |root) (:id |r1G6lXFdXQ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1531642606655) (:by |root) (:id |HkxBlQtuXQ) (:text |:overflow) (:type :leaf)
                                          |j $ {} (:at 1531642607705) (:by |root) (:id |SJWPlXF_7m) (:text |:auto) (:type :leaf)
                                      |v $ {} (:at 1531673173681) (:by |root) (:id |rJ08qgtmm) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1531673175694) (:by |root) (:id |rJ08qgtmmleaf) (:text |:width) (:type :leaf)
                                          |j $ {} (:at 1551633512125) (:by |B1y7Rc-Zz) (:id |BJegvceY7m) (:text |80) (:type :leaf)
                                      |x $ {} (:at 1536820469637) (:by |B1y7Rc-Zz) (:id |fymrTr9Jf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1536820473893) (:by |B1y7Rc-Zz) (:id |fymrTr9Jfleaf) (:text |:flex-shrink) (:type :leaf)
                                          |j $ {} (:at 1536820474679) (:by |B1y7Rc-Zz) (:id |jYx19a2OEY) (:text |0) (:type :leaf)
                          |r $ {} (:at 1531642553148) (:by |root) (:id |Skg-pftOQm) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629914120064) (:by |B1y7Rc-Zz) (:id |Skg-pftOQmleaf) (:text |->) (:type :leaf)
                              |f $ {} (:at 1531642791032) (:by |root) (:id |By0jQYdQm) (:text |months) (:type :leaf)
                              |l $ {} (:at 1533230186481) (:by |B1y7Rc-Zz) (:id |VFM85R5omw) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1533230185835) (:by |B1y7Rc-Zz) (:id |k95nbGVr4) (:text |sort) (:type :leaf)
                                  |j $ {} (:at 1533230188906) (:by |B1y7Rc-Zz) (:id |lCCstvE8rP) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1533230190991) (:by |B1y7Rc-Zz) (:id |Ek0h_yNWO) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1533230192194) (:by |B1y7Rc-Zz) (:id |0SeQdr1KF) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1533230191489) (:by |B1y7Rc-Zz) (:id |yIiI5ReZ_5) (:text |x) (:type :leaf)
                                          |j $ {} (:at 1533230192768) (:by |B1y7Rc-Zz) (:id |hxyq3YeWUr) (:text |y) (:type :leaf)
                                      |r $ {} (:at 1533230193549) (:by |B1y7Rc-Zz) (:id |1BWY5FLfy) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629914123106) (:by |B1y7Rc-Zz) (:id |1BWY5FLfyleaf) (:text |&compare) (:type :leaf)
                                          |r $ {} (:at 1533230207235) (:by |B1y7Rc-Zz) (:id |1hw_fwagry) (:text |y) (:type :leaf)
                                          |v $ {} (:at 1533230231209) (:by |B1y7Rc-Zz) (:id |qSaRmeGE9) (:text |x) (:type :leaf)
                              |r $ {} (:at 1531642566612) (:by |root) (:id |Skk0zF_77) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1531642567533) (:by |root) (:id |rkC6MKO7X) (:text |map) (:type :leaf)
                                  |j $ {} (:at 1531642568135) (:by |root) (:id |rJ-xRMt_QX) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1531642572530) (:by |root) (:id |rJglCGtumm) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1531642572798) (:by |root) (:id |rk-HCMYdm7) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1531642575563) (:by |root) (:id |HJxHRfKOm7) (:text |year-month) (:type :leaf)
                                      |r $ {} (:at 1531642576654) (:by |root) (:id |H1t0MFuX7) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1531642577371) (:by |root) (:id |H1t0MFuX7leaf) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1531642577790) (:by |root) (:id |r1MK0GK_77) (:text |year-month) (:type :leaf)
                                          |r $ {} (:at 1531642578232) (:by |root) (:id |S1-5CMYumX) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1531642580991) (:by |root) (:id |Sk30zKuQQ) (:text |div) (:type :leaf)
                                              |j $ {} (:at 1531642581213) (:by |root) (:id |B1Xp0MYdmm) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1531642581560) (:by |root) (:id |HyfaRMKOmX) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1531642728237) (:by |root) (:id |r1xdXt_7m) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1531642730045) (:by |root) (:id |HJxpwmKu7Q) (:text |:style) (:type :leaf)
                                                      |j $ {} (:at 1531642736472) (:by |root) (:id |B1dO7F_Q7) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1531642737532) (:by |root) (:id |SJF_7tdmQ) (:text |merge) (:type :leaf)
                                                          |T $ {} (:at 1531642730352) (:by |root) (:id |rJBG_XtO7X) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1531642730915) (:by |root) (:id |S1NGuQFd7m) (:text |{}) (:type :leaf)
                                                              |j $ {} (:at 1531642731786) (:by |root) (:id |B1xEdXK_XX) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1531642733199) (:by |root) (:id |BkV_XKOXX) (:text |:cursor) (:type :leaf)
                                                                  |j $ {} (:at 1531642734543) (:by |root) (:id |Bk-B_7YuXQ) (:text |:pointer) (:type :leaf)
                                                              |r $ {} (:at 1531642917644) (:by |root) (:id |SkA7EFO7X) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1531642919347) (:by |root) (:id |SkA7EFO7Xleaf) (:text |:padding) (:type :leaf)
                                                                  |j $ {} (:at 1551633533148) (:by |B1y7Rc-Zz) (:id |SkmJ44KdXm) (:text "|\"0 8px") (:type :leaf)
                                                          |j $ {} (:at 1531642739209) (:by |root) (:id |BJliOmYdQm) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1531642749577) (:by |root) (:id |HyWcOQYOXm) (:text |when) (:type :leaf)
                                                              |j $ {} (:at 1531642740721) (:by |root) (:id |B1x6d7YuQm) (:type :expr)
                                                                :data $ {}
                                                                  |D $ {} (:at 1531642742068) (:by |root) (:id |B1eROQYuQX) (:text |=) (:type :leaf)
                                                                  |T $ {} (:at 1584893123380) (:by |B1y7Rc-Zz) (:id |rkWsOQKu7m) (:text |day-cursor) (:type :leaf)
                                                                  |j $ {} (:at 1531642746997) (:by |root) (:id |H1QCO7YOmQ) (:text |year-month) (:type :leaf)
                                                              |r $ {} (:at 1531642750372) (:by |root) (:id |ryM8Y7KdXX) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1531642751125) (:by |root) (:id |ryM8Y7KdXXleaf) (:text |{}) (:type :leaf)
                                                                  |j $ {} (:at 1531642751637) (:by |root) (:id |BkuFXY_Q7) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1531642761808) (:by |root) (:id |HkbPt7F_m7) (:text |:background-color) (:type :leaf)
                                                                      |j $ {} (:at 1531642934330) (:by |root) (:id |Hk-0N4FdXX) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1531642934939) (:by |root) (:id |r1Zfq7Y_XX) (:text |hsl) (:type :leaf)
                                                                          |j $ {} (:at 1531642935673) (:by |root) (:id |r1GJrVYdQX) (:text |0) (:type :leaf)
                                                                          |r $ {} (:at 1531642936037) (:by |root) (:id |rkxlB4Yumm) (:text |0) (:type :leaf)
                                                                          |v $ {} (:at 1531673264530) (:by |root) (:id |BJMxBEt_mm) (:text |94) (:type :leaf)
                                                  |n $ {} (:at 1531673257183) (:by |root) (:id |B1xb3qgFQX) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1531673259651) (:by |root) (:id |B1xb3qgFQXleaf) (:text |:class-name) (:type :leaf)
                                                      |j $ {} (:at 1531673285999) (:by |root) (:id |BybV2qxFX7) (:text "|\"item") (:type :leaf)
                                                  |r $ {} (:at 1531642825155) (:by |root) (:id |SklZRXY_m7) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1531642827279) (:by |root) (:id |SklZRXY_m7leaf) (:text |:on-click) (:type :leaf)
                                                      |j $ {} (:at 1531642827571) (:by |root) (:id |S1VCmtu7X) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1531642828493) (:by |root) (:id |ryHQ07F_mX) (:text |fn) (:type :leaf)
                                                          |j $ {} (:at 1531642828798) (:by |root) (:id |SkeH0XYdmX) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1531642829002) (:by |root) (:id |SkrR7KOmm) (:text |e) (:type :leaf)
                                                              |j $ {} (:at 1531642831016) (:by |root) (:id |S1zSCQFd7Q) (:text |d!) (:type :leaf)
                                                          |r $ {} (:at 1531642832179) (:by |root) (:id |B1WO0QFOQ7) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1531642833025) (:by |root) (:id |B1WO0QFOQ7leaf) (:text |d!) (:type :leaf)
                                                              |j $ {} (:at 1531642835860) (:by |root) (:id |HyetRmFu77) (:text |:router/change) (:type :leaf)
                                                              |r $ {} (:at 1531642836076) (:by |root) (:id |ByE2AXK_XQ) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1531642836477) (:by |root) (:id |Symn0XtOQX) (:text |{}) (:type :leaf)
                                                                  |j $ {} (:at 1531642836671) (:by |root) (:id |ryg60QYdQ7) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1531642837306) (:by |root) (:id |B1aCXKO7Q) (:text |:name) (:type :leaf)
                                                                      |j $ {} (:at 1531642848803) (:by |root) (:id |SkIpCXtOQ7) (:text |:done) (:type :leaf)
                                                                  |r $ {} (:at 1531642849562) (:by |root) (:id |BycJNtd7X) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1531642850316) (:by |root) (:id |BycJNtd7Xleaf) (:text |:data) (:type :leaf)
                                                                      |j $ {} (:at 1531642853674) (:by |root) (:id |BJHqyEKuQm) (:text |year-month) (:type :leaf)
                                              |r $ {} (:at 1531642582196) (:by |root) (:id |rk-0AGYuQX) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1531642582537) (:by |root) (:id |rk-0AGYuQXleaf) (:text |<>) (:type :leaf)
                                                  |j $ {} (:at 1531642582993) (:by |root) (:id |ryl1kXYumX) (:text |year-month) (:type :leaf)
                      |w $ {} (:at 1531642590470) (:by |root) (:id |HyJzDt_mQ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1531642596555) (:by |root) (:id |HklUkmYdXmleaf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1551633564703) (:by |B1y7Rc-Zz) (:id |H1xpJ7F_QX) (:text |8) (:type :leaf)
                          |r $ {} (:at 1531642598161) (:by |root) (:id |H1CyXtuXQ) (:text |nil) (:type :leaf)
                      |wT $ {} (:at 1531643620427) (:by |root) (:id |B1nyvY_Q7) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1531643621504) (:by |root) (:id |Bygp1PFdm7) (:text |div) (:type :leaf)
                          |L $ {} (:at 1531643621734) (:by |root) (:id |HyxR1DtuQm) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1531643622118) (:by |root) (:id |ryR1vtumm) (:text |{}) (:type :leaf)
                              |b $ {} (:at 1657813189675) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657813191651) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                  |b $ {} (:at 1657813193165) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1657813195597) (:by |B1y7Rc-Zz) (:text |str-spaced) (:type :leaf)
                                      |T $ {} (:at 1657813192929) (:by |B1y7Rc-Zz) (:text |css/flex) (:type :leaf)
                                      |b $ {} (:at 1657813199041) (:by |B1y7Rc-Zz) (:text |css/column) (:type :leaf)
                              |j $ {} (:at 1531643622627) (:by |root) (:id |r1JxPF_77) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1531643625491) (:by |root) (:id |rJXCkwKdXX) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1536820477455) (:by |B1y7Rc-Zz) (:id |QcyuPKaJnJ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536820479878) (:by |B1y7Rc-Zz) (:id |HQEu0K5sJq) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1536820481114) (:by |B1y7Rc-Zz) (:id |aWgjweMoDF) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1536820482372) (:by |B1y7Rc-Zz) (:id |kjDnP1u_tr) (:text |:overflow) (:type :leaf)
                                          |j $ {} (:at 1536820483120) (:by |B1y7Rc-Zz) (:id |f4fCLWIgPI) (:text |:auto) (:type :leaf)
                                      |r $ {} (:at 1551633162462) (:by |B1y7Rc-Zz) (:id |WgzXVAE0Fk) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1551633166231) (:by |B1y7Rc-Zz) (:id |WgzXVAE0Fkleaf) (:text |:height) (:type :leaf)
                                          |j $ {} (:at 1551633168982) (:by |B1y7Rc-Zz) (:id |Cp1OvseEFA) (:text "|\"100%") (:type :leaf)
                                      |v $ {} (:at 1551633396440) (:by |B1y7Rc-Zz) (:id |AKrdw2ISDS) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1551633399730) (:by |B1y7Rc-Zz) (:id |AKrdw2ISDSleaf) (:text |:padding-bottom) (:type :leaf)
                                          |j $ {} (:at 1551633614268) (:by |B1y7Rc-Zz) (:id |l9DrXWuoeJ) (:text |120) (:type :leaf)
                          |P $ {} (:at 1521045551385) (:by |root) (:id |SJl0lPY_QQ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521045552182) (:by |root) (:id |r1fIEeA8Kz) (:text |div) (:type :leaf)
                              |j $ {} (:at 1521045552483) (:by |root) (:id |BkM_ExRIYM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521045552817) (:by |root) (:id |B1-u4gCIFM) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1521132750884) (:by |root) (:id |r1lPAE7uYG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1521132751621) (:by |root) (:id |r1bwCV7dYf) (:text |<>) (:type :leaf)
                                  |T $ {} (:at 1521045553893) (:by |root) (:id |rylcNxR8KG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521132750289) (:by |root) (:id |rylcNxR8KGleaf) (:text |str) (:type :leaf)
                                      |j $ {} (:at 1531643563714) (:by |root) (:id |BJfhNxCLKz) (:text "||Done Tasks(") (:type :leaf)
                                      |n $ {} (:at 1531643568035) (:by |root) (:id |SJOh8Y_7Q) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1531643568693) (:by |root) (:id |r1P2LYuQX) (:text |count) (:type :leaf)
                                          |j $ {} (:at 1531643569494) (:by |root) (:id |BJbY2IYOX7) (:text |tasks) (:type :leaf)
                                      |r $ {} (:at 1531643566177) (:by |root) (:id |rkgN3IYuQm) (:text "|\")") (:type :leaf)
                                  |j $ {} (:at 1521045597163) (:by |root) (:id |rJQBDgRLKz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521045597485) (:by |root) (:id |HJfBPxRUKM) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1521045597703) (:by |root) (:id |BklIveRUKf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1521045599185) (:by |root) (:id |H18PgAUFG) (:text |:font-size) (:type :leaf)
                                          |j $ {} (:at 1521045599945) (:by |root) (:id |Bymvvx08tz) (:text |24) (:type :leaf)
                                      |r $ {} (:at 1521045600706) (:by |root) (:id |BygFvgA8Kf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1521045603448) (:by |root) (:id |BygFvgA8Kfleaf) (:text |:font-family) (:type :leaf)
                                          |j $ {} (:at 1521045625668) (:by |root) (:id |SJBjwx08tG) (:text |ui/font-fancy) (:type :leaf)
                                      |v $ {} (:at 1521045612555) (:by |root) (:id |SJBde08tG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1521045618980) (:by |root) (:id |SJBde08tGleaf) (:text |:font-weight) (:type :leaf)
                                          |j $ {} (:at 1521045619562) (:by |root) (:id |HyMiuxCLYz) (:text |100) (:type :leaf)
                              |t $ {} (:at 1530033364160) (:by |root) (:id |r1x204lefm) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1530033364940) (:by |root) (:id |r1x204lefmleaf) (:text |=<) (:type :leaf)
                                  |b $ {} (:at 1530033367472) (:by |root) (:id |BJ1yBxeGm) (:text |16) (:type :leaf)
                                  |j $ {} (:at 1530033365718) (:by |root) (:id |By-a0Elxfm) (:text |nil) (:type :leaf)
                              |v $ {} (:at 1530033145124) (:by |root) (:id |ryuANleG7) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1530033148215) (:by |root) (:id |SJxZ-NxgfXleaf) (:text |if) (:type :leaf)
                                  |j $ {} (:at 1530033149128) (:by |root) (:id |SkxSbEexfQ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1530033151343) (:by |root) (:id |SJS-4exMm) (:text |:editing?) (:type :leaf)
                                      |j $ {} (:at 1530033152482) (:by |root) (:id |rkObVxxfX) (:text |state) (:type :leaf)
                                  |r $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |u_mqopwTWi) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |t-wrLGfeBv) (:text |a) (:type :leaf)
                                      |j $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |Ck6W2Eg40o) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |PQP7oxygEu) (:text |{}) (:type :leaf)
                                          |b $ {} (:at 1657813206694) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1657813209217) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                              |b $ {} (:at 1657813210966) (:by |B1y7Rc-Zz) (:text |css/link) (:type :leaf)
                                          |r $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |OqwhOF1EtE) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |CAzexgz-Ao) (:text |:inner-text) (:type :leaf)
                                              |j $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |GYwXqU5KPo) (:text "|\"Done") (:type :leaf)
                                          |v $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |InZ5h-onv3) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |D_xRbUBZ-B) (:text |:on-click) (:type :leaf)
                                              |j $ {} (:at 1584893150468) (:by |B1y7Rc-Zz) (:id |orL1Ete3QA) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1584893150982) (:by |B1y7Rc-Zz) (:id |6mlq3kPWAo) (:text |fn) (:type :leaf)
                                                  |L $ {} (:at 1584893151178) (:by |B1y7Rc-Zz) (:id |Wln-eM2Nr) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584893151472) (:by |B1y7Rc-Zz) (:id |zHUMCFMpzA) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1584893152303) (:by |B1y7Rc-Zz) (:id |WtgIVgZxAC) (:text |d!) (:type :leaf)
                                                  |T $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |Q16sqADWBl) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584893148649) (:by |B1y7Rc-Zz) (:id |QQThbcdbgmO) (:text |d!) (:type :leaf)
                                                      |b $ {} (:at 1584893149889) (:by |B1y7Rc-Zz) (:id |j2eLwcVNIt) (:text |cursor) (:type :leaf)
                                                      |j $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |umtd-x6LUfa) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |xgciijXxiZi) (:text |update) (:type :leaf)
                                                          |j $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |7g6_VdN8FS7) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |VfQlbgKVBPj) (:text |:editing?) (:type :leaf)
                                                          |v $ {} (:at 1567349753202) (:by |B1y7Rc-Zz) (:id |1upBfspvbo2) (:text |not) (:type :leaf)
                                  |v $ {} (:at 1530033155428) (:by |root) (:id |BJxw7VlgGX) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1530033378207) (:by |root) (:id |rylsWVelGXleaf) (:text |a) (:type :leaf)
                                      |j $ {} (:at 1530033157937) (:by |root) (:id |BylAZ4lxMX) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1530033158309) (:by |root) (:id |Sy0bVgefQ) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1657813215003) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1657813215003) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                              |b $ {} (:at 1657813215003) (:by |B1y7Rc-Zz) (:text |css/link) (:type :leaf)
                                          |r $ {} (:at 1530033170079) (:by |root) (:id |BJ5MVlxzQ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1530033173693) (:by |root) (:id |BJ5MVlxzQleaf) (:text |:inner-text) (:type :leaf)
                                              |j $ {} (:at 1530033270166) (:by |root) (:id |SklRfVlefQ) (:text "|\"Edit") (:type :leaf)
                                          |v $ {} (:at 1530033217977) (:by |root) (:id |Ske9BNexGQ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1530033219848) (:by |root) (:id |Ske9BNexGQleaf) (:text |:on-click) (:type :leaf)
                                              |j $ {} (:at 1584893156210) (:by |B1y7Rc-Zz) (:id |ir1WnqJZk) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1584893156720) (:by |B1y7Rc-Zz) (:id |0CA_dY9p9G) (:text |fn) (:type :leaf)
                                                  |L $ {} (:at 1584893156982) (:by |B1y7Rc-Zz) (:id |uIj7u5xBPQ) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584893157395) (:by |B1y7Rc-Zz) (:id |pxV_iFpedh) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1584893157906) (:by |B1y7Rc-Zz) (:id |amLg2_dJ1a) (:text |d!) (:type :leaf)
                                                  |T $ {} (:at 1530033199674) (:by |root) (:id |H1znrNggfm) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584893154850) (:by |B1y7Rc-Zz) (:id |ryLw4VgeG7) (:text |d!) (:type :leaf)
                                                      |b $ {} (:at 1584893155846) (:by |B1y7Rc-Zz) (:id |H3dboROyab) (:text |cursor) (:type :leaf)
                                                      |j $ {} (:at 1530033205932) (:by |root) (:id |B1x0E4xlGQ) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1530033208939) (:by |root) (:id |S1CNNlefm) (:text |update) (:type :leaf)
                                                          |j $ {} (:at 1530033209530) (:by |root) (:id |rJG-rEegzX) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1530033212256) (:by |root) (:id |rygfHExlfX) (:text |:editing?) (:type :leaf)
                                                          |v $ {} (:at 1530033214332) (:by |root) (:id |BJmEHNxeMX) (:text |not) (:type :leaf)
                          |T $ {} (:at 1524383219785) (:by |root) (:id |rk3g03K3f) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1524383220461) (:by |root) (:id |SJx2g0hKnM) (:text |let) (:type :leaf)
                              |L $ {} (:at 1524383220810) (:by |root) (:id |H1aeC3thM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1524383220971) (:by |root) (:id |BygTgA3KnG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524383227199) (:by |root) (:id |ByNhxRhKhG) (:text |tasks-by-time) (:type :leaf)
                                      |j $ {} (:at 1524382730905) (:by |root) (:id |S1gDb02Y2M) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1629915623032) (:by |B1y7Rc-Zz) (:id |rJl7Gh3tnM) (:text |->) (:type :leaf)
                                          |b $ {} (:at 1531642801208) (:by |root) (:id |BkgCcftdm7) (:text |tasks) (:type :leaf)
                                          |f $ {} (:at 1629915624555) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629915653113) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                                          |j $ {} (:at 1629915627160) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629915635316) (:by |B1y7Rc-Zz) (:id |H1bwfhhKhG) (:text |map) (:type :leaf)
                                              |j $ {} (:at 1629915635940) (:by |B1y7Rc-Zz) (:text |last) (:type :leaf)
                                          |r $ {} (:at 1524382744775) (:by |root) (:id |HyZ7h3K3z) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524382755369) (:by |root) (:id |BJWlXnnY2M) (:text |group-by) (:type :leaf)
                                              |j $ {} (:at 1524382763391) (:by |root) (:id |B1bXV23K3f) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524382765141) (:by |root) (:id |BJZEh2tnM) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1524382765831) (:by |root) (:id |BJeI433Knz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524382768723) (:by |root) (:id |B1I4n3FhM) (:text |task) (:type :leaf)
                                                  |v $ {} (:at 1524382951916) (:by |root) (:id |S1HKVFdX7) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1529162222704) (:by |root) (:id |ryxleahK2zleaf) (:text |.format) (:type :leaf)
                                                      |j $ {} (:at 1529162223644) (:by |root) (:id |Sy_x9sMZQ) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1529162225353) (:by |root) (:id |SkGExT2FhM) (:text |dayjs) (:type :leaf)
                                                          |j $ {} (:at 1524383102245) (:by |root) (:id |BkYtVFOXX) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524383147149) (:by |root) (:id |SJ8Ya3K3z) (:text |:time) (:type :leaf)
                                                              |j $ {} (:at 1524383107299) (:by |root) (:id |HyiY63Fnz) (:text |task) (:type :leaf)
                                                      |r $ {} (:at 1531642999064) (:by |root) (:id |H1QLgahYnz) (:text "|\"DD") (:type :leaf)
                              |T $ {} (:at 1524383209919) (:by |root) (:id |S1GlCnthG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1524383212868) (:by |root) (:id |HklMgC3Fnz) (:text |list->) (:type :leaf)
                                  |L $ {} (:at 1524383213221) (:by |root) (:id |SJzrgCnt3M) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524383214164) (:by |root) (:id |BkZHxRht2M) (:text |{}) (:type :leaf)
                                  |T $ {} (:at 1524383236549) (:by |root) (:id |HJT-A3K2M) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1629914131844) (:by |B1y7Rc-Zz) (:id |rygpWChKnf) (:text |->) (:type :leaf)
                                      |L $ {} (:at 1524383239903) (:by |root) (:id |SkJzR3tnM) (:text |tasks-by-time) (:type :leaf)
                                      |M $ {} (:at 1629915673424) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629915679112) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                                      |N $ {} (:at 1524383325832) (:by |root) (:id |SJLw0nthG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629914133418) (:by |B1y7Rc-Zz) (:id |SJLw0nthGleaf) (:text |.sort) (:type :leaf)
                                          |j $ {} (:at 1524383337684) (:by |root) (:id |ryGORnKnz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524383338009) (:by |root) (:id |BJfbuAnF3G) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1524383338340) (:by |root) (:id |r1XzOAhKnf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524383348895) (:by |root) (:id |ryGGOR2F2z) (:text |pair-a) (:type :leaf)
                                                  |j $ {} (:at 1524383352096) (:by |root) (:id |BkWC_C3Fnz) (:text |pair-b) (:type :leaf)
                                              |r $ {} (:at 1524383353110) (:by |root) (:id |rylZYAhF3z) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629914137060) (:by |B1y7Rc-Zz) (:id |rylZYAhF3zleaf) (:text |&compare) (:type :leaf)
                                                  |j $ {} (:at 1524383361827) (:by |root) (:id |rkemnRhKnG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524383400016) (:by |root) (:id |SycYA2Fnf) (:text |first) (:type :leaf)
                                                      |j $ {} (:at 1524383366972) (:by |root) (:id |S13KA2Y2M) (:text |pair-b) (:type :leaf)
                                                  |r $ {} (:at 1524383361827) (:by |root) (:id |S1PhCnFnM) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524383405477) (:by |root) (:id |SycYA2Fnf) (:text |first) (:type :leaf)
                                                      |j $ {} (:at 1524383370782) (:by |root) (:id |S13KA2Y2M) (:text |pair-a) (:type :leaf)
                                      |P $ {} (:at 1524383240825) (:by |root) (:id |r1ZzRhFhz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629914142356) (:by |B1y7Rc-Zz) (:id |ryeeGA3K3f) (:text |.map-pair) (:type :leaf)
                                          |j $ {} (:at 1524383242646) (:by |root) (:id |S1QzRhthG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1524383243512) (:by |root) (:id |Bk4MGCnKhz) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1524383243842) (:by |root) (:id |B1l4fCnK2G) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524383250209) (:by |root) (:id |B1OMC3KhG) (:text |date) (:type :leaf)
                                                  |j $ {} (:at 1524383251459) (:by |root) (:id |Bk-9zRnYhf) (:text |tasks) (:type :leaf)
                                              |r $ {} (:at 1524383254583) (:by |root) (:id |HJk7AhY2G) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1524383255098) (:by |root) (:id |HJk7AhY2Gleaf) (:text |[]) (:type :leaf)
                                                  |j $ {} (:at 1524383258567) (:by |root) (:id |ByxfXChFnf) (:text |date) (:type :leaf)
                                                  |r $ {} (:at 1524383258941) (:by |root) (:id |H1ZX7R2YhG) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1524383259676) (:by |root) (:id |BJemQAnYnf) (:text |div) (:type :leaf)
                                                      |j $ {} (:at 1524383259879) (:by |root) (:id |SkGVXChK2f) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1524383260211) (:by |root) (:id |HyWEXR2t2z) (:text |{}) (:type :leaf)
                                                      |r $ {} (:at 1524383484156) (:by |root) (:id |HkZ4bk6Ynz) (:type :expr)
                                                        :data $ {}
                                                          |D $ {} (:at 1524383484800) (:by |root) (:id |SyzNbkpKnz) (:text |div) (:type :leaf)
                                                          |L $ {} (:at 1524383486340) (:by |root) (:id |r1Z8ZypYhz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524383486682) (:by |root) (:id |SygIZJaKnz) (:text |{}) (:type :leaf)
                                                              |b $ {} (:at 1657813221768) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1657813223740) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                                                  |b $ {} (:at 1657813226058) (:by |B1y7Rc-Zz) (:text |css/font-fancy) (:type :leaf)
                                                              |j $ {} (:at 1524383486924) (:by |root) (:id |ryfDbJ6Ynf) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1524383487652) (:by |root) (:id |S1WvWy6thM) (:text |:style) (:type :leaf)
                                                                  |j $ {} (:at 1524383487844) (:by |root) (:id |Hyf_byTK3f) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1524383488170) (:by |root) (:id |BJbu-kTK3f) (:text |{}) (:type :leaf)
                                                                      |r $ {} (:at 1524383496232) (:by |root) (:id |HJfxGJTtnf) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1524383497551) (:by |root) (:id |HJfxGJTtnfleaf) (:text |:font-size) (:type :leaf)
                                                                          |j $ {} (:at 1524383499001) (:by |root) (:id |ryxMz16YnM) (:text |16) (:type :leaf)
                                                                      |v $ {} (:at 1524383504201) (:by |root) (:id |r1ldGJ6thf) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1524383506556) (:by |root) (:id |r1ldGJ6thfleaf) (:text |:font-weight) (:type :leaf)
                                                                          |j $ {} (:at 1524383508068) (:by |root) (:id |r1gjMk6F2z) (:text |100) (:type :leaf)
                                                                      |x $ {} (:at 1524383510227) (:by |root) (:id |Byf0GJaKnG) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1524383511762) (:by |root) (:id |ryxpGkaY3z) (:text |:margin-top) (:type :leaf)
                                                                          |j $ {} (:at 1524383512599) (:by |root) (:id |H1feQkTt3G) (:text |16) (:type :leaf)
                                                                      |y $ {} (:at 1524383525531) (:by |root) (:id |ByC7JpF3M) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1524383528557) (:by |root) (:id |ByC7JpF3Mleaf) (:text |:line-height) (:type :leaf)
                                                                          |j $ {} (:at 1524383530563) (:by |root) (:id |ryeZ4ypK2G) (:text "|\"24px") (:type :leaf)
                                                          |T $ {} (:at 1524383261799) (:by |root) (:id |rJLmAnYhM) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1524383262334) (:by |root) (:id |rJLmAnYhMleaf) (:text |<>) (:type :leaf)
                                                              |j $ {} (:at 1524383263730) (:by |root) (:id |ByPQ0hY2f) (:text |date) (:type :leaf)
                                                      |v $ {} (:at 1521045542477) (:by |root) (:id |HJ3Q03t3z) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1521045631182) (:by |root) (:id |r1lAQe0LKfleaf) (:text |list->) (:type :leaf)
                                                          |j $ {} (:at 1521045632825) (:by |root) (:id |HJYYgCIKz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1521045633133) (:by |root) (:id |SJXzNgCIKf) (:text |{}) (:type :leaf)
                                                          |r $ {} (:at 1521045634512) (:by |root) (:id |H1ZcYgA8tz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629914147995) (:by |B1y7Rc-Zz) (:id |Hye9Yg0IKG) (:text |->) (:type :leaf)
                                                              |j $ {} (:at 1524383273083) (:by |root) (:id |BJ2KeCUFf) (:text |tasks) (:type :leaf)
                                                              |n $ {} (:at 1531643301089) (:by |root) (:id |HylasSFOmQ) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1629914149406) (:by |B1y7Rc-Zz) (:id |HkpsHYOQ7) (:text |.sort-by) (:type :leaf)
                                                                  |j $ {} (:at 1531643316211) (:by |root) (:id |BJxn3SFOQ7) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1531643316591) (:by |root) (:id |SJ3hrtOmm) (:text |fn) (:type :leaf)
                                                                      |j $ {} (:at 1531643318704) (:by |root) (:id |BJ1arKumQ) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1531643326884) (:by |root) (:id |rJzIpSY_mX) (:text |task) (:type :leaf)
                                                                      |r $ {} (:at 1531643335875) (:by |root) (:id |S1xCSFuQ7) (:type :expr)
                                                                        :data $ {}
                                                                          |D $ {} (:at 1629914152029) (:by |B1y7Rc-Zz) (:id |HkegCHKdXm) (:text |negate) (:type :leaf)
                                                                          |T $ {} (:at 1531643328882) (:by |root) (:id |H1t6rtO7X) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1531643330804) (:by |root) (:id |H1t6rtO7Xleaf) (:text |:time) (:type :leaf)
                                                                              |j $ {} (:at 1531643331320) (:by |root) (:id |HJbopHFuXm) (:text |task) (:type :leaf)
                                                              |r $ {} (:at 1521045639284) (:by |root) (:id |SyNkqgRUtz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1524383275650) (:by |root) (:id |HyQk9eR8tM) (:text |map) (:type :leaf)
                                                                  |j $ {} (:at 1521045641688) (:by |root) (:id |BJeMqlCUtG) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1521045642020) (:by |root) (:id |BJMql0IYG) (:text |fn) (:type :leaf)
                                                                      |j $ {} (:at 1521045642617) (:by |root) (:id |SJ7qgCUtz) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1521045643127) (:by |root) (:id |B1mz9eRItM) (:text |task) (:type :leaf)
                                                                      |r $ {} (:at 1524383277519) (:by |root) (:id |B18NRnYnf) (:type :expr)
                                                                        :data $ {}
                                                                          |D $ {} (:at 1524383280227) (:by |root) (:id |SylU4R3thG) (:text |[]) (:type :leaf)
                                                                          |L $ {} (:at 1524383288382) (:by |root) (:id |HJmxH02Y3f) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1524383287736) (:by |root) (:id |ryt4AnY3z) (:text |:id) (:type :leaf)
                                                                              |j $ {} (:at 1524383289072) (:by |root) (:id |HybBCnthM) (:text |task) (:type :leaf)
                                                                          |T $ {} (:at 1524383453280) (:by |root) (:id |rkSJJpK2z) (:type :expr)
                                                                            :data $ {}
                                                                              |T $ {} (:at 1524383437936) (:by |root) (:id |rkASLRA3K2M) (:text |comp-done-task) (:type :leaf)
                                                                              |b $ {} (:at 1584893280130) (:by |B1y7Rc-Zz) (:id |trMgIhipv) (:type :expr)
                                                                                :data $ {}
                                                                                  |D $ {} (:at 1584893280806) (:by |B1y7Rc-Zz) (:id |9W7FwkAs3v) (:text |>>) (:type :leaf)
                                                                                  |T $ {} (:at 1567349799379) (:by |B1y7Rc-Zz) (:id |XWbKmJ4NT) (:text |states) (:type :leaf)
                                                                                  |j $ {} (:at 1584893281561) (:by |B1y7Rc-Zz) (:id |qFhQy1VHNJ) (:type :expr)
                                                                                    :data $ {}
                                                                                      |T $ {} (:at 1584893281561) (:by |B1y7Rc-Zz) (:id |cXZwGvBKvF) (:text |:id) (:type :leaf)
                                                                                      |j $ {} (:at 1584893281561) (:by |B1y7Rc-Zz) (:id |w-7s8EAEHL) (:text |task) (:type :leaf)
                                                                              |j $ {} (:at 1524383454454) (:by |root) (:id |ByLk1pFnG) (:text |task) (:type :leaf)
                                                                              |r $ {} (:at 1530033243058) (:by |root) (:id |B1Qw4egGQ) (:type :expr)
                                                                                :data $ {}
                                                                                  |T $ {} (:at 1530033245105) (:by |root) (:id |SyezPVxxfX) (:text |:editing?) (:type :leaf)
                                                                                  |j $ {} (:at 1530033246749) (:by |root) (:id |SJxrvNelfm) (:text |state) (:type :leaf)
                      |x $ {} (:at 1521952317163) (:by |root) (:id |BJlBBLjN9f) (:type :expr)
                        :data $ {}
                          |5 $ {} (:at 1530033126906) (:by |root) (:id |r1oJEglf7) (:text |;) (:type :leaf)
                          |D $ {} (:at 1521952317696) (:by |root) (:id |HJWBBIjE9G) (:text |if) (:type :leaf)
                          |L $ {} (:at 1521952327204) (:by |root) (:id |HJEJ88j4cG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521952355503) (:by |root) (:id |ryBJIIjV5M) (:text |pos?) (:type :leaf)
                              |T $ {} (:at 1521952324470) (:by |root) (:id |SkhSLsVcG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521952325244) (:by |root) (:id |BJW8S8sV5f) (:text |count) (:type :leaf)
                                  |j $ {} (:at 1521952326871) (:by |root) (:id |r1V6SLoVqG) (:text |router-data) (:type :leaf)
                          |T $ {} (:at 1521219775866) (:by |root) (:id |Sk_audKFM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521219776597) (:by |root) (:id |Sk_audKFMleaf) (:text |div) (:type :leaf)
                              |j $ {} (:at 1521219776829) (:by |root) (:id |BkbFT__FKM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521219778157) (:by |root) (:id |ByxFTd_KFG) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1521219778742) (:by |root) (:id |HJesp_utFM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521219780910) (:by |root) (:id |HJesp_utFMleaf) (:text |button) (:type :leaf)
                                  |j $ {} (:at 1521219781202) (:by |root) (:id |S146TOdtFz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521219781583) (:by |root) (:id |rk7pTO_ttM) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1521219786210) (:by |root) (:id |ByWfAuutYf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657813233921) (:by |B1y7Rc-Zz) (:id |HklMAddYKf) (:text |:class-name) (:type :leaf)
                                          |j $ {} (:at 1657813236275) (:by |B1y7Rc-Zz) (:id |S1X70duYtG) (:text |css/button) (:type :leaf)
                                      |r $ {} (:at 1521219798581) (:by |root) (:id |SJyktuYKf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1521219800190) (:by |root) (:id |SJyktuYKfleaf) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1584893164066) (:by |B1y7Rc-Zz) (:id |qRI8ZRvWA) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1584893164606) (:by |B1y7Rc-Zz) (:id |p2OE2Ry1-x) (:text |fn) (:type :leaf)
                                              |L $ {} (:at 1584893165112) (:by |B1y7Rc-Zz) (:id |mo1AjJt_5) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893165748) (:by |B1y7Rc-Zz) (:id |1dJ48dfXcL) (:text |e) (:type :leaf)
                                                  |j $ {} (:at 1584893166603) (:by |B1y7Rc-Zz) (:id |yGu7dVzMm) (:text |d!) (:type :leaf)
                                              |T $ {} (:at 1521219801015) (:by |root) (:id |HybkF_FYf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893163678) (:by |B1y7Rc-Zz) (:id |HyrgJtuKYM) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1521219810033) (:by |root) (:id |HyNyYOKFf) (:text |:task/clear-done) (:type :leaf)
                                                  |r $ {} (:at 1521219811368) (:by |root) (:id |SJskFuFYz) (:text |nil) (:type :leaf)
                                  |r $ {} (:at 1521219782329) (:by |root) (:id |H1MRaduYFf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521219783180) (:by |root) (:id |H1MRaduYFfleaf) (:text |<>) (:type :leaf)
                                      |j $ {} (:at 1521952313362) (:by |root) (:id |BJbyC_OFtz) (:text ||Clear) (:type :leaf)
                      |y $ {} (:at 1524383545621) (:by |root) (:id |S1frkpYhz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524383546876) (:by |root) (:id |S1frkpYhzleaf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1524383549159) (:by |root) (:id |SJSBkTF2z) (:text |nil) (:type :leaf)
                          |r $ {} (:at 1524383550997) (:by |root) (:id |BkmSHkTY3M) (:text |240) (:type :leaf)
          |css-done-content $ {} (:at 1657813465939) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657813467484) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1657813465939) (:by |B1y7Rc-Zz) (:text |css-done-content) (:type :leaf)
              |h $ {} (:at 1657813465939) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657813468562) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |b $ {} (:at 1657813468816) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657813470077) (:by |B1y7Rc-Zz) (:text "|\"$0") (:type :leaf)
                      |b $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:background-color) (:type :leaf)
                              |b $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                  |b $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                  |h $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                  |l $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |94) (:type :leaf)
                          |h $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:padding) (:type :leaf)
                              |b $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text "||0 8px") (:type :leaf)
                          |l $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:height) (:type :leaf)
                              |b $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |32) (:type :leaf)
                          |o $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:line-height) (:type :leaf)
                              |b $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text "|\"32px") (:type :leaf)
                          |q $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:margin-right) (:type :leaf)
                              |b $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |16) (:type :leaf)
                          |s $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:display) (:type :leaf)
                              |b $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:inline-block) (:type :leaf)
                          |t $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:overflow) (:type :leaf)
                              |b $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:auto) (:type :leaf)
                          |u $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:white-space) (:type :leaf)
                              |b $ {} (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:nowrap) (:type :leaf)
        :ns $ {} (:at 1521045523784) (:by |root) (:id |B1ehGeRLYf) (:type :expr)
          :data $ {}
            |T $ {} (:at 1521045523784) (:by |root) (:id |S1-3GlA8FG) (:text |ns) (:type :leaf)
            |j $ {} (:at 1521045523784) (:by |root) (:id |ryG3MxCLYM) (:text |app.comp.done-tasks) (:type :leaf)
            |r $ {} (:at 1500541010211) (:by nil) (:id |B1epSeR8KG) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HyJlqLelRBW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |SylgqLee0B-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1629914105071) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SJQlcUlgRr-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |By4lc8gxCB-) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |rJIlq8leCBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |ryvl5IllRSb) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1516547378489) (:by |root) (:id |H1Fgc8egCSW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |Hy9x5IeeASW) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |rkoe5LxlCBW) (:text |ui) (:type :leaf)
                |u $ {} (:at 1657813159662) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657813162259) (:by |B1y7Rc-Zz) (:text |respo-ui.css) (:type :leaf)
                    |b $ {} (:at 1657813162829) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1657813163691) (:by |B1y7Rc-Zz) (:text |css) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |B1gpZxc3yG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1542535136705) (:by |root) (:id |H189Igg0S-) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |HJw9LexRS-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1_98eeRSb) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkqqIggASZ) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |SysqUxxRH-) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |Bkh9UglCrZ) (:text |div) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |BkaqLel0H-) (:text |span) (:type :leaf)
                        |y $ {} (:at 1507815955483) (:by |root) (:id |ryjGzeahb) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1521044610764) (:by |root) (:id |rygFFhpLFf) (:text |list->) (:type :leaf)
                        |yf $ {} (:at 1584893174890) (:by |B1y7Rc-Zz) (:id |FWtdtumCy) (:text |>>) (:type :leaf)
                        |yr $ {} (:at 1521044740074) (:by |root) (:id |SJeoWaaItG) (:text |input) (:type :leaf)
                        |yv $ {} (:at 1530033383090) (:by |root) (:id |BklylHggzm) (:text |a) (:type :leaf)
                        |yx $ {} (:at 1531641984803) (:by |root) (:id |BkOKgFOmQ) (:text |pre) (:type :leaf)
                |xT $ {} (:at 1657813165012) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657813170851) (:by |B1y7Rc-Zz) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1657813172633) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657813173056) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657813174882) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |rJu-cIxlRSZ) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |By9-qLxlRHW) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1oZq8gl0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |rk2ZqUlx0SZ) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SJ0bqLggCH-) (:text |comp-inspect) (:type :leaf)
                |yD $ {} (:at 1507816109319) (:by |root) (:id |Sklr2Mg6n-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507816117447) (:by |root) (:id |SkbLhMlp3b) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1507816112686) (:by |root) (:id |H1GOhGephb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507816113982) (:by |root) (:id |rk-53Mlah-) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1507816114704) (:by |root) (:id |SyN5nGgThZ) (:text |=<) (:type :leaf)
                |yy $ {} (:at 1521044620023) (:by |root) (:id |rkeEc2T8Yz) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1521044624327) (:by |root) (:id |rJSc26IYf) (:text |respo.util.list) (:type :leaf)
                    |r $ {} (:at 1521044625168) (:by |root) (:id |SJSd93p8YM) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1521044625428) (:by |root) (:id |SJLt93TLtM) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1521044632401) (:by |root) (:id |HJWc52T8tG) (:text |map-val) (:type :leaf)
                |yyT $ {} (:at 1521044807446) (:by |root) (:id |B1bkLpTIFz) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1558366436776) (:by |B1y7Rc-Zz) (:id |HJWgITaUtz) (:text |feather.core) (:type :leaf)
                    |r $ {} (:at 1521044812982) (:by |root) (:id |SkVVUTpLKf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1521044813741) (:by |root) (:id |rkULT6UYf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1558366438838) (:by |B1y7Rc-Zz) (:id |r1fUL6a8YG) (:text |comp-i) (:type :leaf)
                        |r $ {} (:at 1629914375727) (:by |B1y7Rc-Zz) (:text |comp-icon) (:type :leaf)
                |yyb $ {} (:at 1567349763921) (:by |B1y7Rc-Zz) (:id |_sa6dV7j4x) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1572971300855) (:by |B1y7Rc-Zz) (:id |2P2EsT9Fi8) (:text |respo-alerts.core) (:type :leaf)
                    |r $ {} (:at 1567349763921) (:by |B1y7Rc-Zz) (:id |IhnT76qS1v) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1567349763921) (:by |B1y7Rc-Zz) (:id |Zq_lvwDMW4) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1629914181321) (:by |B1y7Rc-Zz) (:id |3f3dLWDfWS) (:text |use-confirm) (:type :leaf)
                |yyj $ {} (:at 1531643021557) (:by |root) (:id |SkL9Etdmm) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1531643024369) (:by |root) (:id |B1lvqNt_mm) (:text "|\"dayjs") (:type :leaf)
                    |r $ {} (:at 1629914389805) (:by |B1y7Rc-Zz) (:id |r1Mu9EYOQX) (:text |:default) (:type :leaf)
                    |v $ {} (:at 1531643025971) (:by |root) (:id |SJGK94FdQQ) (:text |dayjs) (:type :leaf)
        :proc $ {} (:at 1521045523784) (:by |root) (:id |HyQ2zeALYf) (:type :expr)
          :data $ {}
      |app.comp.home $ {}
        :defs $ {}
          |comp-home $ {} (:at 1520961835912) (:by |root) (:id |H1lNNYKBKz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1520961839567) (:by |root) (:id |SJW4NKYBtG) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1520961835912) (:by |root) (:id |HJGEEYYBFf) (:text |comp-home) (:type :leaf)
              |r $ {} (:at 1520961835912) (:by |root) (:id |rkQ44tFSFz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1520962145653) (:by |root) (:id |Bytv9tBYf) (:text |states) (:type :leaf)
                  |j $ {} (:at 1520962875220) (:by |root) (:id |HJllHaFBtf) (:text |tasks) (:type :leaf)
              |v $ {} (:at 1520962147769) (:by |root) (:id |HJ3w5FrYz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1520962150211) (:by |root) (:id |HylnvqFHtM) (:text |let) (:type :leaf)
                  |L $ {} (:at 1520962150475) (:by |root) (:id |B1VAPctrYz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1520962150622) (:by |root) (:id |rkJdqKHYf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1520962151232) (:by |root) (:id |ryQAvqtSKz) (:text |state) (:type :leaf)
                          |j $ {} (:at 1520962151549) (:by |root) (:id |Bkx_qtrKz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1520962151851) (:by |root) (:id |B1H1OqKSKG) (:text |or) (:type :leaf)
                              |j $ {} (:at 1520962152486) (:by |root) (:id |r1QlO5KStM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1520962153151) (:by |root) (:id |HkzgO9FBtM) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1520962153926) (:by |root) (:id |B1NbO9KHYz) (:text |states) (:type :leaf)
                              |r $ {} (:at 1520962154455) (:by |root) (:id |HJIGOqFBKz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1520962155421) (:by |root) (:id |r1SGdqFSFG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1520962155711) (:by |root) (:id |ByxNdcKBtM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1520962159349) (:by |root) (:id |S1EO9tSFM) (:text |:draft) (:type :leaf)
                                      |j $ {} (:at 1520962160529) (:by |root) (:id |SyXv_5tBYf) (:text ||) (:type :leaf)
                      |j $ {} (:at 1629913660176) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913680291) (:by |B1y7Rc-Zz) (:text |create-plugin) (:type :leaf)
                          |j $ {} (:at 1629913680578) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913684225) (:by |B1y7Rc-Zz) (:text |use-prompt) (:type :leaf)
                              |j $ {} (:at 1629913685440) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913686863) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                                  |j $ {} (:at 1629913687722) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                                  |r $ {} (:at 1629913690454) (:by |B1y7Rc-Zz) (:text |:create) (:type :leaf)
                              |r $ {} (:at 1629913691153) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913691864) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1629913694586) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913694586) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1629913694586) (:by |B1y7Rc-Zz) (:text "|\"New task:") (:type :leaf)
                                  |r $ {} (:at 1629913699901) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913699901) (:by |B1y7Rc-Zz) (:text |:initial) (:type :leaf)
                                      |j $ {} (:at 1629913699901) (:by |B1y7Rc-Zz) (:text "|\"") (:type :leaf)
                  |T $ {} (:at 1520961855376) (:by |root) (:id |S1wSKFHFM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1520961856733) (:by |root) (:id |S1wSKFHFMleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1520961856998) (:by |root) (:id |SJXYBKtBKG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1520961858407) (:by |root) (:id |SkfKHKYrtf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1657812955849) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657812958508) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                              |b $ {} (:at 1657812960944) (:by |B1y7Rc-Zz) (:text |css/flex) (:type :leaf)
                          |j $ {} (:at 1520961858798) (:by |root) (:id |SyxjSYKrKG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1520961860311) (:by |root) (:id |HyjHFYBFz) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1520961960961) (:by |root) (:id |rJZW3ttHtM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1520961961299) (:by |root) (:id |rkgWhKKrFG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1520961961571) (:by |root) (:id |SkzntYBFf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1520961963085) (:by |root) (:id |HJ4WhFYBtG) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1520961977424) (:by |root) (:id |r1V3YKHKz) (:text |16) (:type :leaf)
                                  |r $ {} (:at 1522254466117) (:by |root) (:id |HyeqKfBYcf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1522254468360) (:by |root) (:id |HyeqKfBYcfleaf) (:text |:overflow) (:type :leaf)
                                      |j $ {} (:at 1522254470125) (:by |root) (:id |Sk6Fzrtcz) (:text |:auto) (:type :leaf)
                      |n $ {} (:at 1521564492092) (:by |root) (:id |HJlV8s2RYf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521564492868) (:by |root) (:id |HJlV8s2RYfleaf) (:text |div) (:type :leaf)
                          |j $ {} (:at 1521564493386) (:by |root) (:id |H1mSLinCtM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521564494600) (:by |root) (:id |rJfrUs20tG) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1521564519831) (:by |root) (:id |SygxuohAKG) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521564520443) (:by |root) (:id |BJZluohAFM) (:text |<>) (:type :leaf)
                              |T $ {} (:at 1521564495228) (:by |root) (:id |rJWwLjn0KM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521564519507) (:by |root) (:id |rJWwLjn0KMleaf) (:text |str) (:type :leaf)
                                  |j $ {} (:at 1543726063394) (:by |B1y7Rc-Zz) (:id |HkbOIonRKG) (:text "||Working(") (:type :leaf)
                                  |n $ {} (:at 1521564506066) (:by |root) (:id |ryMvjn0Yz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521564506745) (:by |root) (:id |Skbbvs2RYf) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1521564508573) (:by |root) (:id |BJVwjhRtf) (:text |tasks) (:type :leaf)
                                  |r $ {} (:at 1521564504936) (:by |root) (:id |BkgJvonCtz) (:text "||)") (:type :leaf)
                              |j $ {} (:at 1521045597163) (:by |root) (:id |HyAtxYUGX) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521045597485) (:by |root) (:id |HJfBPxRUKM) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1521045597703) (:by |root) (:id |BklIveRUKf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521045599185) (:by |root) (:id |H18PgAUFG) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1521045599945) (:by |root) (:id |Bymvvx08tz) (:text |24) (:type :leaf)
                                  |r $ {} (:at 1521045600706) (:by |root) (:id |BygFvgA8Kf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521045603448) (:by |root) (:id |BygFvgA8Kfleaf) (:text |:font-family) (:type :leaf)
                                      |j $ {} (:at 1543726067861) (:by |B1y7Rc-Zz) (:id |SJBjwx08tG) (:text |ui/font-fancy) (:type :leaf)
                                  |v $ {} (:at 1521045612555) (:by |root) (:id |SJBde08tG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521045618980) (:by |root) (:id |SJBde08tGleaf) (:text |:font-weight) (:type :leaf)
                                      |j $ {} (:at 1521045619562) (:by |root) (:id |HyMiuxCLYz) (:text |100) (:type :leaf)
                          |t $ {} (:at 1530462345865) (:by |root) (:id |H1gf5xt8z7) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1530462346350) (:by |root) (:id |H1gf5xt8z7leaf) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1530462347296) (:by |root) (:id |rJXcxY8MQ) (:text |16) (:type :leaf)
                              |r $ {} (:at 1530462348018) (:by |root) (:id |B1zmceKUGm) (:text |nil) (:type :leaf)
                          |u $ {} (:at 1629913713584) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629914646418) (:by |B1y7Rc-Zz) (:text |comp-icon) (:type :leaf)
                              |j $ {} (:at 1629913713584) (:by |B1y7Rc-Zz) (:text |:plus) (:type :leaf)
                              |r $ {} (:at 1629913716150) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1629913718023) (:by |B1y7Rc-Zz) (:text |&{}) (:type :leaf)
                                  |L $ {} (:at 1629913721046) (:by |B1y7Rc-Zz) (:text |:font-size) (:type :leaf)
                                  |T $ {} (:at 1629913713584) (:by |B1y7Rc-Zz) (:text |14) (:type :leaf)
                                  |j $ {} (:at 1629913722652) (:by |B1y7Rc-Zz) (:text |:color) (:type :leaf)
                                  |r $ {} (:at 1629913724870) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913724870) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                      |j $ {} (:at 1629913724870) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |r $ {} (:at 1629913724870) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |v $ {} (:at 1629913724870) (:by |B1y7Rc-Zz) (:text |50) (:type :leaf)
                                  |v $ {} (:at 1629913727976) (:by |B1y7Rc-Zz) (:text |:cursor) (:type :leaf)
                                  |x $ {} (:at 1629913729016) (:by |B1y7Rc-Zz) (:text |:ponter) (:type :leaf)
                              |v $ {} (:at 1629913733966) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913734261) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629913734682) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913736510) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1629913737378) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1629913738164) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913741223) (:by |B1y7Rc-Zz) (:text |.show) (:type :leaf)
                                      |j $ {} (:at 1629913743278) (:by |B1y7Rc-Zz) (:text |create-plugin) (:type :leaf)
                                      |r $ {} (:at 1629913744218) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                      |v $ {} (:at 1629913744845) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913745069) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |b $ {} (:at 1629913791590) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913793076) (:by |B1y7Rc-Zz) (:text |result) (:type :leaf)
                                          |j $ {} (:at 1629913751405) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913751405) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                                              |j $ {} (:at 1629913751405) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629913751405) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                                                  |j $ {} (:at 1629913751405) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629913787082) (:by |B1y7Rc-Zz) (:text |.blank?) (:type :leaf)
                                                      |j $ {} (:at 1629913751405) (:by |B1y7Rc-Zz) (:text |result) (:type :leaf)
                                              |r $ {} (:at 1629913751405) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629913751405) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1629913751405) (:by |B1y7Rc-Zz) (:text |:task/create) (:type :leaf)
                                                  |r $ {} (:at 1629913751405) (:by |B1y7Rc-Zz) (:text |result) (:type :leaf)
                      |r $ {} (:at 1521562877504) (:by |root) (:id |rkbBWr20tf) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1521562878130) (:by |root) (:id |HJ8ZHhAtf) (:text |if) (:type :leaf)
                          |L $ {} (:at 1521562878395) (:by |root) (:id |rkQIbrnAtz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521562883506) (:by |root) (:id |ByFbBnCtM) (:text |empty?) (:type :leaf)
                              |j $ {} (:at 1521562887423) (:by |root) (:id |HkA-HhAYf) (:text |tasks) (:type :leaf)
                          |T $ {} (:at 1520961864138) (:by |root) (:id |HkWgLKKBKM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1520961864708) (:by |root) (:id |HkWgLKKBKMleaf) (:text |div) (:type :leaf)
                              |j $ {} (:at 1520961864952) (:by |root) (:id |BJMbUYKSYG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1520961865249) (:by |root) (:id |HkZb8KYSKG) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1521219383008) (:by |root) (:id |HJgyHw_YtM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657812996597) (:by |B1y7Rc-Zz) (:id |r1ySv_FFM) (:text |:css) (:type :leaf)
                                      |j $ {} (:at 1657812997979) (:by |B1y7Rc-Zz) (:id |Sk4rwuYYG) (:text |css/row-parted) (:type :leaf)
                              |v $ {} (:at 1520961870285) (:by |root) (:id |ByZU8KtrFM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1520961872619) (:by |root) (:id |ByZU8KtrFMleaf) (:text |button) (:type :leaf)
                                  |j $ {} (:at 1520961873560) (:by |root) (:id |rkcUKKHFM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1520961873895) (:by |root) (:id |BJZtLttrFM) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1520961888972) (:by |root) (:id |S1eFPFKHtM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657813000966) (:by |B1y7Rc-Zz) (:id |HyYvFYHKz) (:text |:class-name) (:type :leaf)
                                          |j $ {} (:at 1657813003362) (:by |B1y7Rc-Zz) (:id |H1liPFYHtz) (:text |css/button) (:type :leaf)
                                      |j $ {} (:at 1520961878060) (:by |root) (:id |BkWRLKYrtz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1520961879556) (:by |root) (:id |B1eRUYtBYz) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1520961887343) (:by |root) (:id |BylgPYYrtG) (:text ||Add) (:type :leaf)
                                      |r $ {} (:at 1520962231861) (:by |root) (:id |HyxxpqKrYG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1520962235960) (:by |root) (:id |HyxxpqKrYGleaf) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1520962236218) (:by |root) (:id |SkfNTqKHKf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520962236496) (:by |root) (:id |r1ZVTqFStG) (:text |fn) (:type :leaf)
                                              |j $ {} (:at 1520962236832) (:by |root) (:id |S1xBT5tBFM) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1520962237030) (:by |root) (:id |SyBa9FHtz) (:text |e) (:type :leaf)
                                                  |j $ {} (:at 1520962237548) (:by |root) (:id |HkMH65FBFM) (:text |d!) (:type :leaf)
                                              |r $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |.show) (:type :leaf)
                                                  |j $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |create-plugin) (:type :leaf)
                                                  |r $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                  |v $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                      |j $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |result) (:type :leaf)
                                                      |r $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                                                          |j $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                                                              |j $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |.blank?) (:type :leaf)
                                                                  |j $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |result) (:type :leaf)
                                                          |r $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                              |j $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |:task/create) (:type :leaf)
                                                              |r $ {} (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |result) (:type :leaf)
                      |v $ {} (:at 1520961907595) (:by |root) (:id |S12utFrtz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1520962880625) (:by |root) (:id |S12utFrtzleaf) (:text |list->) (:type :leaf)
                          |j $ {} (:at 1520961908277) (:by |root) (:id |ryE3dtYStM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1520961908593) (:by |root) (:id |S1XnuttSKM) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1521218958891) (:by |root) (:id |rkgv9H_tKf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521218959797) (:by |root) (:id |H1vqB_KtM) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1521218960448) (:by |root) (:id |ByMu5B_KYz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521218960790) (:by |root) (:id |BJbd5HOYYf) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1521218961075) (:by |root) (:id |rkGtcH_FKM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1521218962584) (:by |root) (:id |H1-Y5SOKKG) (:text |:position) (:type :leaf)
                                          |j $ {} (:at 1521218964555) (:by |root) (:id |ByWj9HOtYM) (:text |:relative) (:type :leaf)
                                      |r $ {} (:at 1521219270187) (:by |root) (:id |rJlCTLdYFf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1521219271583) (:by |root) (:id |rJlCTLdYFfleaf) (:text |:height) (:type :leaf)
                                          |j $ {} (:at 1521219272640) (:by |root) (:id |HkxbRIuKFG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1521219273100) (:by |root) (:id |HJglCU_FYG) (:text |+) (:type :leaf)
                                              |j $ {} (:at 1521219276695) (:by |root) (:id |HkmALdYYf) (:text |8) (:type :leaf)
                                              |r $ {} (:at 1521219290942) (:by |root) (:id |BklX1wdtYG) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1521219291756) (:by |root) (:id |BJ-7JDdYtG) (:text |*) (:type :leaf)
                                                  |L $ {} (:at 1521219294017) (:by |root) (:id |B1lNyvOFFf) (:text |48) (:type :leaf)
                                                  |T $ {} (:at 1521219277011) (:by |root) (:id |HJ-SC8_KYf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1521219278276) (:by |root) (:id |BJgBC8_tFf) (:text |count) (:type :leaf)
                                                      |j $ {} (:at 1521219287506) (:by |root) (:id |HJguCU_FKz) (:text |tasks) (:type :leaf)
                          |r $ {} (:at 1520962882028) (:by |root) (:id |r1cBTFHYf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913802170) (:by |B1y7Rc-Zz) (:id |H1bYBpKBFM) (:text |->) (:type :leaf)
                              |j $ {} (:at 1520962886863) (:by |root) (:id |Bk2rpYHKG) (:text |tasks) (:type :leaf)
                              |l $ {} (:at 1629914717751) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629914719075) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |n $ {} (:at 1521132549341) (:by |root) (:id |HkbabEmdYM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913805077) (:by |B1y7Rc-Zz) (:id |H1x6-VX_Kz) (:text |.sort-by) (:type :leaf)
                                  |j $ {} (:at 1521132554428) (:by |root) (:id |S1efMNmutG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521132554882) (:by |root) (:id |H1fGEX_FG) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1521132555403) (:by |root) (:id |SJfmz47Otf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913814394) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                      |r $ {} (:at 1521132566926) (:by |root) (:id |ryeyQVQuFz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1629913811442) (:by |B1y7Rc-Zz) (:id |rJWJ74mOKG) (:text |negate) (:type :leaf)
                                          |T $ {} (:at 1521132562706) (:by |root) (:id |S1jGVXutz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1521132565229) (:by |root) (:id |S1jGVXutzleaf) (:text |:time) (:type :leaf)
                                              |j $ {} (:at 1629913807137) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1629913808024) (:by |B1y7Rc-Zz) (:text |last) (:type :leaf)
                                                  |T $ {} (:at 1629913809342) (:by |B1y7Rc-Zz) (:id |SJAfNQuYf) (:text |pair) (:type :leaf)
                              |r $ {} (:at 1520962887236) (:by |root) (:id |HyVJU6KBFG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913816150) (:by |B1y7Rc-Zz) (:id |By7186YSFz) (:text |.map-indexed) (:type :leaf)
                                  |j $ {} (:at 1520962893720) (:by |root) (:id |HJxUL6YBFM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1520962894007) (:by |root) (:id |SkLLaFHKf) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1520962894248) (:by |root) (:id |B1VILaFHtG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1521218902246) (:by |root) (:id |SJxpLrdFFz) (:text |idx) (:type :leaf)
                                          |b $ {} (:at 1629913833174) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                      |v $ {} (:at 1629913822982) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1629913824322) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                                          |L $ {} (:at 1629913824638) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913824981) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629913825331) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                                  |j $ {} (:at 1629913826382) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1629913829923) (:by |B1y7Rc-Zz) (:text |last) (:type :leaf)
                                                      |T $ {} (:at 1629913827021) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                          |T $ {} (:at 1521218903641) (:by |root) (:id |rJlPruKYM) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1521218904603) (:by |root) (:id |S1egvBuFYG) (:text |[]) (:type :leaf)
                                              |L $ {} (:at 1521218905177) (:by |root) (:id |rkM-wrOYFf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1521218907022) (:by |root) (:id |SyW-DH_ttG) (:text |:id) (:type :leaf)
                                                  |j $ {} (:at 1521218907577) (:by |root) (:id |HkWXvrdFtz) (:text |task) (:type :leaf)
                                              |T $ {} (:at 1521043074144) (:by |root) (:id |HyqFIpLFG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1521043088403) (:by |root) (:id |HyqFIpLFGleaf) (:text |comp-task) (:type :leaf)
                                                  |b $ {} (:at 1584892898442) (:by |B1y7Rc-Zz) (:id |CWvatHFoS0) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1584892899034) (:by |B1y7Rc-Zz) (:id |Cs8milg1Jw) (:text |>>) (:type :leaf)
                                                      |T $ {} (:at 1521133152851) (:by |root) (:id |HyuD8QdFf) (:text |states) (:type :leaf)
                                                      |j $ {} (:at 1584892899975) (:by |B1y7Rc-Zz) (:id |QC3KB2C0jg) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1584892899975) (:by |B1y7Rc-Zz) (:id |qtpzNv0-Oa) (:text |:id) (:type :leaf)
                                                          |j $ {} (:at 1584892899975) (:by |B1y7Rc-Zz) (:id |G-4zEYjm7Y) (:text |task) (:type :leaf)
                                                  |j $ {} (:at 1521043090794) (:by |root) (:id |Bkc586LKM) (:text |task) (:type :leaf)
                                                  |r $ {} (:at 1521218913675) (:by |root) (:id |BJtPSdtFz) (:text |idx) (:type :leaf)
                              |v $ {} (:at 1521219089486) (:by |root) (:id |BJFfUdKYz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913837509) (:by |B1y7Rc-Zz) (:id |BJFfUdKYzleaf) (:text |.sort-by) (:type :leaf)
                                  |j $ {} (:at 1521219092568) (:by |root) (:id |r1bhzI_FKG) (:text |first) (:type :leaf)
                      |x $ {} (:at 1629913707417) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913708213) (:by |B1y7Rc-Zz) (:text |.render) (:type :leaf)
                          |j $ {} (:at 1629913708798) (:by |B1y7Rc-Zz) (:text |create-plugin) (:type :leaf)
          |comp-task $ {} (:at 1521043093402) (:by |root) (:id |Skx65Lp8Yz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521043096319) (:by |root) (:id |r1Zp9UaLtM) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1521043093402) (:by |root) (:id |Byf6986Utz) (:text |comp-task) (:type :leaf)
              |r $ {} (:at 1521043093402) (:by |root) (:id |HyQpqUTUFf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1521133157064) (:by |root) (:id |rJenDUmuYG) (:text |states) (:type :leaf)
                  |T $ {} (:at 1521043098155) (:by |root) (:id |H1WWs8pLFG) (:text |task) (:type :leaf)
                  |j $ {} (:at 1521218917999) (:by |root) (:id |SyepvrOtFf) (:text |idx) (:type :leaf)
              |v $ {} (:at 1536775381601) (:by |root) (:id |v3tePSM6q) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1536775383200) (:by |root) (:id |fXUeDCVjJS) (:text |let) (:type :leaf)
                  |L $ {} (:at 1536775383429) (:by |root) (:id |x7Hhrnz3sz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1584892905123) (:by |B1y7Rc-Zz) (:id |VkZxhUfL8) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584892905960) (:by |B1y7Rc-Zz) (:id |VkZxhUfL8leaf) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1584892906163) (:by |B1y7Rc-Zz) (:id |1DLnBXkF5) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1584892908379) (:by |B1y7Rc-Zz) (:id |moJEnsED9) (:text |:cursor) (:type :leaf)
                              |T $ {} (:at 1584892906936) (:by |B1y7Rc-Zz) (:id |BWSvwfGjAu) (:text |states) (:type :leaf)
                      |T $ {} (:at 1536775383616) (:by |root) (:id |vZ-3IWXLi) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1536775384248) (:by |root) (:id |Q61gOXNp8i) (:text |state) (:type :leaf)
                          |j $ {} (:at 1536775385570) (:by |root) (:id |q-Jkuo2vQ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536775386285) (:by |root) (:id |KdhfY2UtqU) (:text |or) (:type :leaf)
                              |j $ {} (:at 1536775386536) (:by |root) (:id |pzZYEKBf4) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536775387248) (:by |root) (:id |mAiBbOfwig) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1536775388758) (:by |root) (:id |S56FjAicMB) (:text |states) (:type :leaf)
                              |r $ {} (:at 1536775389681) (:by |root) (:id |h3HI7vj3B) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536775391306) (:by |root) (:id |HBryJ8WMFt) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1536775391686) (:by |root) (:id |4kn3mxfDh) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536775395552) (:by |root) (:id |opicXt1mKA) (:text |:show-menu?) (:type :leaf)
                                      |j $ {} (:at 1536775396771) (:by |root) (:id |lcyMpPXl6d) (:text |false) (:type :leaf)
                                  |r $ {} (:at 1536775398248) (:by |root) (:id |2GklqFpP46) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536775400346) (:by |root) (:id |2GklqFpP46leaf) (:text |:show-editor?) (:type :leaf)
                                      |j $ {} (:at 1536775401657) (:by |root) (:id |-kl4cR2Nw) (:text |false) (:type :leaf)
                                  |x $ {} (:at 1536819683844) (:by |B1y7Rc-Zz) (:id |POMktjwVHd) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536819688243) (:by |B1y7Rc-Zz) (:id |POMktjwVHdleaf) (:text |:task-draft) (:type :leaf)
                                      |j $ {} (:at 1536819695429) (:by |B1y7Rc-Zz) (:id |krt3-RThM_) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1536819696534) (:by |B1y7Rc-Zz) (:id |tARQGhQLZ) (:text |:text) (:type :leaf)
                                          |j $ {} (:at 1536819698674) (:by |B1y7Rc-Zz) (:id |Qy3H-DlFyH) (:text |task) (:type :leaf)
                      |b $ {} (:at 1586594648651) (:by |B1y7Rc-Zz) (:id |HluUBPg5N) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1586594677847) (:by |B1y7Rc-Zz) (:id |HluUBPg5Nleaf) (:text |remove-plugin) (:type :leaf)
                          |j $ {} (:at 1586594678565) (:by |B1y7Rc-Zz) (:id |mnyn0di2ju) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1586594685328) (:by |B1y7Rc-Zz) (:id |XZ1a6hB-I) (:text |use-confirm) (:type :leaf)
                              |j $ {} (:at 1586594686367) (:by |B1y7Rc-Zz) (:id |7FequIYvj) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1586594686819) (:by |B1y7Rc-Zz) (:id |qMF4_oEo68) (:text |>>) (:type :leaf)
                                  |j $ {} (:at 1586594687824) (:by |B1y7Rc-Zz) (:id |aBw5_cmdOf) (:text |states) (:type :leaf)
                                  |r $ {} (:at 1586594690940) (:by |B1y7Rc-Zz) (:id |QIoeTc3yy) (:text |:remove) (:type :leaf)
                              |r $ {} (:at 1586594691818) (:by |B1y7Rc-Zz) (:id |D29pGZuRzF) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1586594692180) (:by |B1y7Rc-Zz) (:id |bpeXhbKZLS) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1586594692429) (:by |B1y7Rc-Zz) (:id |tm1cTSPuAz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1586594694859) (:by |B1y7Rc-Zz) (:id |AQ4z60Sn4p) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1586594704508) (:by |B1y7Rc-Zz) (:id |9RoZ4AtwnL) (:text "|\"Sure to remove?") (:type :leaf)
                      |f $ {} (:at 1586595023741) (:by |B1y7Rc-Zz) (:id |CYe7t5RM1A) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1586595028343) (:by |B1y7Rc-Zz) (:id |CYe7t5RM1Aleaf) (:text |update-plugin) (:type :leaf)
                          |j $ {} (:at 1586595028681) (:by |B1y7Rc-Zz) (:id |p8_urzTnKz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1586595030399) (:by |B1y7Rc-Zz) (:id |olSiXN2Zqq) (:text |use-prompt) (:type :leaf)
                              |j $ {} (:at 1586595030858) (:by |B1y7Rc-Zz) (:id |7DKwNtmAv9) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1586595031367) (:by |B1y7Rc-Zz) (:id |OaEvV_EDiP) (:text |>>) (:type :leaf)
                                  |j $ {} (:at 1586595032226) (:by |B1y7Rc-Zz) (:id |DaYbU-yL_a) (:text |states) (:type :leaf)
                                  |r $ {} (:at 1586595038791) (:by |B1y7Rc-Zz) (:id |BKiEGei038) (:text |:update) (:type :leaf)
                              |r $ {} (:at 1586595039582) (:by |B1y7Rc-Zz) (:id |7r2y1G87t) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1586595040119) (:by |B1y7Rc-Zz) (:id |7r2y1G87tleaf) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1586595040377) (:by |B1y7Rc-Zz) (:id |XFmYWXFIny) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1586595041835) (:by |B1y7Rc-Zz) (:id |AMT6rLNHwc) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1586595050814) (:by |B1y7Rc-Zz) (:id |ov6FRTXtJ0) (:text "|\"Edit task:") (:type :leaf)
                                  |r $ {} (:at 1586595051993) (:by |B1y7Rc-Zz) (:id |9wzQdtlYj7) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1586595056505) (:by |B1y7Rc-Zz) (:id |9wzQdtlYj7leaf) (:text |:initial) (:type :leaf)
                                      |j $ {} (:at 1586595056979) (:by |B1y7Rc-Zz) (:id |7CPhL2gEWC) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586595061164) (:by |B1y7Rc-Zz) (:id |M8DI78wq4X) (:text |:text) (:type :leaf)
                                          |j $ {} (:at 1586595063032) (:by |B1y7Rc-Zz) (:id |j9UnvGtNhc) (:text |task) (:type :leaf)
                                  |v $ {} (:at 1586595065230) (:by |B1y7Rc-Zz) (:id |2uBHnINoK) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1586595069031) (:by |B1y7Rc-Zz) (:id |2uBHnINoKleaf) (:text |:button-text) (:type :leaf)
                                      |j $ {} (:at 1586595074677) (:by |B1y7Rc-Zz) (:id |TGC20f4fo) (:text "|\"Edit") (:type :leaf)
                  |T $ {} (:at 1521043098678) (:by |root) (:id |SJmjITItf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521043101248) (:by |root) (:id |SJmjITItfleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1521043101491) (:by |root) (:id |SySHoLTLYz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521043101832) (:by |root) (:id |HJVBsI6LtM) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1657813020241) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657813025107) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                              |b $ {} (:at 1657813026144) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657813028098) (:by |B1y7Rc-Zz) (:text |str-spaced) (:type :leaf)
                                  |b $ {} (:at 1657813029167) (:by |B1y7Rc-Zz) (:text |css/row) (:type :leaf)
                                  |h $ {} (:at 1657813056258) (:by |B1y7Rc-Zz) (:text |css-item) (:type :leaf)
                          |j $ {} (:at 1521043124574) (:by |root) (:id |HyT2U6IYG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521043126115) (:by |root) (:id |r1b3nUaIYf) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1521043503680) (:by |root) (:id |HJx_N_pIFM) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1521043505869) (:by |root) (:id |B1WdV_aUKf) (:text |merge) (:type :leaf)
                                  |j $ {} (:at 1536777853355) (:by |root) (:id |MG8ZLIo_5) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536777854236) (:by |root) (:id |bi5Jzb0yLZ) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1536777855459) (:by |root) (:id |MHsPvFAgR9) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1536777855459) (:by |root) (:id |g9tcJ7LMwy) (:text |:top) (:type :leaf)
                                          |j $ {} (:at 1536777855459) (:by |root) (:id |J0TCkXe2eG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1536777855459) (:by |root) (:id |3hc0HsfZht) (:text |+) (:type :leaf)
                                              |j $ {} (:at 1536777855459) (:by |root) (:id |D8gcZIzapZ) (:text |8) (:type :leaf)
                                              |r $ {} (:at 1536777855459) (:by |root) (:id |ggrMUnN6lk) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1536777855459) (:by |root) (:id |4VaNxKHpwy) (:text |*) (:type :leaf)
                                                  |j $ {} (:at 1536777855459) (:by |root) (:id |ANPp1J-cen) (:text |idx) (:type :leaf)
                                                  |r $ {} (:at 1536777855459) (:by |root) (:id |tiOcd9v2WN) (:text |48) (:type :leaf)
                                  |r $ {} (:at 1536946548128) (:by |root) (:id |OcQTFQ_WoJ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536946564383) (:by |root) (:id |OcQTFQ_WoJleaf) (:text |when) (:type :leaf)
                                      |j $ {} (:at 1536946557076) (:by |root) (:id |BaNVuO_ei2) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1536946557620) (:by |root) (:id |-kYRTjoa_l) (:text |or) (:type :leaf)
                                          |L $ {} (:at 1536946661406) (:by |root) (:id |nZMSFeHdyi) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1536946661406) (:by |root) (:id |sZeyAnylgo) (:text |:show-menu?) (:type :leaf)
                                              |j $ {} (:at 1536946669436) (:by |root) (:id |13NZq9TvcP) (:text |state) (:type :leaf)
                                          |T $ {} (:at 1536946550628) (:by |root) (:id |mmWVOnLZT) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1536946553609) (:by |root) (:id |P3LkAB9xC0) (:text |:show-editor?) (:type :leaf)
                                              |j $ {} (:at 1536946556597) (:by |root) (:id |Fq5J0Bz9lZ) (:text |state) (:type :leaf)
                                      |r $ {} (:at 1536946564951) (:by |root) (:id |Hel7M11HXg) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1536946565400) (:by |root) (:id |Hel7M11HXgleaf) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1536946565761) (:by |root) (:id |ZSueFIkdq7) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1536946580313) (:by |root) (:id |ydtPdb1Ky) (:text |:outline) (:type :leaf)
                                              |j $ {} (:at 1536946581397) (:by |root) (:id |VJxbCgdEb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1536946582705) (:by |root) (:id |LbbrUrAprO) (:text |str) (:type :leaf)
                                                  |j $ {} (:at 1536946642524) (:by |root) (:id |96Jikw3QLf) (:text "|\"2px solid ") (:type :leaf)
                                                  |r $ {} (:at 1536946588566) (:by |root) (:id |LtqRrP93U) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1536946592992) (:by |root) (:id |loKqw1z60v) (:text |hsl) (:type :leaf)
                                                      |j $ {} (:at 1536946594380) (:by |root) (:id |rTYXlrPsyP) (:text |240) (:type :leaf)
                                                      |r $ {} (:at 1536946595036) (:by |root) (:id |G1j07faQt) (:text |80) (:type :leaf)
                                                      |v $ {} (:at 1536946687904) (:by |root) (:id |7ZXeLorscx) (:text |86) (:type :leaf)
                          |r $ {} (:at 1536777711256) (:by |root) (:id |qGXrgCfwS1) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536777711256) (:by |root) (:id |KTQAcKlk4e) (:text |:on-click) (:type :leaf)
                              |j $ {} (:at 1536777711256) (:by |root) (:id |kOM0mhI4tb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536777711256) (:by |root) (:id |Aeb3yQMmQu) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1536777711256) (:by |root) (:id |J46zra3uwY) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536777711256) (:by |root) (:id |xUhrwuydi4) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1536777711256) (:by |root) (:id |4PiAMJ8fwU) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1536777711256) (:by |root) (:id |vtGBGNS5tL) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1584892921623) (:by |B1y7Rc-Zz) (:id |_Hx3Qbxt2b) (:text |d!) (:type :leaf)
                                      |b $ {} (:at 1584892923795) (:by |B1y7Rc-Zz) (:id |dZ1iiL1S2x) (:text |cursor) (:type :leaf)
                                      |j $ {} (:at 1536777711256) (:by |root) (:id |JkwaBL8-SK) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1536777711256) (:by |root) (:id |ydUXAAhyB2) (:text |assoc) (:type :leaf)
                                          |j $ {} (:at 1536777711256) (:by |root) (:id |zshSYDXQbz) (:text |state) (:type :leaf)
                                          |r $ {} (:at 1536777711256) (:by |root) (:id |elPGdP5UpFi) (:text |:show-menu?) (:type :leaf)
                                          |v $ {} (:at 1536777711256) (:by |root) (:id |YOyn2qRcNAS) (:text |true) (:type :leaf)
                          |v $ {} (:at 1566926211718) (:by |B1y7Rc-Zz) (:id |XRnJbQuuc) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1566926214338) (:by |B1y7Rc-Zz) (:id |XRnJbQuucleaf) (:text |:draggable) (:type :leaf)
                              |j $ {} (:at 1566926215393) (:by |B1y7Rc-Zz) (:id |U3-Lu__9g) (:text |true) (:type :leaf)
                          |x $ {} (:at 1566926226813) (:by |B1y7Rc-Zz) (:id |4JPgaWvGU) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1566926228061) (:by |B1y7Rc-Zz) (:id |4JPgaWvGUleaf) (:text |:on-dragend) (:type :leaf)
                              |j $ {} (:at 1566926258569) (:by |B1y7Rc-Zz) (:id |jQSB52n5w) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1566926259073) (:by |B1y7Rc-Zz) (:id |dwmd0eAR-9) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1566926259402) (:by |B1y7Rc-Zz) (:id |KaBMDUxwbA) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1566926259583) (:by |B1y7Rc-Zz) (:id |0eHmYtn9DF) (:text |e) (:type :leaf)
                                      |j $ {} (:at 1566926260272) (:by |B1y7Rc-Zz) (:id |B4TsBusiZq) (:text |d!) (:type :leaf)
                                  |r $ {} (:at 1566926262042) (:by |B1y7Rc-Zz) (:id |FtGzu6Q-bt) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1566926262042) (:by |B1y7Rc-Zz) (:id |xZSEu4qXxt) (:text |d!) (:type :leaf)
                                      |j $ {} (:at 1566926262042) (:by |B1y7Rc-Zz) (:id |nzsUQFctdr) (:text |:task/touch-working) (:type :leaf)
                                      |r $ {} (:at 1566926262042) (:by |B1y7Rc-Zz) (:id |TLwcKviOc6) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1566926262042) (:by |B1y7Rc-Zz) (:id |XE2SvIm9HM) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1566926262042) (:by |B1y7Rc-Zz) (:id |k7x81Juyvw) (:text |task) (:type :leaf)
                      |l $ {} (:at 1536777732498) (:by |root) (:id |oTdlTbznMP) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1536777699391) (:by |root) (:id |ZVzM2zOwqM) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1536777699391) (:by |root) (:id |59HNFAIxzs) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536777699391) (:by |root) (:id |Gn6tKBLPH6) (:text |:text) (:type :leaf)
                              |j $ {} (:at 1536777699391) (:by |root) (:id |EXmrT_9Cir) (:text |task) (:type :leaf)
                          |r $ {} (:at 1585589454286) (:by |B1y7Rc-Zz) (:id |DRDwEptFR) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1585589456414) (:by |B1y7Rc-Zz) (:id |Wdr1CoGbPm) (:text |merge) (:type :leaf)
                              |L $ {} (:at 1585589459441) (:by |B1y7Rc-Zz) (:id |brIR0pJVQJ) (:text |ui/expand) (:type :leaf)
                              |T $ {} (:at 1543727211628) (:by |B1y7Rc-Zz) (:id |qnw-E5EWd) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1543727212284) (:by |B1y7Rc-Zz) (:id |MhbHhj3rh1) (:text |{}) (:type :leaf)
                                  |T $ {} (:at 1543727210974) (:by |B1y7Rc-Zz) (:id |PbMkYskRgm) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1543727210974) (:by |B1y7Rc-Zz) (:id |UqrB3Cg2Uc) (:text |:text-overflow) (:type :leaf)
                                      |j $ {} (:at 1543727210974) (:by |B1y7Rc-Zz) (:id |0tLupYRDpz) (:text |:ellipsis) (:type :leaf)
                                  |j $ {} (:at 1543727222192) (:by |B1y7Rc-Zz) (:id |hKrF-ZaJoH) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1543727225194) (:by |B1y7Rc-Zz) (:id |hKrF-ZaJoHleaf) (:text |:overflow) (:type :leaf)
                                      |j $ {} (:at 1543727226907) (:by |B1y7Rc-Zz) (:id |p4KqP6Z_iI) (:text |:hidden) (:type :leaf)
                                  |r $ {} (:at 1543727229945) (:by |B1y7Rc-Zz) (:id |of1d9xpXzD) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1543727232346) (:by |B1y7Rc-Zz) (:id |of1d9xpXzDleaf) (:text |:max-width) (:type :leaf)
                                      |j $ {} (:at 1543727234634) (:by |B1y7Rc-Zz) (:id |p1_hqIO5v) (:text "|\"100%") (:type :leaf)
                      |y $ {} (:at 1530462110650) (:by |root) (:id |BJPoktUz7) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1530462111113) (:by |root) (:id |BJPoktUz7leaf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1530462449235) (:by |root) (:id |SyKskKIMQ) (:text |32) (:type :leaf)
                          |r $ {} (:at 1530462114078) (:by |root) (:id |B1cokF8fQ) (:text |nil) (:type :leaf)
                      |yF $ {} (:at 1572971695879) (:by |B1y7Rc-Zz) (:id |SLTVGlCRl) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1572971696863) (:by |B1y7Rc-Zz) (:id |SLTVGlCRlleaf) (:text |comp-modal-menu) (:type :leaf)
                          |r $ {} (:at 1572971703098) (:by |B1y7Rc-Zz) (:id |aVkkp1lO-p) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1572971703384) (:by |B1y7Rc-Zz) (:id |3xvWTgdRe) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1572971703591) (:by |B1y7Rc-Zz) (:id |MI-K7y8GZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1572971704289) (:by |B1y7Rc-Zz) (:id |UsGSS1s0aL) (:text |:title) (:type :leaf)
                                  |j $ {} (:at 1572971708746) (:by |B1y7Rc-Zz) (:id |EhNShMFrS) (:text "|\"Operations") (:type :leaf)
                              |r $ {} (:at 1572972407100) (:by |B1y7Rc-Zz) (:id |CSBWTvRDhr) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1572972407100) (:by |B1y7Rc-Zz) (:id |dfLb1Wqcmv) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1572972407100) (:by |B1y7Rc-Zz) (:id |2qrLwTASBT) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1572972407100) (:by |B1y7Rc-Zz) (:id |DTFnWT1Uo8) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1572972407100) (:by |B1y7Rc-Zz) (:id |2lF6sqJelR) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1572972407100) (:by |B1y7Rc-Zz) (:id |rentNPzIuJ) (:text |:line-height) (:type :leaf)
                                          |j $ {} (:at 1572972407100) (:by |B1y7Rc-Zz) (:id |x8YaSKvMwL) (:text "|\"24px") (:type :leaf)
                              |v $ {} (:at 1584893393538) (:by |B1y7Rc-Zz) (:id |zt7AIia5Du) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584893394723) (:by |B1y7Rc-Zz) (:id |zt7AIia5Duleaf) (:text |:items) (:type :leaf)
                                  |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |_hvkF_UOj0) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629914821447) (:by |B1y7Rc-Zz) (:id |KELv6AS6EO) (:text |&list:concat) (:type :leaf)
                                      |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |PrS0mBBy6o) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |Bsw3Yr7-og) (:text |if) (:type :leaf)
                                          |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |l79HPLNrNo) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629914437394) (:by |B1y7Rc-Zz) (:id |jnhpHp5yG4) (:text |.!test) (:type :leaf)
                                              |f $ {} (:at 1629914448340) (:by |B1y7Rc-Zz) (:text |http-pattern) (:type :leaf)
                                              |r $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |db_0_8-nvC) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |LPaj9eEk7n) (:text |:text) (:type :leaf)
                                                  |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |TmAGxnakKa) (:text |task) (:type :leaf)
                                          |r $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |yOvKkCkOxe) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |iv2-fmB084) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |_sitRhCInE) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |kWxN051D0RE) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |2ZcnccUw04o) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |7G1B01Wqr02) (:text |:value) (:type :leaf)
                                                      |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |iJjI5wIRpxB) (:text |:open) (:type :leaf)
                                                  |r $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |A8zevNALwDj) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |bM86Kw00r1L) (:text |:display) (:type :leaf)
                                                      |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |L-0dmS4Cbbr) (:text "|\"Open Link") (:type :leaf)
                                          |v $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |UKVEFs29sqA) (:text |nil) (:type :leaf)
                                      |r $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |9HpRjmCqWEr) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |A5AjwUOdxey) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |6svxAo-awUq) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |beE0EwbU5fL) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |DXgHTvldUof) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |WNSoQtlKiNv) (:text |:value) (:type :leaf)
                                                  |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |Vb4e5MZvNxi) (:text |:finish) (:type :leaf)
                                              |r $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |_PAZbjhjWPJ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |0kwJnc0QRNg) (:text |:display) (:type :leaf)
                                                  |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |bfY82r-1CJl) (:text "|\"Finish") (:type :leaf)
                                          |r $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |MATJ3yphYSy) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |dfNKHHsdpkl) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |BfXvpUz_eN2) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |DnzxVNcYv_1) (:text |:value) (:type :leaf)
                                                  |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |-7AN7C8ZWR-) (:text |:edit) (:type :leaf)
                                              |r $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |21BB76J4Pbo) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |aTlOkvDm6qq) (:text |:display) (:type :leaf)
                                                  |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |NQZduXLmnzH) (:text "|\"Edit") (:type :leaf)
                                          |v $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |MFOntNy4m1d) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |Xk05rZytQI2) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |Rzsq34CMF5p) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |VnN02mvUhE5) (:text |:value) (:type :leaf)
                                                  |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |KgAmTYeG-zd) (:text |:postpone) (:type :leaf)
                                              |r $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |SWymND3sWLu) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |m18uCmf_UTb) (:text |:display) (:type :leaf)
                                                  |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |SnHJGKfm8A6) (:text "|\"Postpone") (:type :leaf)
                                          |x $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |IszMWjYt1oM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |bYyzwso6gEt) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |wKqXBSbhuY0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |-IGNk-ls6FE) (:text |:value) (:type :leaf)
                                                  |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |IxRMD5TmDBy) (:text |:touch) (:type :leaf)
                                              |r $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |QKHqZsa23qs) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |KcYgR51YHW7) (:text |:display) (:type :leaf)
                                                  |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |8Tlf5s5lVLz) (:text "|\"Up") (:type :leaf)
                                          |y $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |dtuzEywkias) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |MFTIW0I2aJC) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |yWD_zdXhU0U) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |7OVmm5iBByH) (:text |:value) (:type :leaf)
                                                  |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |9q109eDLVtw) (:text |:remove) (:type :leaf)
                                              |r $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |zhwYquuIHTO) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |euirkc-Nt2S) (:text |:display) (:type :leaf)
                                                  |j $ {} (:at 1584893395188) (:by |B1y7Rc-Zz) (:id |8PyMt9giXKW) (:text "|\"Remove") (:type :leaf)
                          |u $ {} (:at 1584893398561) (:by |B1y7Rc-Zz) (:id |aC7Fl98AcE) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584893398561) (:by |B1y7Rc-Zz) (:id |rPONH55COH) (:text |:show-menu?) (:type :leaf)
                              |j $ {} (:at 1584893398561) (:by |B1y7Rc-Zz) (:id |Ax9DkKpY83) (:text |state) (:type :leaf)
                          |x $ {} (:at 1572971780497) (:by |B1y7Rc-Zz) (:id |IA46xaTnZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1572971782071) (:by |B1y7Rc-Zz) (:id |IA46xaTnZleaf) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1572971782455) (:by |B1y7Rc-Zz) (:id |d9Bp8xMu4i) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584892930771) (:by |B1y7Rc-Zz) (:id |VminNi0Fih) (:text |d!) (:type :leaf)
                              |r $ {} (:at 1572971784724) (:by |B1y7Rc-Zz) (:id |_F0__gy9MJ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584892932220) (:by |B1y7Rc-Zz) (:id |_F0__gy9MJleaf) (:text |d!) (:type :leaf)
                                  |b $ {} (:at 1584892929220) (:by |B1y7Rc-Zz) (:id |ZxX9rnuU17) (:text |cursor) (:type :leaf)
                                  |j $ {} (:at 1572971788689) (:by |B1y7Rc-Zz) (:id |uOyY8t5Di) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1572971790124) (:by |B1y7Rc-Zz) (:id |yYptwsid9S) (:text |assoc) (:type :leaf)
                                      |j $ {} (:at 1572971793399) (:by |B1y7Rc-Zz) (:id |vj_slzN3sj) (:text |state) (:type :leaf)
                                      |r $ {} (:at 1572971793974) (:by |B1y7Rc-Zz) (:id |XiDAkxAOWj) (:text |:show-menu?) (:type :leaf)
                                      |v $ {} (:at 1572971795173) (:by |B1y7Rc-Zz) (:id |UdofJA-0h) (:text |false) (:type :leaf)
                          |y $ {} (:at 1572971796706) (:by |B1y7Rc-Zz) (:id |Rqg6OnmvH) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1572971797715) (:by |B1y7Rc-Zz) (:id |Rqg6OnmvHleaf) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1572971798246) (:by |B1y7Rc-Zz) (:id |rJlzt1OyME) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1572971887756) (:by |B1y7Rc-Zz) (:id |6ELEb7c0rf) (:text |item) (:type :leaf)
                                  |j $ {} (:at 1572971891108) (:by |B1y7Rc-Zz) (:id |p8himuXRqf) (:text |d!) (:type :leaf)
                              |v $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |3ndEPnitv1) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |NqTGIcrMZG) (:text |let) (:type :leaf)
                                  |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |hXg9MnJ7VR) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |8QD04EH9ih) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |vn04o1EZQE) (:text |new-state) (:type :leaf)
                                          |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |4MWbcAU9g7) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |drYYlSC0Oj) (:text |assoc) (:type :leaf)
                                              |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |36SdxbP-Nx) (:text |state) (:type :leaf)
                                              |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |9eUL0JmRBz) (:text |:show-menu?) (:type :leaf)
                                              |v $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |mmbe0xUg5a) (:text |false) (:type :leaf)
                                  |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |SlIwMYOq-V) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913866516) (:by |B1y7Rc-Zz) (:id |_l23B2FFFY) (:text |case-default) (:type :leaf)
                                      |j $ {} (:at 1586594815264) (:by |B1y7Rc-Zz) (:id |32gUjf5O3n) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586594815264) (:by |B1y7Rc-Zz) (:id |hIiwjiwXYZ) (:text |:value) (:type :leaf)
                                          |j $ {} (:at 1586594815264) (:by |B1y7Rc-Zz) (:id |n4oTlSwLWW) (:text |item) (:type :leaf)
                                      |n $ {} (:at 1629913868047) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |-F2OYNSnZn) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |C74sdbgYzD) (:text |:finish) (:type :leaf)
                                          |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |e9QVo7Sih5j) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |pONPl0D7MkO) (:text |do) (:type :leaf)
                                              |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |yZ4gAiIDyoG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |-81S2cxHDqy) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |1s8RDgkSUCL) (:text |:task/move-task) (:type :leaf)
                                                  |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |dulGbzUNiWO) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |z7CZDZr_tGY) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |Xh5fc-C02J7) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |zoOEkjj1qP2) (:text |:id) (:type :leaf)
                                                          |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |zPG4IQlQc79) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |-yY0T1afTa0) (:text |:id) (:type :leaf)
                                                              |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |fvGJUXd-FCt) (:text |task) (:type :leaf)
                                                      |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |8fylfpuXjIs) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |tebWW6VqVAD) (:text |:from) (:type :leaf)
                                                          |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |h0pGkt9D1Om) (:text |:working-tasks) (:type :leaf)
                                                      |v $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |HqOSVpAuM3L) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |MIhSJGK57Ke) (:text |:to) (:type :leaf)
                                                          |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |EcFTCrKcfkD) (:text |:done-tasks) (:type :leaf)
                                              |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |IsRhxujaxL0) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |ZLn6raNDUCA) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |Lx6VpkNTppS) (:text |cursor) (:type :leaf)
                                                  |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |ySfajjhO9cs) (:text |new-state) (:type :leaf)
                                      |v $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |PB7bFu8CX3v) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |i3Dd26MU0BJ) (:text |:postpone) (:type :leaf)
                                          |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |vlDPgLLAdT-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |JtjCZRy6GZh) (:text |do) (:type :leaf)
                                              |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |jjJbh3J_R-I) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |RllYibLlZUI) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |gGAF8uJYT90) (:text |:task/move-task) (:type :leaf)
                                                  |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |_9BJszjtNVK) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |AlzWsifkQZl) (:text |{}) (:type :leaf)
                                                      |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |h3Hpw_pY2bo) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |_bxZNUM6zvc) (:text |:id) (:type :leaf)
                                                          |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |xMBFqWjaNm_) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |saASxTWa-zB) (:text |:id) (:type :leaf)
                                                              |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |KVXPSJqcavK) (:text |task) (:type :leaf)
                                                      |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |qMP6yorLPi2) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |lFwQY3uLA_N) (:text |:from) (:type :leaf)
                                                          |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |eTKZgq-wU8a) (:text |:working-tasks) (:type :leaf)
                                                      |v $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |gywGo81hzl0) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |B93CNhluBGS) (:text |:to) (:type :leaf)
                                                          |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |d1PKV9KsFZW) (:text |:pending-tasks) (:type :leaf)
                                              |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |qf7krQzdYBE) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |hxQOVV1ksNI) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |_1GEwt_dFa1) (:text |cursor) (:type :leaf)
                                                  |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |oTo4QHkjDP0) (:text |new-state) (:type :leaf)
                                      |x $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |tL_38hNaUJB) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |KyjYrLBOZK0) (:text |:edit) (:type :leaf)
                                          |j $ {} (:at 1586595089680) (:by |B1y7Rc-Zz) (:id |3s76WwBaVr) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1586595090301) (:by |B1y7Rc-Zz) (:id |3y4Rhv9elf) (:text |do) (:type :leaf)
                                              |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |i-JVDXlWgQH) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |f1mqW_pyqhO) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |a9VbDe1F1NN) (:text |cursor) (:type :leaf)
                                                  |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |Qp8F-W9MvWA) (:text |new-state) (:type :leaf)
                                              |j $ {} (:at 1586595091140) (:by |B1y7Rc-Zz) (:id |_MtPfgF-u) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629915003595) (:by |B1y7Rc-Zz) (:id |_MtPfgF-uleaf) (:text |.show) (:type :leaf)
                                                  |b $ {} (:at 1586595096802) (:by |B1y7Rc-Zz) (:id |uQslBTmpo) (:text |update-plugin) (:type :leaf)
                                                  |j $ {} (:at 1586595098001) (:by |B1y7Rc-Zz) (:id |Jve0mLJFAF) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1586595098335) (:by |B1y7Rc-Zz) (:id |bXrZVJ_0-Q) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1586595098633) (:by |B1y7Rc-Zz) (:id |tJ2vNs9ET) (:text |fn) (:type :leaf)
                                                      |j $ {} (:at 1586595098815) (:by |B1y7Rc-Zz) (:id |won2QY-oc1) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1586595120772) (:by |B1y7Rc-Zz) (:id |ZcG-u3-9I7) (:text |text) (:type :leaf)
                                                      |r $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |zo1Q_ujl2Q) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |lRX02AfHKA) (:text |when) (:type :leaf)
                                                          |j $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |qZ8PS7SS-i) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |FIkq04U98p) (:text |some?) (:type :leaf)
                                                              |j $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |xQqBp_DBlk) (:text |text) (:type :leaf)
                                                          |v $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |WAEJOileCfs) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |nhbh997WoN9) (:text |d!) (:type :leaf)
                                                              |j $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |z7fM3pTifxZ) (:text |:task/update-text) (:type :leaf)
                                                              |r $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |xTf6aDIhduC) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |ck0ep3-DK0e) (:text |{}) (:type :leaf)
                                                                  |j $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |8c-qih6xpxy) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |PVG4zGgbgAC) (:text |:id) (:type :leaf)
                                                                      |j $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |eSMy6hOFBUR) (:type :expr)
                                                                        :data $ {}
                                                                          |T $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |HEi6UypOojd) (:text |:id) (:type :leaf)
                                                                          |j $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |D5yj9QMCQae) (:text |task) (:type :leaf)
                                                                  |r $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |cOdz2s1hogc) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |HARku7uizKZ) (:text |:text) (:type :leaf)
                                                                      |j $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |66SxdHRNdPs) (:text |text) (:type :leaf)
                                                                  |v $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |aDk6Gu5YKG9) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |UeW63mhzUH_) (:text |:group) (:type :leaf)
                                                                      |j $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |frbTUTEf8_h) (:text |:working-tasks) (:type :leaf)
                                                                  |x $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |iZTp9bMrJ9c) (:type :expr)
                                                                    :data $ {}
                                                                      |T $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |RkZ4hBFXD4E) (:text |:time) (:type :leaf)
                                                                      |j $ {} (:at 1586595121868) (:by |B1y7Rc-Zz) (:id |MF3gVgwXwNs) (:type :expr)
                                                                        :data $ {}
                                                                          |j $ {} (:at 1629915445819) (:by |B1y7Rc-Zz) (:id |AXoPggDCTub) (:text |js/Date.now) (:type :leaf)
                                      |y $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |FDzlBpvPEo4) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |xi3jEbP-KnW) (:text |:remove) (:type :leaf)
                                          |j $ {} (:at 1586594836852) (:by |B1y7Rc-Zz) (:id |F4vQcO2VXs) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1586594837531) (:by |B1y7Rc-Zz) (:id |xZcD2gWon) (:text |do) (:type :leaf)
                                              |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |fDugLEm77l_) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |2glMHlUSxWK) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |gKHDXCCJtdu) (:text |cursor) (:type :leaf)
                                                  |n $ {} (:at 1586594842647) (:by |B1y7Rc-Zz) (:id |MXOTFlS33r) (:text |new-state) (:type :leaf)
                                              |j $ {} (:at 1586594966828) (:by |B1y7Rc-Zz) (:id |F1ZkoOmLiE) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1629914992487) (:by |B1y7Rc-Zz) (:id |1v4RmSDva) (:text |.show) (:type :leaf)
                                                  |H $ {} (:at 1586594974396) (:by |B1y7Rc-Zz) (:id |RTL9cAeUiX) (:text |remove-plugin) (:type :leaf)
                                                  |L $ {} (:at 1586594976318) (:by |B1y7Rc-Zz) (:id |4pTF0bM3Xr) (:text |d!) (:type :leaf)
                                                  |T $ {} (:at 1586594977420) (:by |B1y7Rc-Zz) (:id |McQHEmyk4) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1586594978119) (:by |B1y7Rc-Zz) (:id |safNaL6eaP) (:text |fn) (:type :leaf)
                                                      |L $ {} (:at 1586594979194) (:by |B1y7Rc-Zz) (:id |VZCIi9hgH) (:type :expr)
                                                        :data $ {}
                                                      |T $ {} (:at 1586594838441) (:by |B1y7Rc-Zz) (:id |hBcmm5KImO) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1586594838441) (:by |B1y7Rc-Zz) (:id |STWhQA9cQ5) (:text |d!) (:type :leaf)
                                                          |j $ {} (:at 1586594838441) (:by |B1y7Rc-Zz) (:id |6znf65dOxG) (:text |:task/remove-working) (:type :leaf)
                                                          |r $ {} (:at 1586594838441) (:by |B1y7Rc-Zz) (:id |pXiNf_Qp1T) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1586594838441) (:by |B1y7Rc-Zz) (:id |-t2J8LOgoX) (:text |:id) (:type :leaf)
                                                              |j $ {} (:at 1586594838441) (:by |B1y7Rc-Zz) (:id |b_OP64k_js) (:text |task) (:type :leaf)
                                      |yT $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |p5RRnJDc_Qz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |THB_WpzNRmY) (:text |:touch) (:type :leaf)
                                          |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |eNrs29Ju_Ps) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |dlHO6YYAwZp) (:text |do) (:type :leaf)
                                              |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |KNYAwBv2idv) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |6c5B3myWHjD) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |3Wx5VgM3wp0) (:text |:task/touch-working) (:type :leaf)
                                                  |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |0HPeVM3d-60) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |NZRQ2w2jY8Z) (:text |:id) (:type :leaf)
                                                      |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |bPczhQdFFym) (:text |task) (:type :leaf)
                                              |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |Qv0ZvTiYAvy) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |yCPtXUpy2F3) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |G8GII58QaBz) (:text |cursor) (:type :leaf)
                                                  |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |3EfhYhj0Uls) (:text |new-state) (:type :leaf)
                                      |yj $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |LRuTcMjvI44) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |XEZ5o3PfCgp) (:text |:open) (:type :leaf)
                                          |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |CKB6A-YTwZx) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |wvf3BlrYZ5O) (:text |do) (:type :leaf)
                                              |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |TRAv7DPKQNK) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |op3KxxpjCwh) (:text |js/window.open) (:type :leaf)
                                                  |j $ {} (:at 1629914519612) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1629914521026) (:by |B1y7Rc-Zz) (:text |.-0) (:type :leaf)
                                                      |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |GQ4BIityOnl) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629914493571) (:by |B1y7Rc-Zz) (:id |rwm7J5eyYqg) (:text |.!match) (:type :leaf)
                                                          |b $ {} (:at 1629914495699) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629914495699) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                              |j $ {} (:at 1629914495699) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                                          |f $ {} (:at 1629914502326) (:by |B1y7Rc-Zz) (:text |url-pattern) (:type :leaf)
                                              |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |vPs9mVcIzmr) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |DkTEc50LjQQ) (:text |d!) (:type :leaf)
                                                  |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |nP4vcNPHaxN) (:text |cursor) (:type :leaf)
                                                  |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |F82FrYwI7Bk) (:text |new-state) (:type :leaf)
                                      |yr $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |g21h-laPEeI) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |7lRps05zHY0) (:text |nil) (:type :leaf)
                                          |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |Wr1UTyxzj3A) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |B83-Lvh7X5_) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |Lhqprfs6kRK) (:text |cursor) (:type :leaf)
                                              |r $ {} (:at 1586594791653) (:by |B1y7Rc-Zz) (:id |T5_Uwan67vW) (:text |new-state) (:type :leaf)
                      |yj $ {} (:at 1586594713625) (:by |B1y7Rc-Zz) (:id |9vgSEGrbep) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629914912184) (:by |B1y7Rc-Zz) (:id |9vgSEGrbepleaf) (:text |.render) (:type :leaf)
                          |j $ {} (:at 1586594717550) (:by |B1y7Rc-Zz) (:id |kSbyjTQwhi) (:text |remove-plugin) (:type :leaf)
                      |yr $ {} (:at 1586594713625) (:by |B1y7Rc-Zz) (:id |dSU_6J1d4) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629914915170) (:by |B1y7Rc-Zz) (:id |9vgSEGrbepleaf) (:text |.render) (:type :leaf)
                          |j $ {} (:at 1586595081429) (:by |B1y7Rc-Zz) (:id |kSbyjTQwhi) (:text |update-plugin) (:type :leaf)
          |css-item $ {} (:at 1536777861344) (:by |root) (:id |LcZm8osKkn) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657813042018) (:by |B1y7Rc-Zz) (:id |CJ_cNI6cSJ) (:text |defstyle) (:type :leaf)
              |j $ {} (:at 1657813040423) (:by |B1y7Rc-Zz) (:text |css-item) (:type :leaf)
              |r $ {} (:at 1657813043664) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1657813044286) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1657813044689) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1657813046259) (:by |B1y7Rc-Zz) (:text "|\"$0") (:type :leaf)
                      |T $ {} (:at 1536777861344) (:by |root) (:id |tZQuGKZjK8) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1536777861344) (:by |root) (:id |f3CZ5eJtuW) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1536777861344) (:by |root) (:id |prL_exh7bx) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536777861344) (:by |root) (:id |6WrijwsWIL) (:text |:line-height) (:type :leaf)
                              |j $ {} (:at 1536777861344) (:by |root) (:id |9SMMVFk__p) (:text ||32px) (:type :leaf)
                          |r $ {} (:at 1536777861344) (:by |root) (:id |_2SSAQerKl) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536777861344) (:by |root) (:id |9OesjdtZjo) (:text |:margin) (:type :leaf)
                              |j $ {} (:at 1536777861344) (:by |root) (:id |QyfkcnGKAc) (:text "||8px 0px") (:type :leaf)
                          |v $ {} (:at 1536777861344) (:by |root) (:id |oY3b1A-SuW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536777861344) (:by |root) (:id |s_PlvzkKi3) (:text |:position) (:type :leaf)
                              |j $ {} (:at 1536777861344) (:by |root) (:id |8ZtaqPsLgN) (:text |:absolute) (:type :leaf)
                          |w $ {} (:at 1585589492333) (:by |B1y7Rc-Zz) (:id |sIiSube-oG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1585589492333) (:by |B1y7Rc-Zz) (:id |XX-tYRPKp1) (:text |:width) (:type :leaf)
                              |j $ {} (:at 1585589492333) (:by |B1y7Rc-Zz) (:id |NRdu63i5xN) (:text "|\"100%") (:type :leaf)
                          |y $ {} (:at 1536777861344) (:by |root) (:id |yMi0DqUejq0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536777861344) (:by |root) (:id |H5kRQq46_8I) (:text |:transition-duration) (:type :leaf)
                              |j $ {} (:at 1536777861344) (:by |root) (:id |YaU-ciYaTfG) (:text ||300ms) (:type :leaf)
                          |yT $ {} (:at 1536777861344) (:by |root) (:id |fgsW4WEEmkf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536777861344) (:by |root) (:id |GSBA_PCFAbE) (:text |:white-space) (:type :leaf)
                              |j $ {} (:at 1536777861344) (:by |root) (:id |n4HfZA0Tbzr) (:text |:nowrap) (:type :leaf)
                          |yj $ {} (:at 1536777861344) (:by |root) (:id |FcI9CLsLD_E) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536777861344) (:by |root) (:id |JcXjP7ZRJuc) (:text |:line-height) (:type :leaf)
                              |j $ {} (:at 1536777861344) (:by |root) (:id |tsE8SJuislz) (:text "|\"32px") (:type :leaf)
                          |yn $ {} (:at 1536777861344) (:by |root) (:id |ijH_v3yAh) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536819946162) (:by |B1y7Rc-Zz) (:id |JcXjP7ZRJuc) (:text |:height) (:type :leaf)
                              |j $ {} (:at 1536777861344) (:by |root) (:id |tsE8SJuislz) (:text "|\"32px") (:type :leaf)
                          |yr $ {} (:at 1536777861344) (:by |root) (:id |1vk-U6hycYw) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536777861344) (:by |root) (:id |UfLDzTNeZVM) (:text |:max-width) (:type :leaf)
                              |j $ {} (:at 1536777861344) (:by |root) (:id |UzoOKlFROCC) (:text |480) (:type :leaf)
                          |yv $ {} (:at 1536777861344) (:by |root) (:id |Bv9x2GvjDfG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536777861344) (:by |root) (:id |Ad78cfNIyM4) (:text |:background-color) (:type :leaf)
                              |j $ {} (:at 1536777861344) (:by |root) (:id |UYXyNqFwr0c) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536777861344) (:by |root) (:id |pzAJMiMszJp) (:text |hsl) (:type :leaf)
                                  |j $ {} (:at 1536777861344) (:by |root) (:id |SlwN8g5DVCJ) (:text |0) (:type :leaf)
                                  |r $ {} (:at 1536777861344) (:by |root) (:id |DS2suInw-eK) (:text |0) (:type :leaf)
                                  |v $ {} (:at 1536777861344) (:by |root) (:id |A9JoNyfqzNx) (:text |94) (:type :leaf)
                          |yx $ {} (:at 1536777861344) (:by |root) (:id |dPU1T-vosCM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536777861344) (:by |root) (:id |tSh64BiQYqr) (:text |:padding) (:type :leaf)
                              |j $ {} (:at 1536777861344) (:by |root) (:id |fMKNqB4MmTb) (:text "|\"0 8px") (:type :leaf)
          |http-pattern $ {} (:at 1629914448718) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629914448718) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1629914448718) (:by |B1y7Rc-Zz) (:text |http-pattern) (:type :leaf)
              |r $ {} (:at 1629914448718) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629914451665) (:by |B1y7Rc-Zz) (:text |new) (:type :leaf)
                  |j $ {} (:at 1629914454352) (:by |B1y7Rc-Zz) (:text |js/RegExp) (:type :leaf)
                  |r $ {} (:at 1629914455670) (:by |B1y7Rc-Zz) (:text "|\"https?://") (:type :leaf)
          |url-pattern $ {} (:at 1629914506487) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629914506487) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1629914506487) (:by |B1y7Rc-Zz) (:text |url-pattern) (:type :leaf)
              |r $ {} (:at 1629914506487) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629914508313) (:by |B1y7Rc-Zz) (:text |new) (:type :leaf)
                  |j $ {} (:at 1629914511826) (:by |B1y7Rc-Zz) (:text |js/RegExp) (:type :leaf)
                  |r $ {} (:at 1629914512298) (:by |B1y7Rc-Zz) (:text "|\"https?://\\S+") (:type :leaf)
        :ns $ {} (:at 1520961831841) (:by |root) (:id |rkxeVYYBKz) (:type :expr)
          :data $ {}
            |T $ {} (:at 1520961831841) (:by |root) (:id |ryZlNYKBYM) (:text |ns) (:type :leaf)
            |j $ {} (:at 1520961831841) (:by |root) (:id |rkzgVFFrYf) (:text |app.comp.home) (:type :leaf)
            |r $ {} (:at 1500541010211) (:by nil) (:id |SyegrKYBYM) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HyJlqLelRBW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |SylgqLee0B-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1629913760629) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SJQlcUlgRr-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |By4lc8gxCB-) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |rJIlq8leCBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |ryvl5IllRSb) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1516547378489) (:by |root) (:id |H1Fgc8egCSW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |Hy9x5IeeASW) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |rkoe5LxlCBW) (:text |ui) (:type :leaf)
                |u $ {} (:at 1657812972327) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657812974897) (:by |B1y7Rc-Zz) (:text |respo-ui.css) (:type :leaf)
                    |b $ {} (:at 1657812975675) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1657812976199) (:by |B1y7Rc-Zz) (:text |css) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |B1gpZxc3yG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1542535144896) (:by |root) (:id |H189Igg0S-) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |HJw9LexRS-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1_98eeRSb) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkqqIggASZ) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |SysqUxxRH-) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |Bkh9UglCrZ) (:text |div) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |BkaqLel0H-) (:text |span) (:type :leaf)
                        |y $ {} (:at 1507815955483) (:by |root) (:id |ryjGzeahb) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1520961917370) (:by |root) (:id |Hkx4FttBtG) (:text |input) (:type :leaf)
                        |yj $ {} (:at 1584892971954) (:by |B1y7Rc-Zz) (:id |rJgE9qtBKM) (:text |>>) (:type :leaf)
                        |yv $ {} (:at 1520962930710) (:by |root) (:id |BkWd_ptSYz) (:text |list->) (:type :leaf)
                        |yy $ {} (:at 1521219401736) (:by |root) (:id |Hkxb8P_KtG) (:text |span) (:type :leaf)
                        |yyT $ {} (:at 1536819900192) (:by |B1y7Rc-Zz) (:id |lWl22Ld97D) (:text |input) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |rJu-cIxlRSZ) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |By9-qLxlRHW) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1oZq8gl0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |rk2ZqUlx0SZ) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SJ0bqLggCH-) (:text |comp-inspect) (:type :leaf)
                |yD $ {} (:at 1507816109319) (:by |root) (:id |Sklr2Mg6n-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507816117447) (:by |root) (:id |SkbLhMlp3b) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1507816112686) (:by |root) (:id |H1GOhGephb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507816113982) (:by |root) (:id |rk-53Mlah-) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1507816114704) (:by |root) (:id |SyN5nGgThZ) (:text |=<) (:type :leaf)
                |yP $ {} (:at 1657812982020) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657812985725) (:by |B1y7Rc-Zz) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1657812986769) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657812987044) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657812988375) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
                |yn $ {} (:at 1521043556689) (:by |root) (:id |Bkpw_a8FG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1558366305582) (:by |B1y7Rc-Zz) (:id |HyxAPd68Yf) (:text |feather.core) (:type :leaf)
                    |r $ {} (:at 1521043562141) (:by |root) (:id |S1Z-u_pUYf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1521043562398) (:by |root) (:id |rk8Muu68Fz) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1629914652889) (:by |B1y7Rc-Zz) (:id |BygB__aIKG) (:text |comp-icon) (:type :leaf)
                |yx $ {} (:at 1530457111096) (:by |root) (:id |ryek72w8Mm) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1572971307844) (:by |B1y7Rc-Zz) (:id |HJZg7nvIGQ) (:text |respo-alerts.core) (:type :leaf)
                    |r $ {} (:at 1530457122785) (:by |root) (:id |HkqXhP8zX) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1530457122966) (:by |root) (:id |S1mim2D8zQ) (:type :expr)
                      :data $ {}
                        |yT $ {} (:at 1586594880964) (:by |B1y7Rc-Zz) (:id |gLMs40Gp1) (:text |use-confirm) (:type :leaf)
                        |yj $ {} (:at 1586595184461) (:by |B1y7Rc-Zz) (:id |Cr-VE-a-cd) (:text |use-prompt) (:type :leaf)
                        |yr $ {} (:at 1629914362411) (:by |B1y7Rc-Zz) (:text |comp-modal-menu) (:type :leaf)
                |yy $ {} (:at 1536774927773) (:by |root) (:id |8J-WZLhpLx) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1545759461931) (:by |root) (:id |KJqZpXHAJC) (:text |cumulo-util.core) (:type :leaf)
                    |r $ {} (:at 1536774927773) (:by |root) (:id |_MFmmLTFAA) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1536774927773) (:by |root) (:id |oqB6GsS8GO) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1536774927773) (:by |root) (:id |hVVa7PT2gG) (:text |delay!) (:type :leaf)
        :proc $ {} (:at 1520961831841) (:by |root) (:id |SkQl4FKrFM) (:type :expr)
          :data $ {}
      |app.comp.login $ {}
        :defs $ {}
          |comp-login $ {} (:at 1500541010211) (:by nil) (:id |HkN1-cUxxRB-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |SJBy-qUle0SW) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |S1LyWcUxe0rZ) (:text |comp-login) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |HkPy-qLxlRHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |Sy_yZ5LxlCBZ) (:text |states) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |ryK1bqLeg0rZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |ry9JbqLlgRHb) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1j1WcUxxRSb) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1584892820754) (:by |B1y7Rc-Zz) (:id |fcmWsj4bcO) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584892821525) (:by |B1y7Rc-Zz) (:id |fcmWsj4bcOleaf) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1584892821965) (:by |B1y7Rc-Zz) (:id |2_sBkmEtbt) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584892822912) (:by |B1y7Rc-Zz) (:id |LwJs9egE8E) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1584892823640) (:by |B1y7Rc-Zz) (:id |viYUfiWy1j) (:text |states) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |HynkWcIee0Hb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |HkT1bqUxlASZ) (:text |state) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |Hy0yb98gxABW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkJxWc8lxCBW) (:text |or) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |BJllZ5Lle0Sb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Hy-eb9Uxx0HZ) (:text |:data) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |S1GeZq8glCrW) (:text |states) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |B1Xeb9UleCrW) (:text |initial-state) (:type :leaf)
                  |r $ {} (:at 1519368111046) (:by |root) (:id |HyxD3wVpvM) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1519368111912) (:by |root) (:id |rJZPnw4TvG) (:text |div) (:type :leaf)
                      |L $ {} (:at 1519368112156) (:by |root) (:id |SJXO3vNaDM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519368113787) (:by |root) (:id |S1fd3wN6Dz) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1519368114295) (:by |root) (:id |SyGqhw46wG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657812818019) (:by |B1y7Rc-Zz) (:id |SJ-9hDETDf) (:text |:class-name) (:type :leaf)
                              |j $ {} (:at 1519368119982) (:by |root) (:id |Byg6DV6wz) (:type :expr)
                                :data $ {}
                                  |5 $ {} (:at 1657812820878) (:by |B1y7Rc-Zz) (:id |H1lV6vNaPf) (:text |str-spaced) (:type :leaf)
                                  |D $ {} (:at 1657812823043) (:by |B1y7Rc-Zz) (:id |BJxe6vNavM) (:text |css/flex) (:type :leaf)
                                  |T $ {} (:at 1657812824885) (:by |B1y7Rc-Zz) (:id |rJlpnDVawM) (:text |css/center) (:type :leaf)
                      |P $ {} (:at 1521738271237) (:by |root) (:id |r1w7GPb9M) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521738271803) (:by |root) (:id |r1w7GPb9Mleaf) (:text |div) (:type :leaf)
                          |j $ {} (:at 1521738272085) (:by |root) (:id |H1QuQGvbqf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521738272498) (:by |root) (:id |SyGuXfPZ9z) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1521738345442) (:by |root) (:id |S1WOfvZ9f) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521738346622) (:by |root) (:id |S1WOfvZ9fleaf) (:text |comp-md-block) (:type :leaf)
                              |j $ {} (:at 1521738595101) (:by |root) (:id |HyeQdfD-qM) (:text "||Woodenlist is an online Todolist built by [@jiyinyiyong](https://github.com/jiyinyiyong) based on [Cumulo](http://cumulo.org/) solution.\nFind out more on [GitHub](https://github.com/TopixIM/woodenlist).\n\nCaution! It's an toy app. Don't trust my database!") (:type :leaf)
                              |r $ {} (:at 1521738348503) (:by |root) (:id |BJlVuGvb5z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521738349300) (:by |root) (:id |BkNdzv-qM) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1521738543795) (:by |root) (:id |SJed47wWcf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521738544462) (:by |root) (:id |HJdEQP-qM) (:text |:css) (:type :leaf)
                                      |j $ {} (:at 1521738584189) (:by |root) (:id |H1FNmD-9f) (:text "||.md-p {margin: 20px 0; line-height: 1.6em;}") (:type :leaf)
                      |R $ {} (:at 1521738296683) (:by |root) (:id |r1ZrfP-9G) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521738298800) (:by |root) (:id |r1ZrfP-9Gleaf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1521738300035) (:by |root) (:id |rJVBzPbqG) (:text |nil) (:type :leaf)
                          |r $ {} (:at 1521738301632) (:by |root) (:id |r1mVrMPW5M) (:text |40) (:type :leaf)
                      |T $ {} (:at 1500541010211) (:by nil) (:id |ryEx-5IxlRSW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |HJrgZ5Llg0Sb) (:text |div) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |BJIg-9Ule0rZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |SJvxZcIxlASZ) (:text |{}) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |BJOg-5Igx0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |S1Fx-cUegRrb) (:text |div) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |ry5gWc8exRSZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BkixZ9LxgRBZ) (:text |{}) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |BkxZZ98xeCH-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BJWb-5UlxRrZ) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1M-WcUggRHZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |Hym-ZqLleAS-) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |SJNWb9UexCSZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |H1H-WqIle0rZ) (:text |input) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |rkU-bcUleASZ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |S1wbZqLeeASW) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |rJObbc8leRS-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |BJYWWcLxx0rW) (:text |:placeholder) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |H15Wb9Ugg0r-) (:text ||Username) (:type :leaf)
                                          |n $ {} (:at 1657812853891) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1657812856389) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                              |b $ {} (:at 1657812857945) (:by |B1y7Rc-Zz) (:text |css/input) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |SyoWb5UleCSW) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Hy2bWqIlg0rW) (:text |:value) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |HJpWZc8ggRH-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BkRZ-cIle0H-) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |HyyM-9UglArZ) (:text |state) (:type :leaf)
                                          |x $ {} (:at 1500541010211) (:by nil) (:id |rJFis1lQM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1514302367311) (:by |root) (:id |H1_f-5UlxAr-) (:text |:on-input) (:type :leaf)
                                              |j $ {} (:at 1584892827332) (:by |B1y7Rc-Zz) (:id |P8Rkh1RuHZ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584892827651) (:by |B1y7Rc-Zz) (:id |l6t9dj2If) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1584892827981) (:by |B1y7Rc-Zz) (:id |TunFUCSJUA) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584892828239) (:by |B1y7Rc-Zz) (:id |Jl6l82mKHx) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1584892829203) (:by |B1y7Rc-Zz) (:id |HxBNMB-ZzG) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1584892829640) (:by |B1y7Rc-Zz) (:id |yGTRB490Zn) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584892830411) (:by |B1y7Rc-Zz) (:id |yGTRB490Znleaf) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1584892831505) (:by |B1y7Rc-Zz) (:id |Wv2csQXQh7) (:text |cursor) (:type :leaf)
                                                      |r $ {} (:at 1584892832963) (:by |B1y7Rc-Zz) (:id |tzhewUeJpO) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1584892832514) (:by |B1y7Rc-Zz) (:id |f9siYDUvPB) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1584892834095) (:by |B1y7Rc-Zz) (:id |xrZ_FIKbn) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1584892836004) (:by |B1y7Rc-Zz) (:id |tvSjKXx1Kz) (:text |:username) (:type :leaf)
                                                          |v $ {} (:at 1584892837007) (:by |B1y7Rc-Zz) (:id |H8UuT61Fhc) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1584892837661) (:by |B1y7Rc-Zz) (:id |5X6SbyfV3) (:text |:value) (:type :leaf)
                                                              |j $ {} (:at 1584892837879) (:by |B1y7Rc-Zz) (:id |GCvkLGLdj1) (:text |e) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |rJ6MW9IxgAH-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |S1RzbqIxl0Sb) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |Sy17-5Iex0SW) (:text |nil) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by |root) (:id |B1gQWqUxe0rZ) (:text |8) (:type :leaf)
                              |x $ {} (:at 1500541010211) (:by nil) (:id |rybQZcLeeABW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkfm-5IxgASW) (:text |div) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |SJX7ZqIeeCB-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |Hk4mZ5IxgASW) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |rJHQb58xxRBW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |rJU7Zc8xlCSW) (:text |input) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |SyPX-qIxxRBb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |ry_XZ5UglRrZ) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |HyK7bcIexCS-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Bk9XZqLglArZ) (:text |:placeholder) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |HkomWcUlxCBb) (:text ||Password) (:type :leaf)
                                          |n $ {} (:at 1657812861964) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1657812861964) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                              |b $ {} (:at 1657812861964) (:by |B1y7Rc-Zz) (:text |css/input) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |S1hmb98glRSZ) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |H16XZc8ee0rb) (:text |:value) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |r1C7bcLel0BZ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BykV-cLlgAHW) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |rylNWcLelArZ) (:text |state) (:type :leaf)
                                          |x $ {} (:at 1500541010211) (:by nil) (:id |S1Znooygmf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1514302370752) (:by |root) (:id |SkYEbqUleRr-) (:text |:on-input) (:type :leaf)
                                              |j $ {} (:at 1584892848199) (:by |B1y7Rc-Zz) (:id |7VK-eDSGHZ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584892848199) (:by |B1y7Rc-Zz) (:id |5ZMjsNgZH4) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1584892848199) (:by |B1y7Rc-Zz) (:id |K7v15DxjFT) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584892848199) (:by |B1y7Rc-Zz) (:id |cj8PxHHgXe) (:text |e) (:type :leaf)
                                                      |j $ {} (:at 1584892848199) (:by |B1y7Rc-Zz) (:id |8NXEBxxALo) (:text |d!) (:type :leaf)
                                                  |r $ {} (:at 1584892848199) (:by |B1y7Rc-Zz) (:id |wYg7XKTAfD) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1584892848199) (:by |B1y7Rc-Zz) (:id |dRVVgfR41a) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1584892848199) (:by |B1y7Rc-Zz) (:id |JMdXjfywTx) (:text |cursor) (:type :leaf)
                                                      |r $ {} (:at 1584892848199) (:by |B1y7Rc-Zz) (:id |545qY3DXDE) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1584892848199) (:by |B1y7Rc-Zz) (:id |7PTT_aK6S5) (:text |assoc) (:type :leaf)
                                                          |j $ {} (:at 1584892848199) (:by |B1y7Rc-Zz) (:id |bjBXwRLdNX) (:text |state) (:type :leaf)
                                                          |r $ {} (:at 1584892850694) (:by |B1y7Rc-Zz) (:id |5FqftJEkLR) (:text |:password) (:type :leaf)
                                                          |v $ {} (:at 1584892848199) (:by |B1y7Rc-Zz) (:id |dmSKuyM3-7) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1584892848199) (:by |B1y7Rc-Zz) (:id |Jkw8YNMfBh) (:text |:value) (:type :leaf)
                                                              |j $ {} (:at 1584892848199) (:by |B1y7Rc-Zz) (:id |CPEaDmYN-Q) (:text |e) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by nil) (:id |HkCEZcIegCSb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |SJyBZc8xgCSZ) (:text |=<) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |BJlHZ98eg0SZ) (:text |nil) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |B1WSZ58lxArb) (:text |8) (:type :leaf)
                          |x $ {} (:at 1500541010211) (:by nil) (:id |rJfHW98egCSb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |ByXH-cLlx0S-) (:text |div) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |r1NBZ5Uxg0BZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HyHSb58leCHb) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |BJLSb9LxeASZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HkDrZqUlxRBb) (:text |:style) (:type :leaf)
                                      |j $ {} (:at 1519368067092) (:by |root) (:id |SyGsFwVaDf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1519368067501) (:by |root) (:id |HyWoFDNaDf) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1519368135916) (:by |root) (:id |B1xl0wE6wf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1519368141461) (:by |root) (:id |HyeAv4TPf) (:text |:text-align) (:type :leaf)
                                              |j $ {} (:at 1519368142240) (:by |root) (:id |B1I0wN6DG) (:text |:right) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by nil) (:id |BJtHWq8llRSb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519367924372) (:by |root) (:id |HJ9BZcIeeCSb) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |H1sBZ98geRSW) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SkhSb5UleABb) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |rJTH-9UlgCHW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rJ0SZ5Ilx0SW) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by |root) (:id |HJyIZqUleAH-) (:text "||Sign up") (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |rJeIW5Ugx0HZ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657812867515) (:by |B1y7Rc-Zz) (:id |r1bIZ9IxxAHb) (:text |:class-name) (:type :leaf)
                                          |j $ {} (:at 1657812871480) (:by |B1y7Rc-Zz) (:id |rJVIb58xe0B-) (:text |css/link) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |Syxb3iJg7G) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1514302375364) (:by |root) (:id |SkMP-cIgl0rb) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |rJ7wZ9Lxx0S-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy4PbcUxgRHZ) (:text |on-submit) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |ryBvWcUgeCBb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkLPZ9Lgx0rW) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryPv-5UgxAHZ) (:text |state) (:type :leaf)
                                              |r $ {} (:at 1500541010211) (:by nil) (:id |Byuw-cLxgCBb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HyFvW5LglAH-) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |r1qDZ98geRSW) (:text |state) (:type :leaf)
                                              |v $ {} (:at 1500541010211) (:by |root) (:id |HkjwbqLxlAHb) (:text |true) (:type :leaf)
                              |v $ {} (:at 1500541010211) (:by nil) (:id |B13wW9IgxCrb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |SJTPZc8xxAHW) (:text |=<) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by |root) (:id |ryCvbqIxlCHZ) (:text |8) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by |root) (:id |HyyO-q8glAS-) (:text |nil) (:type :leaf)
                              |x $ {} (:at 1500541010211) (:by nil) (:id |Skg_WqIxx0S-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1519367939048) (:by |root) (:id |HkWu-qIgeRrW) (:text |span) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |HkfdZ9IelABZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |S17d-5UgxCr-) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1500541010211) (:by nil) (:id |Sk4_bq8leCHb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541010211) (:by |root) (:id |rkB_W98xxABZ) (:text |:inner-text) (:type :leaf)
                                          |j $ {} (:at 1519368084428) (:by |root) (:id |Sk8OW5LexRrW) (:text "||Log in") (:type :leaf)
                                      |r $ {} (:at 1500541010211) (:by nil) (:id |HywdZ9LeeRHb) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657812874688) (:by |B1y7Rc-Zz) (:id |rJ_OZc8lx0Bb) (:text |:class-name) (:type :leaf)
                                          |j $ {} (:at 1657812880233) (:by |B1y7Rc-Zz) (:id |rJVIb58xe0B-) (:text |css/link) (:type :leaf)
                                      |v $ {} (:at 1500541010211) (:by nil) (:id |HJlw3skxQM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1514302381488) (:by |root) (:id |BJYF-5Uxe0S-) (:text |:on-click) (:type :leaf)
                                          |j $ {} (:at 1500541010211) (:by nil) (:id |rk9F-cUex0H-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541010211) (:by |root) (:id |HyoKb98elRr-) (:text |on-submit) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by nil) (:id |B1hYZcIxxASb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Skptbq8xeCBb) (:text |:username) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |rJRFWc8eeRr-) (:text |state) (:type :leaf)
                                              |r $ {} (:at 1500541010211) (:by nil) (:id |Sk15Z9LleCS-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Bkl9-5IlxRB-) (:text |:password) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by |root) (:id |SJWq-58llAHW) (:text |state) (:type :leaf)
                                              |v $ {} (:at 1500541010211) (:by |root) (:id |rJfq-9Lge0B-) (:text |false) (:type :leaf)
          |initial-state $ {} (:at 1500541010211) (:by nil) (:id |BkQcW5IlxCrb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |HJN9bcIlg0rW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |B1B9-9Uel0Hb) (:text |initial-state) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |H1IqZcLgg0BW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |Hyvq-qIllRrZ) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |Hkd9b5UxgCBW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |ryF5b9IgxRB-) (:text |:username) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |SJq5-qUll0rb) (:text ||) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |SJs5-qLel0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |HyhcbqUggRHb) (:text |:password) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |S16cbc8lx0Bb) (:text ||) (:type :leaf)
          |on-submit $ {} (:at 1500541010211) (:by nil) (:id |ryRox98ggCBW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |H1k3e58glCr-) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |SylnxqLgg0H-) (:text |on-submit) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |Hk-2e9IglCrW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |SkG2lqIxe0SW) (:text |username) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by |root) (:id |r172xqLexCr-) (:text |password) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by |root) (:id |SkEhlqIegRB-) (:text |signup?) (:type :leaf)
              |v $ {} (:at 1500541010211) (:by nil) (:id |SyB2gqIleArb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |BJLhecIxg0rb) (:text |fn) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |HJDne5LgxASZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |SJOnxqUxx0Sb) (:text |e) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |BJK2xcLglCHZ) (:text |dispatch!) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |BJ93x98gg0rW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |rkshx5Lgx0HZ) (:text |dispatch!) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |By22eqIxxRB-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |SkT3gqIlgArb) (:text |if) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |SJR3gqLegCr-) (:text |signup?) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by |root) (:id |r11Te5UxgABZ) (:text |:user/sign-up) (:type :leaf)
                          |v $ {} (:at 1500541010211) (:by |root) (:id |r1l6e5IgxCBb) (:text |:user/log-in) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |By-Tx58xgRSW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |r1GTxcIleAHb) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by |root) (:id |Hy7ax5LexRHb) (:text |username) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by |root) (:id |S1E6l9Lle0r-) (:text |password) (:type :leaf)
                  |v $ {} (:at 1500541010211) (:by nil) (:id |BySax58xgRBb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |rJ8Te9IgeABZ) (:text |.setItem) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |rkPpe9IglASZ) (:text |js/localStorage) (:type :leaf)
                      |r $ {} (:at 1500541010211) (:by nil) (:id |ryO6eq8ex0r-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545759700951) (:by |root) (:id |r1Kal58gl0HZ) (:text |:storage-key) (:type :leaf)
                          |j $ {} (:at 1545759704191) (:by |root) (:id |ry5alqLglAr-) (:text |config/site) (:type :leaf)
                      |v $ {} (:at 1629914674197) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1629914678191) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                          |T $ {} (:at 1500541010211) (:by nil) (:id |Hyj6eqIle0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkhaecLxlRBW) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by |root) (:id |Hk6al98leAHZ) (:text |username) (:type :leaf)
                              |r $ {} (:at 1500541010211) (:by |root) (:id |BJ0Te9LexCHZ) (:text |password) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |Hys_eqLgeAH-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |Hk3Ox5LleArW) (:text |ns) (:type :leaf)
            |j $ {} (:at 1510936619134) (:by |root) (:id |ry6_xqLxgCS-) (:text |app.comp.login) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |SJ3YeqUlxABZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |By6Fe5LlgRr-) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |rJxw4e52kz) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1542535155942) (:by |root) (:id |HyfFecIgxCSZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkQKx5Lxg0rZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1VFg98ex0Sb) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BJLFecUle0S-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |r1Dtg9Igg0rW) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SydYe98xe0BW) (:text |div) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HJttec8elRrW) (:text |input) (:type :leaf)
                        |y $ {} (:at 1500541010211) (:by |root) (:id |HJ9tl98xxAHb) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1500541010211) (:by |root) (:id |SyoYl9LelCBW) (:text |span) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |rkBqe58el0HZ) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |B1DcxqUexABZ) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |r1dcgc8xg0HZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyF5x98llCSW) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H1j9g98ggCB-) (:text |=<) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:id |S129ecIxeAHZ) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |rJ09lqUxeRBb) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkJoxqUeg0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJxigqIex0Sb) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |S1Gsg98geRrb) (:text |comp-inspect) (:type :leaf)
                |w $ {} (:at 1657812829075) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657812831592) (:by |B1y7Rc-Zz) (:text |respo-ui.css) (:type :leaf)
                    |b $ {} (:at 1657812832110) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1657812832767) (:by |B1y7Rc-Zz) (:text |css) (:type :leaf)
                |wT $ {} (:at 1657812834527) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657812836599) (:by |B1y7Rc-Zz) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1657812837708) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657812837978) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657812839340) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |rk7ol9IxxABZ) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1516547410331) (:by |root) (:id |B1Bjgc8gxRrW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkIjeq8xxCBZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |r1vixqLll0SZ) (:text |ui) (:type :leaf)
                |xT $ {} (:at 1545759715773) (:by |root) (:id |5m4RqbQbx) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1545759717845) (:by |root) (:id |sfNYUH99t) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1545759718257) (:by |root) (:id |0aPzU87ScL) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1545759718910) (:by |root) (:id |wpxw4FukRu) (:text |schema) (:type :leaf)
                |y $ {} (:at 1545759713605) (:by |root) (:id |qFL72ELLNH) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1545759713605) (:by |root) (:id |q_Prtd08pL) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1545759713605) (:by |root) (:id |gzqb502oug) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1545759713605) (:by |root) (:id |gwnX_GAWiN) (:text |config) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |SJdID4pPz) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1519368017028) (:by |root) (:id |BJ9sgqLxxABW) (:text |app.style) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SkjsgcIxeCHZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1519368019779) (:by |root) (:id |r1niecUxlCrZ) (:text |style) (:type :leaf)
                |yj $ {} (:at 1521738314307) (:by |root) (:id |r1lM8fD-cG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1521738318598) (:by |root) (:id |BJ-QIzPW9f) (:text |respo-md.comp.md) (:type :leaf)
                    |r $ {} (:at 1521738319370) (:by |root) (:id |SJeDIMwZ9M) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1521738319575) (:by |root) (:id |H1dUGv-cG) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1521738320880) (:by |root) (:id |Hyz_UGPb5M) (:text |comp-md) (:type :leaf)
                        |r $ {} (:at 1521738337874) (:by |root) (:id |BkxOvfvZcz) (:text |comp-md-block) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |Bkajg9LggCH-) (:type :expr)
          :data $ {}
      |app.comp.pending $ {}
        :defs $ {}
          |comp-pending $ {} (:at 1521044486477) (:by |root) (:id |HJgCbh6LtG) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521044489312) (:by |root) (:id |S1-AWnp8KM) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1521044486477) (:by |root) (:id |H1MA-3TIFM) (:text |comp-pending) (:type :leaf)
              |r $ {} (:at 1521044486477) (:by |root) (:id |HJm0-hTLtM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1521044490946) (:by |root) (:id |rybzM368Fz) (:text |states) (:type :leaf)
                  |j $ {} (:at 1521044496308) (:by |root) (:id |S1vMnT8tz) (:text |router-data) (:type :leaf)
              |v $ {} (:at 1521044496672) (:by |root) (:id |SyYGhpLKG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1521044497744) (:by |root) (:id |SyYGhpLKGleaf) (:text |div) (:type :leaf)
                  |j $ {} (:at 1521044497965) (:by |root) (:id |Hkm9GhpUYf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521044498387) (:by |root) (:id |HkG9z36IKz) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1657813111025) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657813113696) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                          |b $ {} (:at 1657813115085) (:by |B1y7Rc-Zz) (:text |css/flex) (:type :leaf)
                      |j $ {} (:at 1521044680606) (:by |root) (:id |SyWCnpUYG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521044681491) (:by |root) (:id |Sk-gA2pUYG) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1521044681697) (:by |root) (:id |S1gMR3TIKG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521044682090) (:by |root) (:id |HJMC2TUtM) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1521044682369) (:by |root) (:id |SJ4GA3p8tM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521044683573) (:by |root) (:id |ryQGRh68Kz) (:text |:padding) (:type :leaf)
                                  |j $ {} (:at 1521044684057) (:by |root) (:id |rkxVCh6IKz) (:text |16) (:type :leaf)
                              |r $ {} (:at 1522254493595) (:by |root) (:id |r1LjfHK9z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1522254496672) (:by |root) (:id |r1LjfHK9zleaf) (:text |:overflow) (:type :leaf)
                                  |j $ {} (:at 1522254497518) (:by |root) (:id |rkftjGrKqz) (:text |:auto) (:type :leaf)
                  |v $ {} (:at 1521044523987) (:by |root) (:id |rJgVVnTIYf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521044525273) (:by |root) (:id |rJgVVnTIYfleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1521044525499) (:by |root) (:id |H1Er43aLFG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521044525850) (:by |root) (:id |HyQSE2TUYf) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1657813076130) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657813078255) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                              |b $ {} (:at 1657813080546) (:by |B1y7Rc-Zz) (:text |css/font-fancy) (:type :leaf)
                          |j $ {} (:at 1521044648395) (:by |root) (:id |B1Zx3h68Yz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521044650839) (:by |root) (:id |Sylghh6Ltf) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1521044651105) (:by |root) (:id |HJGmh36IFf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521044651436) (:by |root) (:id |Hk-m2haLKf) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1521044662108) (:by |root) (:id |B1xA2haUYz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521044664079) (:by |root) (:id |B1xA2haUYzleaf) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1521044670365) (:by |root) (:id |H1Eean6Ltf) (:text |24) (:type :leaf)
                                  |v $ {} (:at 1521044671377) (:by |root) (:id |rJGDp26IFz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521044673247) (:by |root) (:id |rJGDp26IFzleaf) (:text |:font-weight) (:type :leaf)
                                      |j $ {} (:at 1521044674471) (:by |root) (:id |Hy5p2aItM) (:text |100) (:type :leaf)
                      |r $ {} (:at 1521044526788) (:by |root) (:id |BkxPN2TIKG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521044527146) (:by |root) (:id |BkxPN2TIKGleaf) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1521132696215) (:by |root) (:id |SkglsEQuFz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521132697055) (:by |root) (:id |Bkbo47dFG) (:text |str) (:type :leaf)
                              |T $ {} (:at 1521132699161) (:by |root) (:id |By_VhaUYM) (:text "||Pending Tasks(") (:type :leaf)
                              |b $ {} (:at 1521132701505) (:by |root) (:id |SyZSs4XOtG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521132702333) (:by |root) (:id |Sylri4muKM) (:text |count) (:type :leaf)
                                  |j $ {} (:at 1521132705357) (:by |root) (:id |ByEUiNQ_tG) (:text |router-data) (:type :leaf)
                              |j $ {} (:at 1521132700550) (:by |root) (:id |Sy4sEQuKM) (:text "||)") (:type :leaf)
                  |x $ {} (:at 1521044554672) (:by |root) (:id |rJxXInTItz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521044556159) (:by |root) (:id |rJxXInTItzleaf) (:text |list->) (:type :leaf)
                      |j $ {} (:at 1521044556488) (:by |root) (:id |r1UNL2TItG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521044557010) (:by |root) (:id |ryHE8nTUtf) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1522254557396) (:by |root) (:id |rJZHyQSFcf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1522254563533) (:by |root) (:id |S1lHkQBFcM) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1522254563776) (:by |root) (:id |r1Zh1QBYcM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1522254564088) (:by |root) (:id |r1e31QHY5z) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1522254564348) (:by |root) (:id |BkBnkmHKcM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1522254566119) (:by |root) (:id |H1E3y7rKcM) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1522254568808) (:by |root) (:id |HymCkmrF5G) (:text "|\"100%") (:type :leaf)
                      |r $ {} (:at 1521044557538) (:by |root) (:id |HkULhaUKG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629914072731) (:by |B1y7Rc-Zz) (:id |HkULhaUKGleaf) (:text |->) (:type :leaf)
                          |j $ {} (:at 1521044580606) (:by |root) (:id |HJEqP2TUFM) (:text |router-data) (:type :leaf)
                          |l $ {} (:at 1629915051683) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629915053435) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                          |n $ {} (:at 1536946283727) (:by |root) (:id |zaFPfNbYve) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629914071015) (:by |B1y7Rc-Zz) (:id |Y_Y3XWVdU8) (:text |.sort-by) (:type :leaf)
                              |j $ {} (:at 1536946283727) (:by |root) (:id |33VQUrQBH3) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536946283727) (:by |root) (:id |JbEas0RfaW) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1536946283727) (:by |root) (:id |_DEBBjCj2Z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629914075324) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                  |r $ {} (:at 1536946283727) (:by |root) (:id |BYQUb8-jZq) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629914078357) (:by |B1y7Rc-Zz) (:id |DJvRnNVe7q) (:text |negate) (:type :leaf)
                                      |j $ {} (:at 1536946283727) (:by |root) (:id |SoJUpmsjY3) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1536946283727) (:by |root) (:id |hSYFb1Io_X) (:text |:time) (:type :leaf)
                                          |j $ {} (:at 1629914079814) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629914081013) (:by |B1y7Rc-Zz) (:id |gEndOFlRKt) (:text |last) (:type :leaf)
                                              |j $ {} (:at 1629914081554) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                          |r $ {} (:at 1521044581203) (:by |root) (:id |Skz6P36IYz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629914090594) (:by |B1y7Rc-Zz) (:id |rJ-awnaIYM) (:text |.map-pair) (:type :leaf)
                              |j $ {} (:at 1521044587863) (:by |root) (:id |HkzN_haIKf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521044588206) (:by |root) (:id |HkZNO2a8tG) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1521044588506) (:by |root) (:id |By84OhT8Kf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629914085880) (:by |B1y7Rc-Zz) (:id |SkSVunpIYG) (:text |k) (:type :leaf)
                                      |j $ {} (:at 1629914093653) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                  |r $ {} (:at 1629914094773) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1629914095681) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                      |L $ {} (:at 1629914096046) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                      |T $ {} (:at 1521044694242) (:by |root) (:id |S1R0naUtf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1521044696084) (:by |root) (:id |S1R0naUtfleaf) (:text |comp-task) (:type :leaf)
                                          |b $ {} (:at 1584893255016) (:by |B1y7Rc-Zz) (:id |6_q7goaM3d) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1584893255769) (:by |B1y7Rc-Zz) (:id |sIaruRjlJ) (:text |>>) (:type :leaf)
                                              |T $ {} (:at 1521220699748) (:by |root) (:id |r1xQP3OYtz) (:text |states) (:type :leaf)
                                              |j $ {} (:at 1584893256852) (:by |B1y7Rc-Zz) (:id |HuyrmXwi19) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1584893256852) (:by |B1y7Rc-Zz) (:id |8pVqzLjKSb) (:text |:id) (:type :leaf)
                                                  |j $ {} (:at 1584893256852) (:by |B1y7Rc-Zz) (:id |m2cYwBar0w) (:text |task) (:type :leaf)
                                          |j $ {} (:at 1521044700502) (:by |root) (:id |ryQkTTItf) (:text |task) (:type :leaf)
          |comp-task $ {} (:at 1521044701726) (:by |root) (:id |rkx8ka6ItM) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521044703303) (:by |root) (:id |rkb8yppUYf) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1521044701726) (:by |root) (:id |SJMI1apIFf) (:text |comp-task) (:type :leaf)
              |r $ {} (:at 1521044701726) (:by |root) (:id |BJQ8JTTUFG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1521220694019) (:by |root) (:id |HJeTI3uFtM) (:text |states) (:type :leaf)
                  |T $ {} (:at 1521044704653) (:by |root) (:id |r1bd1a6LYM) (:text |task) (:type :leaf)
              |v $ {} (:at 1629913952272) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1629913952987) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |L $ {} (:at 1629913953310) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913953630) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913958043) (:by |B1y7Rc-Zz) (:text |update-plugin) (:type :leaf)
                          |j $ {} (:at 1629913958686) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913967905) (:by |B1y7Rc-Zz) (:text |use-prompt) (:type :leaf)
                              |j $ {} (:at 1629913968461) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913968886) (:by |B1y7Rc-Zz) (:text |>>) (:type :leaf)
                                  |j $ {} (:at 1629913969779) (:by |B1y7Rc-Zz) (:text |states) (:type :leaf)
                                  |r $ {} (:at 1629913970817) (:by |B1y7Rc-Zz) (:text |:update) (:type :leaf)
                              |r $ {} (:at 1629913975139) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913975139) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1629913975139) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913975139) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                      |j $ {} (:at 1629913975139) (:by |B1y7Rc-Zz) (:text "|\"Update task:") (:type :leaf)
                                  |v $ {} (:at 1629913975139) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913975139) (:by |B1y7Rc-Zz) (:text |:initial) (:type :leaf)
                                      |j $ {} (:at 1629913975139) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913975139) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                          |j $ {} (:at 1629913975139) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913975139) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                              |j $ {} (:at 1629913975139) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                          |r $ {} (:at 1629913975139) (:by |B1y7Rc-Zz) (:text "|\"") (:type :leaf)
                  |T $ {} (:at 1521044705114) (:by |root) (:id |B1mFyp6LKf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521044705979) (:by |root) (:id |B1mFyp6LKfleaf) (:text |div) (:type :leaf)
                      |j $ {} (:at 1521044706214) (:by |root) (:id |BJQ9ypaIYf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521044707863) (:by |root) (:id |Hkz9kTaUKM) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1657813519503) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657813522685) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                              |b $ {} (:at 1657813524378) (:by |B1y7Rc-Zz) (:text |css/row) (:type :leaf)
                          |j $ {} (:at 1521044756825) (:by |root) (:id |SJg6M6TUKM) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521044757974) (:by |root) (:id |ByZpMTpLFz) (:text |:style) (:type :leaf)
                              |T $ {} (:at 1521044758908) (:by |root) (:id |ryx1mpTUKM) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1521044761416) (:by |root) (:id |HJZJQpTLFM) (:text |{}) (:type :leaf)
                                  |T $ {} (:at 1521044745161) (:by |root) (:id |S1-WMapIFM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521044746161) (:by |root) (:id |HJxWGaTIYM) (:text |:margin) (:type :leaf)
                                      |j $ {} (:at 1521044751078) (:by |root) (:id |rkXMaaLKz) (:text "||8px 0") (:type :leaf)
                                  |j $ {} (:at 1524382601594) (:by |root) (:id |rkzcihthM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524382605428) (:by |root) (:id |rkzcihthMleaf) (:text |:align-items) (:type :leaf)
                                      |j $ {} (:at 1524382606956) (:by |root) (:id |rkHB9o2FnG) (:text |:center) (:type :leaf)
                                  |n $ {} (:at 1536860324198) (:by |root) (:id |f2Qh2hQc6N) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536860324198) (:by |root) (:id |LVHL9w7X30) (:text |:max-width) (:type :leaf)
                                      |j $ {} (:at 1536860324198) (:by |root) (:id |GlhMtkRz5U) (:text |480) (:type :leaf)
                                  |r $ {} (:at 1536860321525) (:by |root) (:id |q9wWUT6RZO) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536860321525) (:by |root) (:id |VDiEwRsmAg) (:text |:width) (:type :leaf)
                                      |j $ {} (:at 1536860321525) (:by |root) (:id |GgVmuTNhlq) (:text "|\"100%") (:type :leaf)
                      |o $ {} (:at 1530458503489) (:by |root) (:id |SJgPNddUGQ) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1530458505143) (:by |root) (:id |Syg9Zd8f7) (:text |div) (:type :leaf)
                          |L $ {} (:at 1530458505325) (:by |root) (:id |Hymbc-OLzQ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1530458506976) (:by |root) (:id |BJM-9Wd8zm) (:text |{}) (:type :leaf)
                              |b $ {} (:at 1657813528882) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657813531163) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                  |b $ {} (:at 1657813532686) (:by |B1y7Rc-Zz) (:text |css/flex) (:type :leaf)
                              |j $ {} (:at 1530458507343) (:by |root) (:id |Bkf75-OLfQ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1530458510631) (:by |root) (:id |Hk-75Z_LGm) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1530458715590) (:by |root) (:id |S14PzdIfQ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1530458715944) (:by |root) (:id |HkWXwfuUzX) (:text |{}) (:type :leaf)
                                      |r $ {} (:at 1530458730669) (:by |root) (:id |SyQ_M_LMm) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1530458733596) (:by |root) (:id |SyQ_M_LMmleaf) (:text |:padding) (:type :leaf)
                                          |j $ {} (:at 1530458735628) (:by |root) (:id |ryeIdfd8fm) (:text "|\"0 8px") (:type :leaf)
                                      |v $ {} (:at 1530458898753) (:by |root) (:id |SklsGmOIzQ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1530458904370) (:by |root) (:id |SklsGmOIzQleaf) (:text |:background-color) (:type :leaf)
                                          |j $ {} (:at 1530458904585) (:by |root) (:id |ryWmQ_IGX) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1530458905161) (:by |root) (:id |SJHlmm_8Mm) (:text |hsl) (:type :leaf)
                                              |j $ {} (:at 1530458905733) (:by |root) (:id |r1M7Qu8MQ) (:text |0) (:type :leaf)
                                              |r $ {} (:at 1530458906003) (:by |root) (:id |BJ-fQQ_LMQ) (:text |0) (:type :leaf)
                                              |v $ {} (:at 1530458907378) (:by |root) (:id |S1mfmXuUzm) (:text |96) (:type :leaf)
                                      |yT $ {} (:at 1531673079635) (:by |root) (:id |BJgZ5xYQQ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1531673081673) (:by |root) (:id |BJgZ5xYQQleaf) (:text |:overflow) (:type :leaf)
                                          |j $ {} (:at 1531673082728) (:by |root) (:id |rJxGZ9xF7X) (:text |:auto) (:type :leaf)
                          |P $ {} (:at 1629913996862) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1629913999366) (:by |B1y7Rc-Zz) (:text |span) (:type :leaf)
                              |T $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629914001287) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629914008347) (:by |B1y7Rc-Zz) (:text |:inner-text) (:type :leaf)
                                      |j $ {} (:at 1629915537443) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1629915538605) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                          |T $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                  |r $ {} (:at 1629914009355) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1629914010561) (:by |B1y7Rc-Zz) (:text |:style) (:type :leaf)
                                      |T $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |:display) (:type :leaf)
                                              |j $ {} (:at 1657813773161) (:by |B1y7Rc-Zz) (:text |:block) (:type :leaf)
                                          |r $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |:height) (:type :leaf)
                                              |j $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |32) (:type :leaf)
                                          |v $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |:line-height) (:type :leaf)
                                              |j $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:text "|\"32px") (:type :leaf)
                                          |x $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |:overflow) (:type :leaf)
                                              |j $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |:auto) (:type :leaf)
                                          |y $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |:white-space) (:type :leaf)
                                              |j $ {} (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |:nowrap) (:type :leaf)
                                  |v $ {} (:at 1629914012487) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629914014251) (:by |B1y7Rc-Zz) (:text |:on-click) (:type :leaf)
                                      |j $ {} (:at 1629914014606) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629914014979) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1629914015633) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629914015995) (:by |B1y7Rc-Zz) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1629914016807) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                          |r $ {} (:at 1629914017303) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629914019045) (:by |B1y7Rc-Zz) (:text |.show) (:type :leaf)
                                              |j $ {} (:at 1629914023530) (:by |B1y7Rc-Zz) (:text |update-plugin) (:type :leaf)
                                              |r $ {} (:at 1629914024755) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                              |v $ {} (:at 1629914025154) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629914025562) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                                  |j $ {} (:at 1629914029251) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629914037877) (:by |B1y7Rc-Zz) (:text |result) (:type :leaf)
                                                  |r $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |d!) (:type :leaf)
                                                      |j $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |:task/update-text) (:type :leaf)
                                                      |r $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                          |j $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                              |j $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |T $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                                  |j $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                                          |r $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                              |j $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |result) (:type :leaf)
                                                          |v $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |:group) (:type :leaf)
                                                              |j $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |:pending-tasks) (:type :leaf)
                                                          |x $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:type :expr)
                                                            :data $ {}
                                                              |T $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |:time) (:type :leaf)
                                                              |j $ {} (:at 1629914041290) (:by |B1y7Rc-Zz) (:type :expr)
                                                                :data $ {}
                                                                  |j $ {} (:at 1629915525748) (:by |B1y7Rc-Zz) (:text |js/Date.now) (:type :leaf)
                      |v $ {} (:at 1521044766745) (:by |root) (:id |BJP766LFz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521044768029) (:by |root) (:id |BJP766LFzleaf) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1521044769178) (:by |root) (:id |S1eOQ6pUtG) (:text |16) (:type :leaf)
                          |r $ {} (:at 1521044769783) (:by |root) (:id |rkfY76aLKf) (:text |nil) (:type :leaf)
                      |w $ {} (:at 1521044771539) (:by |root) (:id |r13XapUFz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521044772061) (:by |root) (:id |r13XapUFzleaf) (:text |div) (:type :leaf)
                          |j $ {} (:at 1521044772332) (:by |root) (:id |SkN3m6T8KM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521044772681) (:by |root) (:id |S17nXa6LYf) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1521044851165) (:by |root) (:id |Sk-i_TaUtz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521044852591) (:by |root) (:id |H1loOaaIFM) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1521044852802) (:by |root) (:id |ByZada6LFf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521044853142) (:by |root) (:id |r1e6_paUtM) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1521044853380) (:by |root) (:id |SkHTO6pIYG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1521044854579) (:by |root) (:id |ryNT_TaLKM) (:text |:cursor) (:type :leaf)
                                          |j $ {} (:at 1521044855737) (:by |root) (:id |SJbkYp6Ltf) (:text |:pointer) (:type :leaf)
                              |r $ {} (:at 1521044856686) (:by |root) (:id |rkZtT6IYM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521044858637) (:by |root) (:id |rkZtT6IYMleaf) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1584893323355) (:by |B1y7Rc-Zz) (:id |fRdigBedMI) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1584893323892) (:by |B1y7Rc-Zz) (:id |yQW4SQr0en) (:text |fn) (:type :leaf)
                                      |L $ {} (:at 1584893324167) (:by |B1y7Rc-Zz) (:id |sB-7nqmj-) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1584893324418) (:by |B1y7Rc-Zz) (:id |Pw9KzVo1Bu) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1584893326108) (:by |B1y7Rc-Zz) (:id |mWaB8sZgxd) (:text |d!) (:type :leaf)
                                      |T $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |u9E6dpT5N9) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1584893322918) (:by |B1y7Rc-Zz) (:id |mioZu6p7Mr) (:text |d!) (:type :leaf)
                                          |j $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |TmI9mRFbo8) (:text |:task/move-task) (:type :leaf)
                                          |r $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |sGAjG7lEpd) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |hvBOG7Nfg6) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |wALNFk-NyU) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |7JD9hpiMCK) (:text |:id) (:type :leaf)
                                                  |j $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |-artYt0hME) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |UMYzPK-aMG) (:text |:id) (:type :leaf)
                                                      |j $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |vr2u67FfbG) (:text |task) (:type :leaf)
                                              |r $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |4bWm3Rf4LQ) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |NpcznGdxL8) (:text |:from) (:type :leaf)
                                                  |j $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |EyNZJybrp6) (:text |:pending-tasks) (:type :leaf)
                                              |v $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |yzOFsbAstS) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |407zihlyeH) (:text |:to) (:type :leaf)
                                                  |j $ {} (:at 1567350416723) (:by |B1y7Rc-Zz) (:id |ZsxW3N4gGBY) (:text |:working-tasks) (:type :leaf)
                          |r $ {} (:at 1521044788041) (:by |root) (:id |H1lhNaTLtM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1558370880973) (:by |B1y7Rc-Zz) (:id |H1lhNaTLtMleaf) (:text |comp-i) (:type :leaf)
                              |j $ {} (:at 1558370883996) (:by |B1y7Rc-Zz) (:id |HJH64668FG) (:text |:corner-up-left) (:type :leaf)
                              |r $ {} (:at 1558370886414) (:by |B1y7Rc-Zz) (:id |SIe5iYwz3m) (:text |14) (:type :leaf)
                              |v $ {} (:at 1558370886872) (:by |B1y7Rc-Zz) (:id |1s3AgyPUs3) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1558370887238) (:by |B1y7Rc-Zz) (:id |cMdaTjTcc) (:text |hsl) (:type :leaf)
                                  |j $ {} (:at 1558370887606) (:by |B1y7Rc-Zz) (:id |YRZlXAVFK0) (:text |0) (:type :leaf)
                                  |r $ {} (:at 1558370887821) (:by |B1y7Rc-Zz) (:id |0lmheUT8dF) (:text |0) (:type :leaf)
                                  |v $ {} (:at 1558370888349) (:by |B1y7Rc-Zz) (:id |m0O7dKbobE) (:text |50) (:type :leaf)
                      |y $ {} (:at 1521044771539) (:by |root) (:id |BybjBp68KG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1558370963793) (:by |B1y7Rc-Zz) (:id |2JkWp5nZK) (:text |;) (:type :leaf)
                          |T $ {} (:at 1521044772061) (:by |root) (:id |r13XapUFzleaf) (:text |div) (:type :leaf)
                          |j $ {} (:at 1521044772332) (:by |root) (:id |HkSjap8YG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521044772681) (:by |root) (:id |S17nXa6LYf) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1521044851165) (:by |root) (:id |Sk-i_TaUtz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521044852591) (:by |root) (:id |H1loOaaIFM) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1521044852802) (:by |root) (:id |ByZada6LFf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521044853142) (:by |root) (:id |r1e6_paUtM) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1521044853380) (:by |root) (:id |SkHTO6pIYG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1521044854579) (:by |root) (:id |ryNT_TaLKM) (:text |:cursor) (:type :leaf)
                                          |j $ {} (:at 1521044855737) (:by |root) (:id |SJbkYp6Ltf) (:text |:pointer) (:type :leaf)
                              |r $ {} (:at 1521044856686) (:by |root) (:id |rkZtT6IYM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521044858637) (:by |root) (:id |rkZtT6IYMleaf) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |-coyJ7YUn7) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |3JnuT_sVKW) (:text |action->) (:type :leaf)
                                      |j $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |RF-7ZUBvFv) (:text |:task/move-task) (:type :leaf)
                                      |r $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |4rR-A_UAIW) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |IwD-QIxEIw) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |ahxXFKepF_) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |fht4GEHxOt) (:text |:id) (:type :leaf)
                                              |j $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |0FHXbigaCy) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |xbLpjFIE70) (:text |:id) (:type :leaf)
                                                  |j $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |Ttq2-OILc1) (:text |task) (:type :leaf)
                                          |r $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |CEaabxtuEP) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |c4Kg8lIohx) (:text |:from) (:type :leaf)
                                              |j $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |A9B6I-O8Cr) (:text |:pending-tasks) (:type :leaf)
                                          |v $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |QgKHjS0Ga4) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |QIDZmqh0kX) (:text |:to) (:type :leaf)
                                              |j $ {} (:at 1567350421707) (:by |B1y7Rc-Zz) (:id |STy8T34vLUb) (:text |:done-tasks) (:type :leaf)
                          |r $ {} (:at 1521044788041) (:by |root) (:id |H1lhNaTLtM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1558370897931) (:by |B1y7Rc-Zz) (:id |H1lhNaTLtMleaf) (:text |comp-i) (:type :leaf)
                              |j $ {} (:at 1558370892550) (:by |B1y7Rc-Zz) (:id |HJH64668FG) (:text |:check) (:type :leaf)
                              |r $ {} (:at 1558370893971) (:by |B1y7Rc-Zz) (:id |4qVoDz68tZ) (:text |14) (:type :leaf)
                              |v $ {} (:at 1558370894462) (:by |B1y7Rc-Zz) (:id |1Jd1D5j_m1) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1558370894978) (:by |B1y7Rc-Zz) (:id |LkUFTO42-0) (:text |hsl) (:type :leaf)
                                  |j $ {} (:at 1558370895321) (:by |B1y7Rc-Zz) (:id |nVYQJ7m4Ts) (:text |0) (:type :leaf)
                                  |r $ {} (:at 1558370895622) (:by |B1y7Rc-Zz) (:id |F81vnwPUI-) (:text |0) (:type :leaf)
                                  |v $ {} (:at 1558370896234) (:by |B1y7Rc-Zz) (:id |ZbgGSu5Xp1) (:text |50) (:type :leaf)
                      |yT $ {} (:at 1629913982351) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913983566) (:by |B1y7Rc-Zz) (:text |.render) (:type :leaf)
                          |j $ {} (:at 1629913987031) (:by |B1y7Rc-Zz) (:text |update-plugin) (:type :leaf)
        :ns $ {} (:at 1521044483128) (:by |root) (:id |rylibhpUKM) (:type :expr)
          :data $ {}
            |T $ {} (:at 1521044483128) (:by |root) (:id |HJZj-na8YG) (:text |ns) (:type :leaf)
            |j $ {} (:at 1521044483128) (:by |root) (:id |SJfjW36IYM) (:text |app.comp.pending) (:type :leaf)
            |r $ {} (:at 1500541010211) (:by nil) (:id |Bk-D7n6LFf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HyJlqLelRBW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |SylgqLee0B-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1629913928026) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |SJQlcUlgRr-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |By4lc8gxCB-) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |rJIlq8leCBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |ryvl5IllRSb) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1516547378489) (:by |root) (:id |H1Fgc8egCSW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |Hy9x5IeeASW) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |rkoe5LxlCBW) (:text |ui) (:type :leaf)
                |u $ {} (:at 1657813091126) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657813094443) (:by |B1y7Rc-Zz) (:text |respo-ui.css) (:type :leaf)
                    |b $ {} (:at 1657813095790) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1657813096397) (:by |B1y7Rc-Zz) (:text |css) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |B1gpZxc3yG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1542535168011) (:by |root) (:id |H189Igg0S-) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |HJw9LexRS-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |B1_98eeRSb) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkqqIggASZ) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |SysqUxxRH-) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |Bkh9UglCrZ) (:text |div) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |BkaqLel0H-) (:text |span) (:type :leaf)
                        |xT $ {} (:at 1584893186966) (:by |B1y7Rc-Zz) (:id |r1egw5YSFM) (:text |>>) (:type :leaf)
                        |y $ {} (:at 1507815955483) (:by |root) (:id |ryjGzeahb) (:text |button) (:type :leaf)
                        |yT $ {} (:at 1521044610764) (:by |root) (:id |rygFFhpLFf) (:text |list->) (:type :leaf)
                        |yr $ {} (:at 1521044740074) (:by |root) (:id |SJeoWaaItG) (:text |input) (:type :leaf)
                |xT $ {} (:at 1657813098988) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657813103265) (:by |B1y7Rc-Zz) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1657813104325) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657813104531) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657813105874) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |rJu-cIxlRSZ) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |By9-qLxlRHW) (:text |respo.comp.inspect) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1oZq8gl0r-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |rk2ZqUlx0SZ) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SJ0bqLggCH-) (:text |comp-inspect) (:type :leaf)
                |yD $ {} (:at 1507816109319) (:by |root) (:id |Sklr2Mg6n-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507816117447) (:by |root) (:id |SkbLhMlp3b) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1507816112686) (:by |root) (:id |H1GOhGephb) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507816113982) (:by |root) (:id |rk-53Mlah-) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1507816114704) (:by |root) (:id |SyN5nGgThZ) (:text |=<) (:type :leaf)
                |yy $ {} (:at 1521044620023) (:by |root) (:id |rkeEc2T8Yz) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1521044624327) (:by |root) (:id |rJSc26IYf) (:text |respo.util.list) (:type :leaf)
                    |r $ {} (:at 1521044625168) (:by |root) (:id |SJSd93p8YM) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1521044625428) (:by |root) (:id |SJLt93TLtM) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1521044632401) (:by |root) (:id |HJWc52T8tG) (:text |map-val) (:type :leaf)
                |yyr $ {} (:at 1530460214605) (:by |root) (:id |r11rddIfQ) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1572971316584) (:by |B1y7Rc-Zz) (:id |H1MySduLzX) (:text |respo-alerts.core) (:type :leaf)
                    |r $ {} (:at 1530460222813) (:by |root) (:id |HkZ8BO_LG7) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1530460223008) (:by |root) (:id |H1mwH__IGQ) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1629913961515) (:by |B1y7Rc-Zz) (:id |B1FBu_IzX) (:text |use-prompt) (:type :leaf)
                        |r $ {} (:at 1629914366390) (:by |B1y7Rc-Zz) (:text |comp-modal-menu) (:type :leaf)
                |yyv $ {} (:at 1558370900041) (:by |B1y7Rc-Zz) (:id |DnGAheTIPC) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1558370905094) (:by |B1y7Rc-Zz) (:id |6Ti9yVthLM) (:text |feather.core) (:type :leaf)
                    |r $ {} (:at 1558370907389) (:by |B1y7Rc-Zz) (:id |MZKkOX03Z) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1558370907593) (:by |B1y7Rc-Zz) (:id |DFr7Xk8tE) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1558370909061) (:by |B1y7Rc-Zz) (:id |_N0XJFS6uN) (:text |comp-i) (:type :leaf)
        :proc $ {} (:at 1521044483128) (:by |root) (:id |H1QjW3pUtf) (:type :expr)
          :data $ {}
      |app.comp.profile $ {}
        :defs $ {}
          |comp-profile $ {} (:at 1545759770753) (:by |root) (:id |3uRy-X1s_Y) (:type :expr)
            :data $ {}
              |T $ {} (:at 1545759770753) (:by |root) (:id |_Iumxn2YAs) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1545759770753) (:by |root) (:id |Bap6FVbSaB) (:text |comp-profile) (:type :leaf)
              |r $ {} (:at 1545759770753) (:by |root) (:id |J1jxR1C3-y) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545759770753) (:by |root) (:id |V1H9I_gWxK) (:text |user) (:type :leaf)
                  |j $ {} (:at 1545759770753) (:by |root) (:id |3IOhtmP78K) (:text |members) (:type :leaf)
              |v $ {} (:at 1545759770753) (:by |root) (:id |fW0Dosy15q) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545759770753) (:by |root) (:id |JKQF4o4OyF) (:text |div) (:type :leaf)
                  |j $ {} (:at 1545759770753) (:by |root) (:id |kZx11w9awo) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545759770753) (:by |root) (:id |65Xv5-20kC) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1657802366397) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657802368616) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                          |b $ {} (:at 1657802371262) (:by |B1y7Rc-Zz) (:text |css/flex) (:type :leaf)
                      |j $ {} (:at 1545759770753) (:by |root) (:id |mC3mmXfE4X) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545759770753) (:by |root) (:id |gU9LjiEcp3) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1545759770753) (:by |root) (:id |hjDVLSLPwzf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545759770753) (:by |root) (:id |orEOoDMU6qJ) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1545759770753) (:by |root) (:id |tNokQo8JqZw) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545759770753) (:by |root) (:id |3zWrbVbWzEq) (:text |:padding) (:type :leaf)
                                  |j $ {} (:at 1545759770753) (:by |root) (:id |WkRAF6nzcW-) (:text |16) (:type :leaf)
                  |r $ {} (:at 1545759770753) (:by |root) (:id |qx49Engo5wJ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545759770753) (:by |root) (:id |uNv98UOwmz_) (:text |div) (:type :leaf)
                      |j $ {} (:at 1545759770753) (:by |root) (:id |ilUQFUyRjEQ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545759770753) (:by |root) (:id |KvZVr8lYNCk) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1657802377403) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657802380992) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                              |b $ {} (:at 1657802385193) (:by |B1y7Rc-Zz) (:text |css/font-fancy) (:type :leaf)
                          |j $ {} (:at 1545759770753) (:by |root) (:id |ID7x9vNzjhn) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545759770753) (:by |root) (:id |DY8_dYHTyXR) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1545759770753) (:by |root) (:id |1aGDsAyPWHT) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545759770753) (:by |root) (:id |CGqx3CbADeC) (:text |{}) (:type :leaf)
                                  |r $ {} (:at 1545759770753) (:by |root) (:id |uEvgWJPI6dt) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1545759770753) (:by |root) (:id |fiRUli3ucMe) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1545759770753) (:by |root) (:id |tqvfVXK4Ebb) (:text |32) (:type :leaf)
                                  |v $ {} (:at 1545759770753) (:by |root) (:id |uxQ93qnV8oQ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1545759770753) (:by |root) (:id |CyI6A_siezs) (:text |:font-weight) (:type :leaf)
                                      |j $ {} (:at 1545759770753) (:by |root) (:id |c7atkSVJ39w) (:text |100) (:type :leaf)
                      |r $ {} (:at 1545759770753) (:by |root) (:id |80kicZrlA1w) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545759770753) (:by |root) (:id |DViYONVH9oa) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1545759770753) (:by |root) (:id |sjoP_rFtuYH) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545759770753) (:by |root) (:id |wBxFoKt6g9m) (:text |str) (:type :leaf)
                              |j $ {} (:at 1545759770753) (:by |root) (:id |cOPJFqBoxMC) (:text "||Hello! ") (:type :leaf)
                              |r $ {} (:at 1545759770753) (:by |root) (:id |C3aNDWfkv7s) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545759770753) (:by |root) (:id |e7SZLNPeG7f) (:text |:name) (:type :leaf)
                                  |j $ {} (:at 1545759770753) (:by |root) (:id |9U-Cu0_ERjp) (:text |user) (:type :leaf)
                  |v $ {} (:at 1545759770753) (:by |root) (:id |Aa-lsdGvcX8) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545759770753) (:by |root) (:id |RTCxq-X8lZg) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1545759770753) (:by |root) (:id |o6XUKr1si1N) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1545759770753) (:by |root) (:id |IEgJCLYrG7v) (:text |16) (:type :leaf)
                  |x $ {} (:at 1545759770753) (:by |root) (:id |iNomRZh5Y0h) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545759770753) (:by |root) (:id |y7qS8JU7eMi) (:text |div) (:type :leaf)
                      |j $ {} (:at 1545759770753) (:by |root) (:id |rukBzmZ4lsx) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545759770753) (:by |root) (:id |pmfNyIpobh8) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1545759770753) (:by |root) (:id |6Ksw8igdroO) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657812893684) (:by |B1y7Rc-Zz) (:id |Q2_3HdgL9NZ) (:text |:class-name) (:type :leaf)
                              |j $ {} (:at 1657812895304) (:by |B1y7Rc-Zz) (:id |N87HXWWJnUx) (:text |css/row) (:type :leaf)
                      |r $ {} (:at 1545759770753) (:by |root) (:id |JBOfBRTo5ap) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545759770753) (:by |root) (:id |N75JItn9Nij) (:text |<>) (:type :leaf)
                          |j $ {} (:at 1545759770753) (:by |root) (:id |VSdJurtL39G) (:text "|\"Members:") (:type :leaf)
                      |v $ {} (:at 1545759770753) (:by |root) (:id |IKVSHW1LvBQ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545759770753) (:by |root) (:id |XoUgd25UGrB) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1545759770753) (:by |root) (:id |41CjWjVKOZc) (:text |8) (:type :leaf)
                          |r $ {} (:at 1545759770753) (:by |root) (:id |EQVCMmQm89i) (:text |nil) (:type :leaf)
                      |x $ {} (:at 1545759770753) (:by |root) (:id |jXBM9X8gpDp) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545759770753) (:by |root) (:id |VZdnzWEIq8M) (:text |list->) (:type :leaf)
                          |j $ {} (:at 1545759770753) (:by |root) (:id |wUgzKJv6wpa) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545759770753) (:by |root) (:id |HUAWxwnLdpC) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1545759770753) (:by |root) (:id |7B_B4Q91fKv) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657812899236) (:by |B1y7Rc-Zz) (:id |dshuycWWw87) (:text |:class-name) (:type :leaf)
                                  |j $ {} (:at 1657812900887) (:by |B1y7Rc-Zz) (:id |73cLgD2XNcx) (:text |css/row) (:type :leaf)
                          |r $ {} (:at 1545759770753) (:by |root) (:id |Hse-BnUF3qU) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913582233) (:by |B1y7Rc-Zz) (:id |9WrgaOYQLJh) (:text |->) (:type :leaf)
                              |j $ {} (:at 1545759770753) (:by |root) (:id |dl9qrDTj6Kk) (:text |members) (:type :leaf)
                              |n $ {} (:at 1629913584092) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913588179) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |r $ {} (:at 1545759770753) (:by |root) (:id |sZfs6rbfqF_) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913592229) (:by |B1y7Rc-Zz) (:id |JQRR4VxwqZ9) (:text |.map-pair) (:type :leaf)
                                  |j $ {} (:at 1545759770753) (:by |root) (:id |-jwCOqQTkfG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1545759770753) (:by |root) (:id |pRuXN85HfGr) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1545759770753) (:by |root) (:id |v4-HfllrwPA) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1545759770753) (:by |root) (:id |TjLAuSfD-x3) (:text |k) (:type :leaf)
                                          |j $ {} (:at 1545759770753) (:by |root) (:id |O4Bd39xO07i) (:text |username) (:type :leaf)
                                      |r $ {} (:at 1545759770753) (:by |root) (:id |VKAxc5OaaZk) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1545759770753) (:by |root) (:id |IaA9e7i6RHl) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1545759770753) (:by |root) (:id |VX_XEta7rW6) (:text |k) (:type :leaf)
                                          |r $ {} (:at 1545759770753) (:by |root) (:id |Tx7oln4tHrb) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1545759770753) (:by |root) (:id |C8jb2V1dwHw) (:text |div) (:type :leaf)
                                              |j $ {} (:at 1545759770753) (:by |root) (:id |SFG9Da3GDYz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1545759770753) (:by |root) (:id |jET573oD1-f) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1545759770753) (:by |root) (:id |t0jJ_l55VdP) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1657812907792) (:by |B1y7Rc-Zz) (:id |IKZ50dVW2ea) (:text |:class-name) (:type :leaf)
                                                      |b $ {} (:at 1657812913311) (:by |B1y7Rc-Zz) (:text |css-member-label) (:type :leaf)
                                              |r $ {} (:at 1545759770753) (:by |root) (:id |hSi7B9y1Esq) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1545759770753) (:by |root) (:id |HIQBeGcV-Zq) (:text |<>) (:type :leaf)
                                                  |j $ {} (:at 1545759770753) (:by |root) (:id |pHV7RubRB6P) (:text |username) (:type :leaf)
                  |y $ {} (:at 1545759770753) (:by |root) (:id |6FZXU4c-CTj) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545759770753) (:by |root) (:id |kq1tw3IViCr) (:text |=<) (:type :leaf)
                      |j $ {} (:at 1545759770753) (:by |root) (:id |4U0Fy7NQOxX) (:text |nil) (:type :leaf)
                      |r $ {} (:at 1545759770753) (:by |root) (:id |8hW-gEVMkND) (:text |48) (:type :leaf)
                  |yT $ {} (:at 1545759770753) (:by |root) (:id |LY_lXRHF87F) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545759770753) (:by |root) (:id |_hElyVirmLb) (:text |div) (:type :leaf)
                      |j $ {} (:at 1545759770753) (:by |root) (:id |h2iutSZpImL) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545759770753) (:by |root) (:id |MtyEbZ_pR4Z) (:text |{}) (:type :leaf)
                      |r $ {} (:at 1545759770753) (:by |root) (:id |CQGo3iLka_K) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545759770753) (:by |root) (:id |YLKnqBSR9TR) (:text |button) (:type :leaf)
                          |j $ {} (:at 1545759770753) (:by |root) (:id |NKMPo2BfslI) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545759770753) (:by |root) (:id |YzbTCXIJEiu) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1545759770753) (:by |root) (:id |17XRtDvHXlG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657812932663) (:by |B1y7Rc-Zz) (:id |57HzGQdiUzm) (:text |:class-name) (:type :leaf)
                                  |j $ {} (:at 1657812936881) (:by |B1y7Rc-Zz) (:id |GB25qYKJ9qL) (:text |css/button) (:type :leaf)
                              |r $ {} (:at 1545759770753) (:by |root) (:id |iP4jtepJJRS) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545759770753) (:by |root) (:id |5PkSJo-4NGS) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1545759770753) (:by |root) (:id |pFEXASzCE5T) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1545759770753) (:by |root) (:id |h8r2k66dzvd) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1545759770753) (:by |root) (:id |A2hYatetlwe) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1545759770753) (:by |root) (:id |Ay0nQ2dJYEz) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1545759770753) (:by |root) (:id |lqfudNT4_2f) (:text |d!) (:type :leaf)
                                      |r $ {} (:at 1545759770753) (:by |root) (:id |NnnzB7tlJI3) (:type :expr)
                                        :data $ {}
                                          |j $ {} (:at 1636953739885) (:by |B1y7Rc-Zz) (:id |gqPDrfCnO0-) (:text |js/location.replace) (:type :leaf)
                                          |r $ {} (:at 1545759770753) (:by |root) (:id |dH93KED1z-L) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1545759770753) (:by |root) (:id |rLk2nX6CTTs) (:text |str) (:type :leaf)
                                              |j $ {} (:at 1545759770753) (:by |root) (:id |fAvy0DJa7_A) (:text |js/location.origin) (:type :leaf)
                                              |r $ {} (:at 1545759770753) (:by |root) (:id |Gxwsu2SrzeR) (:text "|\"?time=") (:type :leaf)
                                              |v $ {} (:at 1545759770753) (:by |root) (:id |KofNzJoayRU) (:type :expr)
                                                :data $ {}
                                                  |j $ {} (:at 1636953734895) (:by |B1y7Rc-Zz) (:id |rPZ5hT0kmbu) (:text |js/Date.now) (:type :leaf)
                          |r $ {} (:at 1545759770753) (:by |root) (:id |4T_V4JHQdK_) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545759770753) (:by |root) (:id |Q7fpuF66-nv) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1545759770753) (:by |root) (:id |xikjc1SQdrL) (:text "|\"Refresh") (:type :leaf)
                      |v $ {} (:at 1545759770753) (:by |root) (:id |f6mVuCOFrh-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545759770753) (:by |root) (:id |trOZbUWi776) (:text |=<) (:type :leaf)
                          |j $ {} (:at 1545759770753) (:by |root) (:id |tE4X906D1G2) (:text |8) (:type :leaf)
                          |r $ {} (:at 1545759770753) (:by |root) (:id |m-JtJsXhR3u) (:text |nil) (:type :leaf)
                      |x $ {} (:at 1545759770753) (:by |root) (:id |cFAhkOMfCw-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545759770753) (:by |root) (:id |Q5Taj-lXC5T) (:text |button) (:type :leaf)
                          |j $ {} (:at 1545759770753) (:by |root) (:id |eeQuAOmQau0) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545759770753) (:by |root) (:id |VcD6mY6AZHY) (:text |{}) (:type :leaf)
                              |b $ {} (:at 1657812939543) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657812942240) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                  |b $ {} (:at 1657812944168) (:by |B1y7Rc-Zz) (:text |css/button) (:type :leaf)
                              |j $ {} (:at 1545759770753) (:by |root) (:id |GwrQPgfCdpG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545759770753) (:by |root) (:id |cfalj-42M9S) (:text |:style) (:type :leaf)
                                  |j $ {} (:at 1545759770753) (:by |root) (:id |x6h2uDFuq2o) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1545759770753) (:by |root) (:id |I9lU5eJScmw) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1545759770753) (:by |root) (:id |er_yxEa4VQc) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1545759770753) (:by |root) (:id |3QBp1FXEnJ3) (:text |:color) (:type :leaf)
                                          |j $ {} (:at 1545759770753) (:by |root) (:id |IVRiKU_XOL5) (:text |:red) (:type :leaf)
                                      |r $ {} (:at 1545759770753) (:by |root) (:id |JiiNu8bNhca) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1545759770753) (:by |root) (:id |NRjkrCOpC08) (:text |:border-color) (:type :leaf)
                                          |j $ {} (:at 1545759770753) (:by |root) (:id |cM7hHEEk81f) (:text |:red) (:type :leaf)
                              |r $ {} (:at 1545759770753) (:by |root) (:id |F9uSBlApyHM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545759770753) (:by |root) (:id |A6DswSMND8i) (:text |:on-click) (:type :leaf)
                                  |j $ {} (:at 1545759770753) (:by |root) (:id |ZU36Q4kIbxZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1545759770753) (:by |root) (:id |CL9SI9L2LFG) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1545759770753) (:by |root) (:id |bMDz4Xegw8V) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1545759770753) (:by |root) (:id |OTEWbdk4Txn) (:text |e) (:type :leaf)
                                          |j $ {} (:at 1545759770753) (:by |root) (:id |2E3__0BqyvD) (:text |dispatch!) (:type :leaf)
                                          |r $ {} (:at 1545759770753) (:by |root) (:id |6evMqnGO3G9) (:text |mutate!) (:type :leaf)
                                      |r $ {} (:at 1545759770753) (:by |root) (:id |5JXfqdIAJmN) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1545759770753) (:by |root) (:id |mKE7HLIBx_z) (:text |dispatch!) (:type :leaf)
                                          |j $ {} (:at 1545759770753) (:by |root) (:id |3lXd_exsG4h) (:text |:user/log-out) (:type :leaf)
                                          |r $ {} (:at 1545759770753) (:by |root) (:id |0AJLLQfBHCB) (:text |nil) (:type :leaf)
                                      |v $ {} (:at 1545759770753) (:by |root) (:id |IdievUteAaL) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1545759770753) (:by |root) (:id |RTsooEooBcx) (:text |.removeItem) (:type :leaf)
                                          |j $ {} (:at 1545759770753) (:by |root) (:id |3Eq10K0tMeQ) (:text |js/localStorage) (:type :leaf)
                                          |r $ {} (:at 1545759770753) (:by |root) (:id |HQ7NKQUNjHC) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1545759770753) (:by |root) (:id |Eb2UjmChIjA) (:text |:storage-key) (:type :leaf)
                                              |j $ {} (:at 1545759770753) (:by |root) (:id |OpToEf_HOfb) (:text |config/site) (:type :leaf)
                          |r $ {} (:at 1545759770753) (:by |root) (:id |hDQ8zMkizdv) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545759770753) (:by |root) (:id |CaKx3jPlZ0t) (:text |<>) (:type :leaf)
                              |j $ {} (:at 1545759770753) (:by |root) (:id |KRnqoW9omRa) (:text "|\"Log out") (:type :leaf)
          |css-member-label $ {} (:at 1657812913764) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657812915295) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
              |b $ {} (:at 1657812913764) (:by |B1y7Rc-Zz) (:text |css-member-label) (:type :leaf)
              |h $ {} (:at 1657812913764) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1657812916565) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |b $ {} (:at 1657812917908) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1657812919256) (:by |B1y7Rc-Zz) (:text "|\"$0") (:type :leaf)
                      |b $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |:padding) (:type :leaf)
                              |b $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:text "|\"0 8px") (:type :leaf)
                          |h $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |:border) (:type :leaf)
                              |b $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                  |b $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:text "|\"1px solid ") (:type :leaf)
                                  |h $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |hsl) (:type :leaf)
                                      |b $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |h $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
                                      |l $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |80) (:type :leaf)
                          |l $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |:border-radius) (:type :leaf)
                              |b $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:text "|\"16px") (:type :leaf)
                          |o $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |:margin) (:type :leaf)
                              |b $ {} (:at 1657812919760) (:by |B1y7Rc-Zz) (:text "|\"0 4px") (:type :leaf)
          |style-trigger $ {} (:at 1500541010211) (:by nil) (:id |B1GGMcLxgAHW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |BkXMzcIgeRBW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |SkNMGqUlxRS-) (:text |style-trigger) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |rkBMzcLeeRSb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541010211) (:by |root) (:id |ryUMfc8xx0rb) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541010211) (:by nil) (:id |BkDfG9UexCB-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |S1OMfcIgxRB-) (:text |:font-size) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |rytMGqUllRr-) (:text |14) (:type :leaf)
                  |r $ {} (:at 1500541010211) (:by nil) (:id |ByqzG98xg0S-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |BJszMcUgg0SW) (:text |:cursor) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |HJhzMqLgg0BW) (:text |:pointer) (:type :leaf)
                  |v $ {} (:at 1500541010211) (:by nil) (:id |rJpGM9IlxCrb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |ry0GzcLle0B-) (:text |:background-color) (:type :leaf)
                      |j $ {} (:at 1558370677601) (:by |B1y7Rc-Zz) (:id |wmXy3yWBD) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1558370678092) (:by |B1y7Rc-Zz) (:id |rykQGqUelArZ) (:text |hsl) (:type :leaf)
                          |j $ {} (:at 1558370679216) (:by |B1y7Rc-Zz) (:id |GYS7qkQIp) (:text |200) (:type :leaf)
                          |r $ {} (:at 1558370679753) (:by |B1y7Rc-Zz) (:id |8WGBrI1sL0) (:text |100) (:type :leaf)
                          |v $ {} (:at 1558370680262) (:by |B1y7Rc-Zz) (:id |zKyZ_kME9y) (:text |84) (:type :leaf)
                  |x $ {} (:at 1500541010211) (:by nil) (:id |r1gQzc8xe0SZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |SkbQfq8geCBb) (:text |:color) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |r1fmf5IgxRr-) (:text |:white) (:type :leaf)
                  |y $ {} (:at 1500541010211) (:by nil) (:id |B17XGqLegAHb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |r1V7f5IxeCSW) (:text |:padding) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by |root) (:id |BJHQMc8geRBb) (:text "||0 8px") (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |ByC9-5Lee0rW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |Bk1s-qLxlAH-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |ryljZqUglCrZ) (:text |app.comp.profile) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |HkCj-9IxgABb) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |SyknZqIgxCBW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |Bkx3W5LxeRHW) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1629913603324) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |H1X3W58egRrZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |BJVhZcUelRrZ) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |Sk8h-5LgxRBW) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |Byw3Z9IexAB-) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |B1F2b98glCBb) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rJq3Zc8xxCBb) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |HyjhZ9UeeRrb) (:text |schema) (:type :leaf)
                |t $ {} (:at 1500541010211) (:by nil) (:id |2mbSlW2mH) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1545759906504) (:by |root) (:id |B1F2b98glCBb) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rJq3Zc8xxCBb) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1545759908068) (:by |root) (:id |HyjhZ9UeeRrb) (:text |config) (:type :leaf)
                |u $ {} (:at 1657802390870) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657802393649) (:by |B1y7Rc-Zz) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1657802395794) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657802396041) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657802397272) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
                |uT $ {} (:at 1657802398771) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657802400564) (:by |B1y7Rc-Zz) (:text |respo-ui.css) (:type :leaf)
                    |b $ {} (:at 1657802401577) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1657802402374) (:by |B1y7Rc-Zz) (:text |css) (:type :leaf)
                |v $ {} (:at 1500541010211) (:by nil) (:id |HJ33Z9Ill0rW) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1516547419785) (:by |root) (:id |H1R2Z58eeCBZ) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |HyyaWqUee0rZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |SklpZqLgg0HZ) (:text |ui) (:type :leaf)
                |y $ {} (:at 1500541010211) (:by nil) (:id |HyxIgc3JG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1542535189284) (:by |root) (:id |BJHi-5UxxCSZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |B1LsWcIeeArW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HkvjWqUlgRS-) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |B1FjW9UegCSW) (:text |defcomp) (:type :leaf)
                        |n $ {} (:at 1524161390866) (:by |root) (:id |H1LujUL2G) (:text |list->) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |ryqiZqUel0B-) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SkooW9UgxRrb) (:text |span) (:type :leaf)
                        |w $ {} (:at 1524160969081) (:by |root) (:id |r1egAYL83G) (:text |button) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HJ2obqIlgCB-) (:text |div) (:type :leaf)
                        |y $ {} (:at 1500541010211) (:by |root) (:id |HyaiWqIgxCrZ) (:text |a) (:type :leaf)
                |yT $ {} (:at 1500541010211) (:by nil) (:id |ryTT-cLgxABZ) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1500541010211) (:by |root) (:id |rJJRW5UegRrW) (:text |respo.comp.space) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |H1gAZc8llRrW) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |Hy-0b58xxCrW) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |H1XCWcIxlRS-) (:text |=<) (:type :leaf)
                |yj $ {} (:at 1524160957264) (:by |root) (:id |HklH6YUUhG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1524160959360) (:by |root) (:id |r1Z8atUI3M) (:text |app.style) (:type :leaf)
                    |r $ {} (:at 1524160959999) (:by |root) (:id |HkHv6KUL3G) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1524160961127) (:by |root) (:id |HJzOaFUU3f) (:text |style) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |rJ4RbcUxeCBZ) (:type :expr)
          :data $ {}
      |app.comp.sidebar $ {}
        :defs $ {}
          |comp-sidebar $ {} (:at 1500541010211) (:by nil) (:id |Bk2vfqUxl0BZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541010211) (:by |root) (:id |Sy6DG9UglCrb) (:text |defcomp) (:type :leaf)
              |j $ {} (:at 1500541010211) (:by |root) (:id |rJRPfqLgxArb) (:text |comp-sidebar) (:type :leaf)
              |r $ {} (:at 1500541010211) (:by nil) (:id |H11df58le0Bb) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1520961756193) (:by |root) (:id |Byl7ktFrKz) (:text |router) (:type :leaf)
                  |T $ {} (:at 1500541010211) (:by |root) (:id |rJxuzcLle0S-) (:text |logged-in?) (:type :leaf)
                  |j $ {} (:at 1521737522399) (:by |root) (:id |SJlbiK_YKz) (:text |numbers) (:type :leaf)
              |v $ {} (:at 1531641154666) (:by |root) (:id |HJsraOdQ7) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1531641155584) (:by |root) (:id |ryejrpdu7X) (:text |div) (:type :leaf)
                  |L $ {} (:at 1531641155816) (:by |root) (:id |Hy-hSTuO7Q) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1531641156563) (:by |root) (:id |Hyx2BT__Q7) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1531641163113) (:by |root) (:id |r1ZX8pdOmX) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1531641165098) (:by |root) (:id |r1gX8T_OmQ) (:text |:style) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |ryWP8TddQ7) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |Byb2zcIlx0SW) (:text |{}) (:type :leaf)
                              |yv $ {} (:at 1531641116610) (:by |root) (:id |BySX6d_X7) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1531641120862) (:by |root) (:id |BySX6d_X7leaf) (:text |:flex-shrink) (:type :leaf)
                                  |j $ {} (:at 1531641121606) (:by |root) (:id |SyzFX6ddmm) (:text |0) (:type :leaf)
                              |yx $ {} (:at 1531641127431) (:by |root) (:id |rJe1N6dOmm) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1531641129583) (:by |root) (:id |rJe1N6dOmmleaf) (:text |:border-bottom) (:type :leaf)
                                  |j $ {} (:at 1531641129903) (:by |root) (:id |B1GzN6uOmX) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1531641130375) (:by |root) (:id |ryZMEaOO7Q) (:text |str) (:type :leaf)
                                      |j $ {} (:at 1531641132857) (:by |root) (:id |H1QNTd_mX) (:text "|\"1px solid ") (:type :leaf)
                                      |r $ {} (:at 1531641133859) (:by |root) (:id |S1xLNa_O7Q) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1531641134327) (:by |root) (:id |ryL4audX7) (:text |hsl) (:type :leaf)
                                          |j $ {} (:at 1531641134632) (:by |root) (:id |HyvN6O_7m) (:text |0) (:type :leaf)
                                          |r $ {} (:at 1531641134993) (:by |root) (:id |r1Zv4T_umQ) (:text |0) (:type :leaf)
                                          |v $ {} (:at 1531641136507) (:by |root) (:id |B17v46_OXm) (:text |90) (:type :leaf)
                              |yy $ {} (:at 1536777946173) (:by |root) (:id |qdS8Tp36hz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536777949053) (:by |root) (:id |qdS8Tp36hzleaf) (:text |:background-color) (:type :leaf)
                                  |j $ {} (:at 1536777949823) (:by |root) (:id |g4Ey81X2Z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536777952757) (:by |root) (:id |oWi-b7qwyI) (:text |:theme) (:type :leaf)
                                      |j $ {} (:at 1536777956424) (:by |root) (:id |-HKbBpQeMi) (:text |config/site) (:type :leaf)
                  |T $ {} (:at 1500541010211) (:by nil) (:id |rkW_zqUxlCrZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJM_fc8elAHW) (:text |div) (:type :leaf)
                      |j $ {} (:at 1500541010211) (:by nil) (:id |H1QdzqLge0SW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541010211) (:by |root) (:id |BJNOG5LleABZ) (:text |{}) (:type :leaf)
                          |b $ {} (:at 1657802221043) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1657802222902) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                              |b $ {} (:at 1657802230825) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1657802233877) (:by |B1y7Rc-Zz) (:text |str-spaced) (:type :leaf)
                                  |T $ {} (:at 1657802226242) (:by |B1y7Rc-Zz) (:text |css/row-parted) (:type :leaf)
                                  |b $ {} (:at 1657802261613) (:by |B1y7Rc-Zz) (:text |css/font-fancy) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |SyBufq8elAHZ) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |rkUOfqIxxRS-) (:text |:style) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |S15_rVVFG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |Byb2zcIlx0SW) (:text |{}) (:type :leaf)
                                  |y $ {} (:at 1500541010211) (:by nil) (:id |SJR2MqIlx0S-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541010211) (:by |root) (:id |SkkpfcUxeCHb) (:text |:font-size) (:type :leaf)
                                      |j $ {} (:at 1520875030792) (:by |root) (:id |SJeazq8llABZ) (:text |24) (:type :leaf)
                                  |yr $ {} (:at 1521737903773) (:by |root) (:id |SkuheP-qf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521737905054) (:by |root) (:id |SkuheP-qfleaf) (:text |:padding) (:type :leaf)
                                      |j $ {} (:at 1521738032535) (:by |root) (:id |HkEt2gvWqG) (:text "||8 8px") (:type :leaf)
                                  |yv $ {} (:at 1531641178818) (:by |root) (:id |rkmw6OOm7) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1531641183394) (:by |root) (:id |rkmw6OOm7leaf) (:text |:max-width) (:type :leaf)
                                      |j $ {} (:at 1531641184135) (:by |root) (:id |SkOPpuuX7) (:text |800) (:type :leaf)
                                  |yx $ {} (:at 1531641186845) (:by |root) (:id |rJliPTduXX) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1531641189249) (:by |root) (:id |rJliPTduXXleaf) (:text |:margin) (:type :leaf)
                                      |j $ {} (:at 1531641190352) (:by |root) (:id |BymaDTdOXQ) (:text |:auto) (:type :leaf)
                      |r $ {} (:at 1520875047898) (:by |root) (:id |rJgxVUVVtf) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1520875048669) (:by |root) (:id |SJ-lELV4Fz) (:text |div) (:type :leaf)
                          |L $ {} (:at 1520875048910) (:by |root) (:id |H1MWEIV4Yf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1520875050291) (:by |root) (:id |ryZZVUV4YG) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1520875051016) (:by |root) (:id |SJMX484EFM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657813345130) (:by |B1y7Rc-Zz) (:id |S1lXNLVVtG) (:text |:class-name) (:type :leaf)
                                  |j $ {} (:at 1657813346953) (:by |B1y7Rc-Zz) (:id |SkZHfnu_Qm) (:text |css/row) (:type :leaf)
                          |T $ {} (:at 1500541010211) (:by nil) (:id |Bkj_M9LlxCHb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |Hk3dfcUex0rW) (:text |div) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |BJT_z5UgeRB-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkCufcIex0rb) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1657802335992) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657802339559) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                      |b $ {} (:at 1657813279428) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1657813281398) (:by |B1y7Rc-Zz) (:text |str-spaced) (:type :leaf)
                                          |T $ {} (:at 1657802341164) (:by |B1y7Rc-Zz) (:text |css/row) (:type :leaf)
                                          |b $ {} (:at 1657813282134) (:by |B1y7Rc-Zz) (:text |css-entry) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |BkxztoJgmz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1514302328636) (:by |root) (:id |SJVtzcUllCSW) (:text |:on-click) (:type :leaf)
                                      |j $ {} (:at 1520875297716) (:by |root) (:id |H1ecmvEEYz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1520875299130) (:by |root) (:id |BkSFGqIelRSb) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1520875299945) (:by |root) (:id |Byh7wVNFz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520875301244) (:by |root) (:id |HJeoQDV4tf) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1520875303034) (:by |root) (:id |Hke6QvNNKf) (:text |d!) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |S1l-NDVEtf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520875308253) (:by |root) (:id |B1iaGcIexAHZ) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |H126zqIglRB-) (:text |:router/change) (:type :leaf)
                                              |r $ {} (:at 1500541010211) (:by nil) (:id |Sy6pz58llCrW) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |SJRaG9IxlAB-) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by nil) (:id |BJk0zq8xxCr-) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1500541010211) (:by |root) (:id |BJg0MqUxe0r-) (:text |:name) (:type :leaf)
                                                      |j $ {} (:at 1500541010211) (:by |root) (:id |SyWCG5IlgAS-) (:text |:home) (:type :leaf)
                                  |r $ {} (:at 1520875268221) (:by |root) (:id |SJhbw4Ntf) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1520875271640) (:by |root) (:id |r10ZwNEKz) (:text |:style) (:type :leaf)
                                      |T $ {} (:at 1520961733434) (:by |root) (:id |rJNaTdKSFM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1520961734074) (:by |root) (:id |rympTdYBYz) (:text |if) (:type :leaf)
                                          |j $ {} (:at 1520961736037) (:by |root) (:id |HyexRdYBFf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520961735598) (:by |root) (:id |rJyC_YHKG) (:text |=) (:type :leaf)
                                              |j $ {} (:at 1520961788039) (:by |root) (:id |Bk-RdFrKG) (:text |:home) (:type :leaf)
                                              |r $ {} (:at 1520961762439) (:by |root) (:id |ByS9kKKSYf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1520961763035) (:by |root) (:id |SkE5yttrKM) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1520961763774) (:by |root) (:id |SkVoyKtrtf) (:text |router) (:type :leaf)
                                          |r $ {} (:at 1520961766080) (:by |root) (:id |S1bAkKYBYz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520961765338) (:by |root) (:id |S1xakKFBKf) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1520961767628) (:by |root) (:id |B1ggYFBYf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1520961768841) (:by |root) (:id |BkM01FFrKG) (:text |:color) (:type :leaf)
                                                  |j $ {} (:at 1536777979449) (:by |root) (:id |SJM-eKYrKG) (:text |:white) (:type :leaf)
                              |r $ {} (:at 1521737936096) (:by |root) (:id |Skd0xv-cz) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1521737937617) (:by |root) (:id |ByKAew-cG) (:text |div) (:type :leaf)
                                  |L $ {} (:at 1521737937859) (:by |root) (:id |HyzqClDbqf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521737938184) (:by |root) (:id |rk-c0xPZ9G) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1657802325083) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657802325083) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                          |b $ {} (:at 1657802325083) (:by |B1y7Rc-Zz) (:text |css-icon) (:type :leaf)
                                  |f $ {} (:at 1520874796553) (:by |root) (:id |BJwWWDWqM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1558366070894) (:by |B1y7Rc-Zz) (:id |HJBNBE4tGleaf) (:text |comp-i) (:type :leaf)
                                      |j $ {} (:at 1520874800662) (:by |root) (:id |HkLNSNEKM) (:text |:home) (:type :leaf)
                                      |r $ {} (:at 1558366072935) (:by |B1y7Rc-Zz) (:id |nEpxjhpM6) (:text |14) (:type :leaf)
                                      |v $ {} (:at 1558366203608) (:by |B1y7Rc-Zz) (:id |PFGcQCXfPu) (:text "|\"white") (:type :leaf)
                              |v $ {} (:at 1521737552520) (:by |root) (:id |rygQWZPb9z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521737552828) (:by |root) (:id |ByFL1vZ9Mleaf) (:text |<>) (:type :leaf)
                                  |j $ {} (:at 1521737554545) (:by |root) (:id |H1jLJvW9M) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521737557214) (:by |root) (:id |Sy7KU1P-cf) (:text |:working) (:type :leaf)
                                      |j $ {} (:at 1521737558836) (:by |root) (:id |BkC81w-qz) (:text |numbers) (:type :leaf)
                                  |r $ {} (:at 1521737853644) (:by |root) (:id |rylrFewWqG) (:text |style-count) (:type :leaf)
                          |j $ {} (:at 1500541010211) (:by nil) (:id |SyMsUENFG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |Hk3dfcUex0rW) (:text |div) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |BJT_z5UgeRB-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkCufcIex0rb) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |BkxztoJgmz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1514302328636) (:by |root) (:id |SJVtzcUllCSW) (:text |:on-click) (:type :leaf)
                                      |j $ {} (:at 1520875297716) (:by |root) (:id |BJePNw4EKG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1520875299130) (:by |root) (:id |BkSFGqIelRSb) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1520875299945) (:by |root) (:id |Byh7wVNFz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520875301244) (:by |root) (:id |HJeoQDV4tf) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1520875303034) (:by |root) (:id |Hke6QvNNKf) (:text |d!) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |S1l-NDVEtf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520875308253) (:by |root) (:id |B1iaGcIexAHZ) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |H126zqIglRB-) (:text |:router/change) (:type :leaf)
                                              |r $ {} (:at 1500541010211) (:by nil) (:id |Sy6pz58llCrW) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |SJRaG9IxlAB-) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by nil) (:id |BJk0zq8xxCr-) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1500541010211) (:by |root) (:id |BJg0MqUxe0r-) (:text |:name) (:type :leaf)
                                                      |j $ {} (:at 1520962777871) (:by |root) (:id |SyWCG5IlgAS-) (:text |:pending) (:type :leaf)
                                  |n $ {} (:at 1657813323743) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657813323743) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                      |b $ {} (:at 1657813323743) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657813323743) (:by |B1y7Rc-Zz) (:text |str-spaced) (:type :leaf)
                                          |b $ {} (:at 1657813323743) (:by |B1y7Rc-Zz) (:text |css/row) (:type :leaf)
                                          |h $ {} (:at 1657813323743) (:by |B1y7Rc-Zz) (:text |css-entry) (:type :leaf)
                                  |r $ {} (:at 1520875268221) (:by |root) (:id |S1gffDNEKz) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1520875271640) (:by |root) (:id |r10ZwNEKz) (:text |:style) (:type :leaf)
                                      |T $ {} (:at 1520961733434) (:by |root) (:id |rJNaTdKSFM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1520961734074) (:by |root) (:id |rympTdYBYz) (:text |if) (:type :leaf)
                                          |j $ {} (:at 1520961736037) (:by |root) (:id |HyexRdYBFf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520961735598) (:by |root) (:id |rJyC_YHKG) (:text |=) (:type :leaf)
                                              |j $ {} (:at 1520962782647) (:by |root) (:id |Bk-RdFrKG) (:text |:pending) (:type :leaf)
                                              |r $ {} (:at 1520961762439) (:by |root) (:id |ByS9kKKSYf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1520961763035) (:by |root) (:id |SkE5yttrKM) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1520961763774) (:by |root) (:id |SkVoyKtrtf) (:text |router) (:type :leaf)
                                          |r $ {} (:at 1520961766080) (:by |root) (:id |S1bAkKYBYz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520961765338) (:by |root) (:id |S1xakKFBKf) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1520961767628) (:by |root) (:id |B1ggYFBYf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1520961768841) (:by |root) (:id |BkM01FFrKG) (:text |:color) (:type :leaf)
                                                  |j $ {} (:at 1536778010856) (:by |root) (:id |SJM-eKYrKG) (:text |:white) (:type :leaf)
                              |n $ {} (:at 1521737936096) (:by |root) (:id |H1bH1bDWqM) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1521737937617) (:by |root) (:id |ByKAew-cG) (:text |div) (:type :leaf)
                                  |L $ {} (:at 1521737937859) (:by |root) (:id |HyzqClDbqf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521737938184) (:by |root) (:id |rk-c0xPZ9G) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1657802321855) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657802321855) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                          |b $ {} (:at 1657802321855) (:by |B1y7Rc-Zz) (:text |css-icon) (:type :leaf)
                                  |T $ {} (:at 1520874796553) (:by |root) (:id |Byzpgbv-qz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1558366082313) (:by |B1y7Rc-Zz) (:id |HJBNBE4tGleaf) (:text |comp-i) (:type :leaf)
                                      |j $ {} (:at 1558366090125) (:by |B1y7Rc-Zz) (:id |HkLNSNEKM) (:text |:clock) (:type :leaf)
                                      |r $ {} (:at 1558366091464) (:by |B1y7Rc-Zz) (:id |uOkSmE0TY) (:text |14) (:type :leaf)
                                      |v $ {} (:at 1558366201366) (:by |B1y7Rc-Zz) (:id |v_JINCFSl) (:text "|\"white") (:type :leaf)
                              |v $ {} (:at 1521737629299) (:by |root) (:id |BJeSskwZcz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521737629893) (:by |root) (:id |BJeSskwZczleaf) (:text |<>) (:type :leaf)
                                  |j $ {} (:at 1521737630263) (:by |root) (:id |BJGIsyv-cf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521737632367) (:by |root) (:id |SJ-LokwWqM) (:text |:pending) (:type :leaf)
                                      |j $ {} (:at 1521737635823) (:by |root) (:id |rJ9oJvWqf) (:text |numbers) (:type :leaf)
                                  |r $ {} (:at 1521737858250) (:by |root) (:id |HJeqYlDW9G) (:text |style-count) (:type :leaf)
                          |r $ {} (:at 1500541010211) (:by nil) (:id |ByMeP4VYM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |Hk3dfcUex0rW) (:text |div) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |BJT_z5UgeRB-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |rkCufcIex0rb) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1500541010211) (:by nil) (:id |BkxztoJgmz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1514302328636) (:by |root) (:id |SJVtzcUllCSW) (:text |:on-click) (:type :leaf)
                                      |j $ {} (:at 1520875297716) (:by |root) (:id |H1xdVwEVKM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1520875299130) (:by |root) (:id |BkSFGqIelRSb) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1520875299945) (:by |root) (:id |Byh7wVNFz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520875301244) (:by |root) (:id |HJeoQDV4tf) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1520875303034) (:by |root) (:id |Hke6QvNNKf) (:text |d!) (:type :leaf)
                                          |r $ {} (:at 1500541010211) (:by nil) (:id |S1l-NDVEtf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520875308253) (:by |root) (:id |B1iaGcIexAHZ) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |H126zqIglRB-) (:text |:router/change) (:type :leaf)
                                              |r $ {} (:at 1500541010211) (:by nil) (:id |Sy6pz58llCrW) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |SJRaG9IxlAB-) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by nil) (:id |BJk0zq8xxCr-) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1500541010211) (:by |root) (:id |BJg0MqUxe0r-) (:text |:name) (:type :leaf)
                                                      |j $ {} (:at 1520875322006) (:by |root) (:id |SyWCG5IlgAS-) (:text |:done) (:type :leaf)
                                  |n $ {} (:at 1657813305212) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657813307639) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                      |b $ {} (:at 1657813308893) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657813311840) (:by |B1y7Rc-Zz) (:text |str-spaced) (:type :leaf)
                                          |b $ {} (:at 1657813314275) (:by |B1y7Rc-Zz) (:text |css/row) (:type :leaf)
                                          |h $ {} (:at 1657813316752) (:by |B1y7Rc-Zz) (:text |css-entry) (:type :leaf)
                                  |r $ {} (:at 1520875268221) (:by |root) (:id |SylXfvNEtG) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1520875271640) (:by |root) (:id |r10ZwNEKz) (:text |:style) (:type :leaf)
                                      |T $ {} (:at 1520961733434) (:by |root) (:id |rJNaTdKSFM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1520961734074) (:by |root) (:id |rympTdYBYz) (:text |if) (:type :leaf)
                                          |j $ {} (:at 1520961736037) (:by |root) (:id |HyexRdYBFf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520961735598) (:by |root) (:id |rJyC_YHKG) (:text |=) (:type :leaf)
                                              |j $ {} (:at 1520961781293) (:by |root) (:id |Bk-RdFrKG) (:text |:done) (:type :leaf)
                                              |r $ {} (:at 1520961762439) (:by |root) (:id |ByS9kKKSYf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1520961763035) (:by |root) (:id |SkE5yttrKM) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1520961763774) (:by |root) (:id |SkVoyKtrtf) (:text |router) (:type :leaf)
                                          |r $ {} (:at 1520961766080) (:by |root) (:id |S1bAkKYBYz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520961765338) (:by |root) (:id |S1xakKFBKf) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1520961767628) (:by |root) (:id |B1ggYFBYf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1520961768841) (:by |root) (:id |BkM01FFrKG) (:text |:color) (:type :leaf)
                                                  |j $ {} (:at 1536778014300) (:by |root) (:id |SJM-eKYrKG) (:text |:white) (:type :leaf)
                              |n $ {} (:at 1521737936096) (:by |root) (:id |B1b2y-Pb5G) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1521737937617) (:by |root) (:id |ByKAew-cG) (:text |div) (:type :leaf)
                                  |L $ {} (:at 1521737937859) (:by |root) (:id |HyzqClDbqf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521737938184) (:by |root) (:id |rk-c0xPZ9G) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1657802318376) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657802318376) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                          |b $ {} (:at 1657802318376) (:by |B1y7Rc-Zz) (:text |css-icon) (:type :leaf)
                                  |T $ {} (:at 1520874796553) (:by |root) (:id |H1ejgbDZ9M) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1558366122312) (:by |B1y7Rc-Zz) (:id |HJBNBE4tGleaf) (:text |comp-i) (:type :leaf)
                                      |b $ {} (:at 1558366123177) (:by |B1y7Rc-Zz) (:id |SzVtz0du6) (:text |:package) (:type :leaf)
                                      |j $ {} (:at 1558366125960) (:by |B1y7Rc-Zz) (:id |HkLNSNEKM) (:text |14) (:type :leaf)
                                      |r $ {} (:at 1558366199252) (:by |B1y7Rc-Zz) (:id |KAhaDMHEbY) (:text "|\"white") (:type :leaf)
                              |v $ {} (:at 1521737644212) (:by |root) (:id |SkgVnkP-9f) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521737644918) (:by |root) (:id |SkgVnkP-9fleaf) (:text |<>) (:type :leaf)
                                  |j $ {} (:at 1521737646014) (:by |root) (:id |SygIhJv-qG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521737646552) (:by |root) (:id |H1Zr3yDZcM) (:text |:done) (:type :leaf)
                                      |j $ {} (:at 1521737647861) (:by |root) (:id |Syxw3ywZ9z) (:text |numbers) (:type :leaf)
                                  |r $ {} (:at 1521737862971) (:by |root) (:id |rJ1cgv-cf) (:text |style-count) (:type :leaf)
                      |v $ {} (:at 1521220013466) (:by |root) (:id |SyHnKdYFz) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1521220014248) (:by |root) (:id |rk82Y_YKM) (:text |div) (:type :leaf)
                          |L $ {} (:at 1521220014493) (:by |root) (:id |HkVIhK_FKM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521220014882) (:by |root) (:id |rJXIhKOYKG) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1521220018728) (:by |root) (:id |SJ-i3Y_KFM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1657813351741) (:by |B1y7Rc-Zz) (:id |Hyo3tuYFz) (:text |:class-name) (:type :leaf)
                                  |j $ {} (:at 1657813353150) (:by |B1y7Rc-Zz) (:id |Bkx33F_KYM) (:text |css/column) (:type :leaf)
                          |T $ {} (:at 1500541010211) (:by nil) (:id |H10FM9IeeRBb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541010211) (:by |root) (:id |ByyqzcUglRHZ) (:text |div) (:type :leaf)
                              |j $ {} (:at 1500541010211) (:by nil) (:id |rkl5GcLglABW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541010211) (:by |root) (:id |HybqMqUge0SW) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1657813332405) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1657813332405) (:by |B1y7Rc-Zz) (:text |:class-name) (:type :leaf)
                                      |b $ {} (:at 1657813332405) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657813332405) (:by |B1y7Rc-Zz) (:text |str-spaced) (:type :leaf)
                                          |b $ {} (:at 1657813332405) (:by |B1y7Rc-Zz) (:text |css/row) (:type :leaf)
                                          |h $ {} (:at 1657813332405) (:by |B1y7Rc-Zz) (:text |css-entry) (:type :leaf)
                                  |j $ {} (:at 1520875268221) (:by |root) (:id |HkeLzvEEFM) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1520875271640) (:by |root) (:id |r10ZwNEKz) (:text |:style) (:type :leaf)
                                      |T $ {} (:at 1520961733434) (:by |root) (:id |rJNaTdKSFM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1520961734074) (:by |root) (:id |rympTdYBYz) (:text |if) (:type :leaf)
                                          |j $ {} (:at 1520961736037) (:by |root) (:id |HyexRdYBFf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520961735598) (:by |root) (:id |rJyC_YHKG) (:text |=) (:type :leaf)
                                              |j $ {} (:at 1520961798220) (:by |root) (:id |Bk-RdFrKG) (:text |:profile) (:type :leaf)
                                              |r $ {} (:at 1520961762439) (:by |root) (:id |ByS9kKKSYf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1520961763035) (:by |root) (:id |SkE5yttrKM) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1520961763774) (:by |root) (:id |SkVoyKtrtf) (:text |router) (:type :leaf)
                                          |r $ {} (:at 1520961766080) (:by |root) (:id |S1bAkKYBYz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520961765338) (:by |root) (:id |S1xakKFBKf) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1520961767628) (:by |root) (:id |B1ggYFBYf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1520961768841) (:by |root) (:id |BkM01FFrKG) (:text |:color) (:type :leaf)
                                                  |j $ {} (:at 1536778018409) (:by |root) (:id |SJM-eKYrKG) (:text |:white) (:type :leaf)
                                  |r $ {} (:at 1500541010211) (:by nil) (:id |SJeLFokgXG) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1514302332444) (:by |root) (:id |Hkc5MqUgeCBb) (:text |:on-click) (:type :leaf)
                                      |j $ {} (:at 1520875332644) (:by |root) (:id |BJlprDENKM) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1520875334033) (:by |root) (:id |HybaHP4EYz) (:text |fn) (:type :leaf)
                                          |L $ {} (:at 1520875334361) (:by |root) (:id |SymCrDN4Fz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520875335369) (:by |root) (:id |HkMCSDEVFf) (:text |e) (:type :leaf)
                                              |j $ {} (:at 1520875336266) (:by |root) (:id |r1MkIvNNFz) (:text |d!) (:type :leaf)
                                          |T $ {} (:at 1500541010211) (:by nil) (:id |B1irwE4Yf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1520875339293) (:by |root) (:id |HyvLfcIelAHb) (:text |d!) (:type :leaf)
                                              |j $ {} (:at 1500541010211) (:by |root) (:id |r1_8fqLxgRHZ) (:text |:router/change) (:type :leaf)
                                              |r $ {} (:at 1500541010211) (:by nil) (:id |S1KIfc8xx0Sb) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541010211) (:by |root) (:id |BJqIM5LexCH-) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1500541010211) (:by nil) (:id |SyjIfc8ggAHZ) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1500541010211) (:by |root) (:id |HJ3LM5LgxABb) (:text |:name) (:type :leaf)
                                                      |j $ {} (:at 1500541010211) (:by |root) (:id |rJT8GqIgxRr-) (:text |:profile) (:type :leaf)
                              |v $ {} (:at 1521737960247) (:by |root) (:id |Syblx-v-5f) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1521737961526) (:by |root) (:id |rkWxZDZ5M) (:text |div) (:type :leaf)
                                  |L $ {} (:at 1521737961742) (:by |root) (:id |B1ZGlZw-5f) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521737962582) (:by |root) (:id |SkeMeWw-9f) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1521737962898) (:by |root) (:id |Sy-XxWDZqG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1657802311668) (:by |B1y7Rc-Zz) (:id |rkg7ebDbqG) (:text |:class-name) (:type :leaf)
                                          |j $ {} (:at 1657802313846) (:by |B1y7Rc-Zz) (:id |SJWVxbDZ5M) (:text |css-icon) (:type :leaf)
                                  |T $ {} (:at 1520874934457) (:by |root) (:id |S1eChr44tf) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1520874935084) (:by |root) (:id |Hy1pSVEFz) (:text |if) (:type :leaf)
                                      |L $ {} (:at 1520874937708) (:by |root) (:id |SJGypSVVFM) (:text |logged-in?) (:type :leaf)
                                      |T $ {} (:at 1520874915087) (:by |root) (:id |B1ooSNNFM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1558366223765) (:by |B1y7Rc-Zz) (:id |B1ooSNNFMleaf) (:text |comp-i) (:type :leaf)
                                          |j $ {} (:at 1558366360697) (:by |B1y7Rc-Zz) (:id |ryz0jHNEFf) (:text |:user) (:type :leaf)
                                          |r $ {} (:at 1558366183854) (:by |B1y7Rc-Zz) (:id |Pr36kpifD) (:text |14) (:type :leaf)
                                          |v $ {} (:at 1558366194140) (:by |B1y7Rc-Zz) (:id |wegTe-LTuf) (:text "|\"white") (:type :leaf)
                                      |j $ {} (:at 1520874941424) (:by |root) (:id |BySTHV4tM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1558366157110) (:by |B1y7Rc-Zz) (:id |HkWmpSE4FG) (:text |comp-i) (:type :leaf)
                                          |j $ {} (:at 1558366251665) (:by |B1y7Rc-Zz) (:id |rJfJUVVtz) (:text |:log-in) (:type :leaf)
                                          |r $ {} (:at 1558366161376) (:by |B1y7Rc-Zz) (:id |9ihX8IIL70) (:text |14) (:type :leaf)
                                          |v $ {} (:at 1558366195857) (:by |B1y7Rc-Zz) (:id |nDQUgXJM3) (:text "|\"white") (:type :leaf)
                              |x $ {} (:at 1521220026009) (:by |root) (:id |SJA21P-qG) (:type :expr)
                                :data $ {}
                                  |D $ {} (:at 1521220028997) (:by |root) (:id |HJ4aYOKYM) (:text |<>) (:type :leaf)
                                  |T $ {} (:at 1521737526453) (:by |root) (:id |Bk7A4yDb9M) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521737530051) (:by |root) (:id |rkxf6Y_Ktzleaf) (:text |:sessions) (:type :leaf)
                                      |j $ {} (:at 1521737533436) (:by |root) (:id |rJ7rJDWcz) (:text |numbers) (:type :leaf)
                                  |j $ {} (:at 1521737849364) (:by |root) (:id |Hymktevb5M) (:text |style-count) (:type :leaf)
          |css-entry $ {} (:at 1520875259977) (:by |root) (:id |BJlNbwV4Kz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657813284364) (:by |B1y7Rc-Zz) (:id |Hy-4-PENYM) (:text |defstyle) (:type :leaf)
              |j $ {} (:at 1657813271912) (:by |B1y7Rc-Zz) (:text |css-entry) (:type :leaf)
              |r $ {} (:at 1657813285080) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1657813286128) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1657813286480) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1657813288033) (:by |B1y7Rc-Zz) (:text "|\"$0") (:type :leaf)
                      |T $ {} (:at 1520875259977) (:by |root) (:id |SydNWwVNFM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1520875259977) (:by |root) (:id |ByY4WwNNKz) (:text |{}) (:type :leaf)
                          |v $ {} (:at 1520875259977) (:by |root) (:id |r1geVWPVNtf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1520875259977) (:by |root) (:id |r1-g4WwN4KM) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1520875259977) (:by |root) (:id |BJMxNZPENKM) (:text |:pointer) (:type :leaf)
                          |x $ {} (:at 1520961805632) (:by |root) (:id |r1IMYtHYG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1520961806545) (:by |root) (:id |r1IMYtHYGleaf) (:text |:color) (:type :leaf)
                              |j $ {} (:at 1520961806814) (:by |root) (:id |HyWDfFFrtG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1520961807407) (:by |root) (:id |BygwGFYStG) (:text |hsl) (:type :leaf)
                                  |j $ {} (:at 1520961808229) (:by |root) (:id |SJOMYFHtf) (:text |0) (:type :leaf)
                                  |r $ {} (:at 1520961808471) (:by |root) (:id |rk-_GYYBtG) (:text |0) (:type :leaf)
                                  |v $ {} (:at 1536777992619) (:by |root) (:id |BJKMFtBFM) (:text |80) (:type :leaf)
                          |y $ {} (:at 1521737825560) (:by |root) (:id |Hk9Dev-qM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521737828459) (:by |root) (:id |Hk9Dev-qMleaf) (:text |:align-items) (:type :leaf)
                              |j $ {} (:at 1521737829713) (:by |root) (:id |SyTvlDb5f) (:text |:center) (:type :leaf)
                          |yT $ {} (:at 1521738049299) (:by |root) (:id |BJ-YSbwb5M) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521738051193) (:by |root) (:id |BJ-YSbwb5Mleaf) (:text |:height) (:type :leaf)
                              |j $ {} (:at 1521738051848) (:by |root) (:id |BkSsSbvbqM) (:text |40) (:type :leaf)
                          |yj $ {} (:at 1531641231416) (:by |root) (:id |Bylv5TdOmX) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1531641233970) (:by |root) (:id |Bylv5TdOmXleaf) (:text |:margin-right) (:type :leaf)
                              |j $ {} (:at 1531641238421) (:by |root) (:id |HJV9qp_dQX) (:text |24) (:type :leaf)
          |css-icon $ {} (:at 1521737984541) (:by |root) (:id |SyxKZWvbqM) (:type :expr)
            :data $ {}
              |T $ {} (:at 1657802299994) (:by |B1y7Rc-Zz) (:id |H1WYbZD-cM) (:text |defstyle) (:type :leaf)
              |j $ {} (:at 1657802297986) (:by |B1y7Rc-Zz) (:text |css-icon) (:type :leaf)
              |r $ {} (:at 1657802300894) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1657802301563) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                  |T $ {} (:at 1657802302038) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1657802303352) (:by |B1y7Rc-Zz) (:text "|\"$0") (:type :leaf)
                      |T $ {} (:at 1521737995963) (:by |root) (:id |H1eNG-wWcM) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1521737997607) (:by |root) (:id |S1Bz-DWqM) (:text |merge) (:type :leaf)
                          |L $ {} (:at 1521737999722) (:by |root) (:id |HyZ8M-wW5M) (:text |ui/center) (:type :leaf)
                          |T $ {} (:at 1521737984541) (:by |root) (:id |HJXtZ-wZ9z) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521737987681) (:by |root) (:id |rJ-jZ-DZ5M) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1521737988866) (:by |root) (:id |BJaW-w-qG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521737990430) (:by |root) (:id |SJWnZbwb5f) (:text |:width) (:type :leaf)
                                  |j $ {} (:at 1531641210553) (:by |root) (:id |rkkM-PZ9f) (:text |24) (:type :leaf)
          |style-count $ {} (:at 1521737864890) (:by |root) (:id |HyxZqgD-5z) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521737865551) (:by |root) (:id |ByWW9ew-qG) (:text |def) (:type :leaf)
              |j $ {} (:at 1521737864890) (:by |root) (:id |ryzbqxPZ9z) (:text |style-count) (:type :leaf)
              |r $ {} (:at 1521737890304) (:by |root) (:id |SygqsePZcM) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1521737891228) (:by |root) (:id |HysjxDZcG) (:text |merge) (:type :leaf)
                  |L $ {} (:at 1521737892528) (:by |root) (:id |ryBsilw-qf) (:text |ui/center) (:type :leaf)
                  |T $ {} (:at 1521737864890) (:by |root) (:id |SkXZqlPZ5z) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521737867023) (:by |root) (:id |SJzG5xvZcG) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1521737867389) (:by |root) (:id |BkGXcxDZqG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1586710436683) (:by |B1y7Rc-Zz) (:id |BJZm5eDWqz) (:text |:min-width) (:type :leaf)
                          |j $ {} (:at 1521737916027) (:by |root) (:id |BkjqgDZ5M) (:text |20) (:type :leaf)
                      |r $ {} (:at 1521737878586) (:by |root) (:id |By1ogPZcM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521737881724) (:by |root) (:id |By1ogPZcMleaf) (:text |:font-size) (:type :leaf)
                          |j $ {} (:at 1521738013457) (:by |root) (:id |ryWGsgP-cz) (:text |14) (:type :leaf)
        :ns $ {} (:at 1500541010211) (:by nil) (:id |BkUXGcUegABW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541010211) (:by |root) (:id |S1DXG98elCSb) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541010211) (:by |root) (:id |HkO7fcLel0SZ) (:text |app.comp.sidebar) (:type :leaf)
            |v $ {} (:at 1500541010211) (:by nil) (:id |S1HVf5UxlRHZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541010211) (:by |root) (:id |HJLNzq8glABb) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541010211) (:by nil) (:id |BywNMcUleAHb) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1629913542326) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |BkcEM9IgxCSZ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |HJsNzqLleASW) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |SkTNfcLeeRBb) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1500541010211) (:by nil) (:id |HkCNz98el0Bb) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1516547394445) (:by |root) (:id |HkeBG5Lgl0SW) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |rkWrzqIxx0B-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by |root) (:id |S1GrG5LegAHZ) (:text |ui) (:type :leaf)
                |u $ {} (:at 1657802236364) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657802239447) (:by |B1y7Rc-Zz) (:text |respo-ui.css) (:type :leaf)
                    |b $ {} (:at 1657802240323) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1657802243742) (:by |B1y7Rc-Zz) (:text |css) (:type :leaf)
                |v $ {} (:at 1657802244467) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1657802246114) (:by |B1y7Rc-Zz) (:text |respo.css) (:type :leaf)
                    |b $ {} (:at 1657802247505) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1657802247748) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1657802249153) (:by |B1y7Rc-Zz) (:text |defstyle) (:type :leaf)
                |x $ {} (:at 1500541010211) (:by nil) (:id |SkVQg5h1z) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1542535196614) (:by |root) (:id |HJp7zc8xxArZ) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1500541010211) (:by |root) (:id |S1AmGcLexRH-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541010211) (:by nil) (:id |SyJNG5IexArb) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1500541010211) (:by |root) (:id |BkbEz9LegRr-) (:text |defcomp) (:type :leaf)
                        |r $ {} (:at 1500541010211) (:by |root) (:id |BJM4fcLlxCrb) (:text |<>) (:type :leaf)
                        |v $ {} (:at 1500541010211) (:by |root) (:id |SyQ4McIex0HZ) (:text |span) (:type :leaf)
                        |x $ {} (:at 1500541010211) (:by |root) (:id |HkNEM9Lee0HZ) (:text |div) (:type :leaf)
                |y $ {} (:at 1520874782736) (:by |root) (:id |SJxv7SE4YG) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1558366043596) (:by |B1y7Rc-Zz) (:id |SkdQH4EYz) (:text |feather.core) (:type :leaf)
                    |r $ {} (:at 1520874789599) (:by |root) (:id |BJm6QBNEFM) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1520874789826) (:by |root) (:id |S1ZAXrVEFz) (:type :expr)
                      :data $ {}
                        |r $ {} (:at 1558366056228) (:by |B1y7Rc-Zz) (:id |msnqoIjPzU) (:text |comp-i) (:type :leaf)
                |yT $ {} (:at 1536777958469) (:by |root) (:id |wIEx9zbzch) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1536777960828) (:by |root) (:id |w9SF0BJC9Y) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1536777963080) (:by |root) (:id |Q5YoTVXJNc) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1536777963953) (:by |root) (:id |9ubD7_Tz0J) (:text |config) (:type :leaf)
        :proc $ {} (:at 1500541010211) (:by nil) (:id |SJ1Uz9LeeAB-) (:type :expr)
          :data $ {}
      |app.config $ {}
        :defs $ {}
          |dev? $ {} (:at 1545759095906) (:by |root) (:id |39G6HAe3rt) (:type :expr)
            :data $ {}
              |T $ {} (:at 1545759095906) (:by |root) (:id |M-j4wxkTLj) (:text |def) (:type :leaf)
              |j $ {} (:at 1545759095906) (:by |root) (:id |9JfmXfuAiP) (:text |dev?) (:type :leaf)
              |r $ {} (:at 1629913497732) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913497803) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                  |j $ {} (:at 1629913498659) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                  |r $ {} (:at 1629913498921) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913502065) (:by |B1y7Rc-Zz) (:text |get-env) (:type :leaf)
                      |j $ {} (:at 1629913504293) (:by |B1y7Rc-Zz) (:text "|\"mode") (:type :leaf)
                      |n $ {} (:at 1657800349288) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
          |site $ {} (:at 1535566498551) (:by |B1y7Rc-Zz) (:id |JDUbiHLJfh) (:type :expr)
            :data $ {}
              |T $ {} (:at 1535566501561) (:by |B1y7Rc-Zz) (:id |pmgytHW1WP) (:text |def) (:type :leaf)
              |j $ {} (:at 1535566498551) (:by |B1y7Rc-Zz) (:id |0Ts7h2TXwx) (:text |site) (:type :leaf)
              |v $ {} (:at 1545759107046) (:by |root) (:id |az1vxXMB4A) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545759107046) (:by |root) (:id |58U8il77NJ) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1545759107046) (:by |root) (:id |tSyk9W90A_) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545759107046) (:by |root) (:id |2aeO9VjOYg) (:text |:port) (:type :leaf)
                      |j $ {} (:at 1545759124528) (:by |root) (:id |m6wFfAdrdC) (:text |11000) (:type :leaf)
                  |r $ {} (:at 1545759107046) (:by |root) (:id |CqIze7APEX) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545759107046) (:by |root) (:id |F3qyzJuz6z) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1545759143611) (:by |root) (:id |Ap-MycE3G5) (:text "|\"Woodenlist") (:type :leaf)
                  |v $ {} (:at 1545759107046) (:by |root) (:id |NBfUDYwY73) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545759107046) (:by |root) (:id |UVyX15hEgR) (:text |:icon) (:type :leaf)
                      |j $ {} (:at 1545759150498) (:by |root) (:id |JNNjG85crV) (:text "|\"http://cdn.tiye.me/logo/woodenlist.png") (:type :leaf)
                  |yv $ {} (:at 1545759107046) (:by |root) (:id |vsWS9hus9pW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545759107046) (:by |root) (:id |uaSamPkiQ72) (:text |:server-folder) (:type :leaf)
                      |j $ {} (:at 1545759195811) (:by |root) (:id |lG85CklcEEP) (:text "|\"tiye.me:servers/woodenlist") (:type :leaf)
                  |yx $ {} (:at 1545759107046) (:by |root) (:id |_lavT8cfWfB) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545759107046) (:by |root) (:id |8Dn7zf7ZDUF) (:text |:theme) (:type :leaf)
                      |j $ {} (:at 1545759205067) (:by |root) (:id |zogqzI3hZSN) (:text "|\"#4DB386") (:type :leaf)
                  |yy $ {} (:at 1545759107046) (:by |root) (:id |kfCtw4-ACcn) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545759107046) (:by |root) (:id |bZPqbuUKi3d) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1545759130707) (:by |root) (:id |i7aNZ-Y36Hp) (:text "|\"woodenlist-storage") (:type :leaf)
                  |yyT $ {} (:at 1545759107046) (:by |root) (:id |Obdwtf1RSnF) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1545759107046) (:by |root) (:id |9kVrGxrkE50) (:text |:storage-file) (:type :leaf)
                      |j $ {} (:at 1629914570589) (:by |B1y7Rc-Zz) (:id |X14ApE3azZR) (:text "|\"woodenlist.cirru") (:type :leaf)
        :ns $ {} (:at 1535566495114) (:by |B1y7Rc-Zz) (:id |GrHtVr8ZeM) (:type :expr)
          :data $ {}
            |T $ {} (:at 1535566495114) (:by |B1y7Rc-Zz) (:id |V8uqTV8DYA) (:text |ns) (:type :leaf)
            |j $ {} (:at 1535566495114) (:by |B1y7Rc-Zz) (:id |3wwMLMypUF) (:text |app.config) (:type :leaf)
        :proc $ {} (:at 1535566495114) (:by |B1y7Rc-Zz) (:id |yFVsZUWs50) (:type :expr)
          :data $ {}
      |app.schema $ {}
        :defs $ {}
          |database $ {} (:at 1500541255553) (:by nil) (:id |S1c5lLblCBZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |BkjcxUbgAH-) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ryhqlIZxRSb) (:text |database) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |S169e8WeAH-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJCqxL-gASW) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |SJJolIbeArb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rkgjlUZxArb) (:text |:sessions) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |H1WsxIbeCSW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |r1GseIWx0S-) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |Symjg8bg0BZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HJ4ix8beAB-) (:text |:users) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |r1BieLbe0rZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |BJUjl8bg0SW) (:text |{}) (:type :leaf)
          |notification $ {} (:at 1500541255553) (:by nil) (:id |B156eIbeRS-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SJoalUbxCrZ) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |r1hTeLZe0rW) (:text |notification) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |r1pTlUZxABb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rkRpeLbg0r-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |rJkCe8-l0S-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |B1eCgL-xCHW) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |ryb0eUWx0BW) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |B1MAgUZxAHb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HJQRe8WlRBb) (:text |:kind) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |HJN0xL-x0rb) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |SJSRxLWgCS-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |SJIClIWgCH-) (:text |:text) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |HJwCxIWxRBb) (:text |nil) (:type :leaf)
          |router $ {} (:at 1500541255553) (:by nil) (:id |BJaugUbeABb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SJR_lI-xRBZ) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |BJyFl8-l0B-) (:text |router) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |HyeKlU-gCHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |HJbYl8bxCr-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HyzFe8blRHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |BJQtlI-x0rW) (:text |:name) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Bk4teL-lRS-) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |SyrYlL-lRBZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S1IYxUWlCBW) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |SJPKlIbeCBZ) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |Hy_tgU-eAHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rJtFx8ZeRr-) (:text |:data) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |SJ9KlUZeCSb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |HJstxIbeAS-) (:text |{}) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |Sk2YxIbg0Hb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |B1aYe8Wg0rW) (:text |:router) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |B1CteIWlCrZ) (:text |nil) (:type :leaf)
          |session $ {} (:at 1500541255553) (:by nil) (:id |HyiseLZlCB-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |S1hseLZlCBW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |rJpslIZxAHW) (:text |session) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |SkCilU-eCSZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |B11neI-gAH-) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |Byx2e8-e0rZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rybnxUWe0BZ) (:text |:user-id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |ryf2xIbxAHZ) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |B1m2eIbxAHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S143xIblCrZ) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |S1ShgL-l0rZ) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |HJU2gU-lRrb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HyPheIZxCSZ) (:text |:nickname) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |B1_hx8ZeRrW) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |rkthlU-gCHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HycngIbeCrb) (:text |:router) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |HyjhgL-xArW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |Hy23gUZgRH-) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |H1T2eUZeAH-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |r1C3lUWgCHb) (:text |:name) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |HJkalLZxArW) (:text |:home) (:type :leaf)
                          |r $ {} (:at 1500541255553) (:by nil) (:id |HyxTeL-gRSb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |B1baxLZeCr-) (:text |:data) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |SyGpe8WgAHZ) (:text |nil) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by nil) (:id |SyL6eIbgRr-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1536859765313) (:by |root) (:id |HyPTeIZx0SZ) (:text |:messages) (:type :leaf)
                      |j $ {} (:at 1536859766438) (:by |root) (:id |1FVXLrIix6) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1536859766795) (:by |root) (:id |On2LvKvSUw) (:text |{}) (:type :leaf)
          |task $ {} (:at 1520962454894) (:by |root) (:id |Hkg1sjYSYM) (:type :expr)
            :data $ {}
              |T $ {} (:at 1520962457301) (:by |root) (:id |HJb1ssYHtG) (:text |def) (:type :leaf)
              |j $ {} (:at 1520962454894) (:by |root) (:id |rJGkoitSYM) (:text |task) (:type :leaf)
              |r $ {} (:at 1520962454894) (:by |root) (:id |rkQkssFBtG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1520962458320) (:by |root) (:id |ByZMooYrFM) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1520962459430) (:by |root) (:id |rkz7iotBKG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1520962459252) (:by |root) (:id |S14GsjKStG) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1520962460297) (:by |root) (:id |By4siFStG) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1520962461238) (:by |root) (:id |r1gHsjYrFG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1520962463836) (:by |root) (:id |r1gHsjYrFGleaf) (:text |:text) (:type :leaf)
                      |j $ {} (:at 1520962466259) (:by |root) (:id |rJWdiotSFM) (:text ||) (:type :leaf)
                  |y $ {} (:at 1521043256016) (:by |root) (:id |SyxeSvTUYz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1531642132141) (:by |root) (:id |SyxeSvTUYzleaf) (:text |:mode) (:type :leaf)
                      |j $ {} (:at 1531642134410) (:by |root) (:id |SkVUwp8Kz) (:text |nil) (:type :leaf)
                  |yT $ {} (:at 1531642134885) (:by |root) (:id |BkxyXWYdQm) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1531642136097) (:by |root) (:id |BkxyXWYdQmleaf) (:text |:time) (:type :leaf)
                      |j $ {} (:at 1531642136874) (:by |root) (:id |SJQeXbFuQX) (:text |0) (:type :leaf)
          |user $ {} (:at 1500541255553) (:by nil) (:id |BJKwxIbx0rZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Hy9weU-x0SW) (:text |def) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |r1jDx8bx0SZ) (:text |user) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rkhPxUWx0r-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rkpPl8ZlRrW) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HkAPxIZxRB-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |ryJul8beCrb) (:text |:name) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |HJlOxIWgRBW) (:text |nil) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |HkbdlLZlRSW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |r1M_gIWxCSZ) (:text |:id) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |rk7_eIbxRB-) (:text |nil) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |B14ug8bg0rb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HySOgLWeASW) (:text |:nickname) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |ByIue8Ze0B-) (:text |nil) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by nil) (:id |H1PulIbx0Hb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |SyudlUWeCBW) (:text |:avatar) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |rJYdlLbe0BW) (:text |nil) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by nil) (:id |HJcOxIbgAHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |S1jOeUbxArW) (:text |:password) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Hynug8bxCSZ) (:text |nil) (:type :leaf)
                  |yT $ {} (:at 1521563717844) (:by |root) (:id |H1xRHu30Fz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521563720568) (:by |root) (:id |H1xRHu30Fzleaf) (:text |:working-tasks) (:type :leaf)
                      |j $ {} (:at 1521563722072) (:by |root) (:id |BJezL_hAKG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521563722766) (:by |root) (:id |HyMI_2CFz) (:text |{}) (:type :leaf)
                  |yj $ {} (:at 1521563723905) (:by |root) (:id |BkeVLdh0tM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521563728019) (:by |root) (:id |BkeVLdh0tMleaf) (:text |:pending-tasks) (:type :leaf)
                      |j $ {} (:at 1521563728473) (:by |root) (:id |H1ruUd2RYM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521563728797) (:by |root) (:id |SkEdUO3CFG) (:text |{}) (:type :leaf)
                  |yr $ {} (:at 1521563729502) (:by |root) (:id |Bk7KL_hCtM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521563731294) (:by |root) (:id |Bk7KL_hCtMleaf) (:text |:done-tasks) (:type :leaf)
                      |j $ {} (:at 1521563731672) (:by |root) (:id |SJ2UO30FG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521563731995) (:by |root) (:id |Bkro8d3RKG) (:text |{}) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |B1Swe8bxAr-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |Bk8PgIbeCr-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |SyDDxIWeRrb) (:text |app.schema) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |SJuPg8bxRH-) (:type :expr)
          :data $ {}
      |app.server $ {}
        :defs $ {}
          |*client-caches $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |*client-caches) (:type :leaf)
              |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
          |*initial-db $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |*initial-db) (:type :leaf)
              |r $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |path-exists?) (:type :leaf)
                      |j $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |w-log) (:type :leaf)
                          |j $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                  |r $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |j $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text "|\"Found local EDN data") (:type :leaf)
                      |r $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                          |j $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |schema/database) (:type :leaf)
                          |r $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                              |j $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |read-file) (:type :leaf)
                                  |j $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                  |v $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                      |j $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text "|\"Found no data") (:type :leaf)
                      |r $ {} (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |schema/database) (:type :leaf)
          |*reader-reel $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |*reader-reel) (:type :leaf)
              |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
          |*reel $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
              |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |merge) (:type :leaf)
                  |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reel-schema) (:type :leaf)
                  |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:base) (:type :leaf)
                          |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
                      |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                          |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
          |dispatch! $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                  |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
              |v $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                          |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636953417063) (:by |B1y7Rc-Zz) (:text |generate-id!) (:type :leaf)
                      |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
                          |j $ {} (:at 1637898916196) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1637898950132) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953184736) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                              |j $ {} (:at 1637898950782) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637898953735) (:by |B1y7Rc-Zz) (:text |.timestamp) (:type :leaf)
                  |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                          |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text "|\"Dispatch!") (:type :leaf)
                          |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                              |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |v $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                          |x $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                          |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                          |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:effect/persist) (:type :leaf)
                      |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
                      |v $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                          |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reel-reducer) (:type :leaf)
                              |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                              |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
                              |v $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                              |x $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                              |y $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |yT $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                              |yj $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
                              |yr $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
          |get-backup-path! $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |get-backup-path!) (:type :leaf)
              |r $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                          |j $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |extract-time) (:type :leaf)
                              |j $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                  |r $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |join-path) (:type :leaf)
                      |j $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text "|\"backups") (:type :leaf)
                      |v $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |:month) (:type :leaf)
                              |j $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                      |x $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |:day) (:type :leaf)
                              |j $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |now) (:type :leaf)
                          |r $ {} (:at 1636953401126) (:by |B1y7Rc-Zz) (:text "|\"-snapshot.cirru") (:type :leaf)
          |main! $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |main!) (:type :leaf)
              |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text "|\"release") (:type :leaf)
              |x $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                          |j $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |get-env) (:type :leaf)
                              |j $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text "|\"port") (:type :leaf)
                      |j $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                          |j $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |j $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                              |r $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953218209) (:by |B1y7Rc-Zz) (:text |parse-float) (:type :leaf)
                                  |j $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |p?) (:type :leaf)
                              |v $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                                  |j $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |run-server!) (:type :leaf)
                      |j $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                  |v $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                      |j $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                          |j $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text "|\"Server started on port:") (:type :leaf)
                          |r $ {} (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
              |y $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                  |j $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                      |j $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text "|\"init it before doing multi-threading") (:type :leaf)
                  |r $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |identity) (:type :leaf)
                      |j $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
              |yT $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                  |j $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |200) (:type :leaf)
                  |r $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |r $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |render-loop!) (:type :leaf)
              |yj $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                  |j $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |600000) (:type :leaf)
                  |r $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                      |r $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |yr $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |on-control-c) (:type :leaf)
                  |j $ {} (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |on-exit!) (:type :leaf)
          |on-exit! $ {} (:at 1636953246371) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636953246371) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636953246371) (:by |B1y7Rc-Zz) (:text |on-exit!) (:type :leaf)
              |r $ {} (:at 1636953246371) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636953246371) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953246371) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |x $ {} (:at 1636953246371) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953246371) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                  |j $ {} (:at 1636953246371) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |r $ {} (:at 1636953246371) (:by |B1y7Rc-Zz) (:text "|\"exit code is...") (:type :leaf)
              |y $ {} (:at 1636953246371) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953246371) (:by |B1y7Rc-Zz) (:text |quit!) (:type :leaf)
                  |j $ {} (:at 1636953246371) (:by |B1y7Rc-Zz) (:text |0) (:type :leaf)
          |persist-db! $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |persist-db!) (:type :leaf)
              |r $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                  |j $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
                          |j $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                              |j $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                  |j $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                                      |j $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                                  |r $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                  |v $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |storage-path) (:type :leaf)
                          |j $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
                      |r $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |backup-path) (:type :leaf)
                          |j $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |get-backup-path!) (:type :leaf)
                  |r $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                      |j $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |storage-path) (:type :leaf)
                      |r $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
                  |v $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                      |j $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |backup-path) (:type :leaf)
                      |r $ {} (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |file-content) (:type :leaf)
          |reload! $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |reload!) (:type :leaf)
              |r $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                  |j $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text "|\"Code updated..") (:type :leaf)
              |x $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                      |j $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                  |r $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |raise) (:type :leaf)
                      |j $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text "|\"reloading only happens in dev mode") (:type :leaf)
              |y $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!) (:type :leaf)
              |yT $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |refresh-reel) (:type :leaf)
                      |j $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                      |r $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |@*initial-db) (:type :leaf)
                      |v $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
              |yj $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
                  |j $ {} (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
          |render-loop! $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |render-loop!) (:type :leaf)
              |r $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
              |v $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                  |j $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |not) (:type :leaf)
                      |j $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |identical?) (:type :leaf)
                          |j $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
                          |r $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                  |r $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |reset!) (:type :leaf)
                      |j $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |*reader-reel) (:type :leaf)
                      |r $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |@*reel) (:type :leaf)
                  |v $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
                      |j $ {} (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |@*reader-reel) (:type :leaf)
          |run-server! $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |run-server!) (:type :leaf)
              |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
              |v $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |wss-serve!) (:type :leaf)
                  |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |&{}) (:type :leaf)
                      |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:port) (:type :leaf)
                      |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |port) (:type :leaf)
                  |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                      |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |key-match) (:type :leaf)
                          |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
                          |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:connect) (:type :leaf)
                                  |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                      |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:session/connect) (:type :leaf)
                                      |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |v $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text "|\"New client.") (:type :leaf)
                          |v $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:message) (:type :leaf)
                                  |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |msg) (:type :leaf)
                              |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                                  |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                          |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn) (:type :leaf)
                                              |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |msg) (:type :leaf)
                                  |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |case-default) (:type :leaf)
                                      |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                                          |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                      |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                          |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text "|\"unknown action:") (:type :leaf)
                                          |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                      |v $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                                          |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                              |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:op) (:type :leaf)
                                                  |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                              |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                                  |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |action) (:type :leaf)
                                              |v $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                          |x $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:disconnect) (:type :leaf)
                                  |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text "|\"Client closed!") (:type :leaf)
                                  |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |dispatch!) (:type :leaf)
                                      |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:session/disconnect) (:type :leaf)
                                      |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                                      |v $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                          |y $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |_) (:type :leaf)
                              |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                  |j $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text "|\"unknown data:") (:type :leaf)
                                  |r $ {} (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |data) (:type :leaf)
          |storage-file $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |def) (:type :leaf)
              |j $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |storage-file) (:type :leaf)
              |r $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                  |j $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |empty?) (:type :leaf)
                      |j $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                  |r $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                      |j $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |:storage-file) (:type :leaf)
                          |j $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
                  |v $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                      |j $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                      |r $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:text "|\"/") (:type :leaf)
                      |v $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |:storage-file) (:type :leaf)
                          |j $ {} (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |config/site) (:type :leaf)
          |sync-clients! $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sync-clients!) (:type :leaf)
              |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
              |v $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |wss-each!) (:type :leaf)
                  |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                      |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |let) (:type :leaf)
                          |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                  |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:db) (:type :leaf)
                                      |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
                              |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                                  |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:records) (:type :leaf)
                                      |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reel) (:type :leaf)
                              |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                  |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |get-in) (:type :leaf)
                                      |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                      |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                          |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |v $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |old-store) (:type :leaf)
                                  |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |or) (:type :leaf)
                                      |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |get) (:type :leaf)
                                          |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |@*client-caches) (:type :leaf)
                                          |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
                              |x $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
                                  |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |twig-container) (:type :leaf)
                                      |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                                      |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |v $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                              |y $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |diff-twig) (:type :leaf)
                                      |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |old-store) (:type :leaf)
                                      |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
                                      |v $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:key) (:type :leaf)
                                              |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                          |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1636953833766) (:by |B1y7Rc-Zz) (:text |;) (:type :leaf)
                              |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |when) (:type :leaf)
                              |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |config/dev?) (:type :leaf)
                              |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                  |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text "|\"Changes for") (:type :leaf)
                                  |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text "|\":") (:type :leaf)
                                  |x $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |y $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |records) (:type :leaf)
                          |v $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |not=) (:type :leaf)
                                  |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |j $ {} (:at 1636953378462) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1636953378462) (:by |B1y7Rc-Zz) (:text |wss-send!) (:type :leaf)
                                      |j $ {} (:at 1636953378462) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |r $ {} (:at 1636953378462) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636953378462) (:by |B1y7Rc-Zz) (:text |format-cirru-edn) (:type :leaf)
                                          |j $ {} (:at 1636953378462) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1636953378462) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1636953378462) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1636953378462) (:by |B1y7Rc-Zz) (:text |:kind) (:type :leaf)
                                                  |j $ {} (:at 1636953378462) (:by |B1y7Rc-Zz) (:text |:patch) (:type :leaf)
                                              |r $ {} (:at 1636953378462) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1636953378462) (:by |B1y7Rc-Zz) (:text |:data) (:type :leaf)
                                                  |j $ {} (:at 1636953378462) (:by |B1y7Rc-Zz) (:text |changes) (:type :leaf)
                                  |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |swap!) (:type :leaf)
                                      |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |*client-caches) (:type :leaf)
                                      |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                      |v $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                      |x $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |new-store) (:type :leaf)
              |x $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |new-twig-loop!) (:type :leaf)
        :ns $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
          :data $ {}
            |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |ns) (:type :leaf)
            |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |app.server) (:type :leaf)
            |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
              :data $ {}
                |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:require) (:type :leaf)
                |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |app.schema) (:type :leaf)
                    |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |schema) (:type :leaf)
                |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |app.updater) (:type :leaf)
                    |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |updater) (:type :leaf)
                |x $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |cumulo-reel.core) (:type :leaf)
                    |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reel-reducer) (:type :leaf)
                        |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |refresh-reel) (:type :leaf)
                        |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reel-schema) (:type :leaf)
                |yj $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |app.config) (:type :leaf)
                    |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:as) (:type :leaf)
                    |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |config) (:type :leaf)
                |yx $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |app.twig.container) (:type :leaf)
                    |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |twig-container) (:type :leaf)
                |yy $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |recollect.diff) (:type :leaf)
                    |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |diff-twig) (:type :leaf)
                |yyT $ {} (:at 1636953148283) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636953148283) (:by |B1y7Rc-Zz) (:text |wss.core) (:type :leaf)
                    |j $ {} (:at 1636953148283) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636953148283) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636953148283) (:by |B1y7Rc-Zz) (:text |wss-serve!) (:type :leaf)
                        |j $ {} (:at 1636953148283) (:by |B1y7Rc-Zz) (:text |wss-send!) (:type :leaf)
                        |r $ {} (:at 1636953148283) (:by |B1y7Rc-Zz) (:text |wss-each!) (:type :leaf)
                |yyj $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |recollect.twig) (:type :leaf)
                    |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |new-twig-loop!) (:type :leaf)
                        |j $ {} (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!) (:type :leaf)
                |yyr $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |app.$meta) (:type :leaf)
                    |j $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |calcit-dirname) (:type :leaf)
                |yyv $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |calcit.std.fs) (:type :leaf)
                    |j $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |path-exists?) (:type :leaf)
                        |j $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |check-write-file!) (:type :leaf)
                |yyx $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |calcit.std.time) (:type :leaf)
                    |j $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |set-interval) (:type :leaf)
                |yyy $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |calcit.std.date) (:type :leaf)
                    |j $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |get-time!) (:type :leaf)
                        |j $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |extract-time) (:type :leaf)
                |yyyT $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |calcit.std.path) (:type :leaf)
                    |j $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |join-path) (:type :leaf)
      |app.style $ {}
        :defs $ {}
          |button $ {} (:at 1524160935247) (:by |root) (:id |rygk3YLL2f) (:type :expr)
            :data $ {}
              |T $ {} (:at 1524160937319) (:by |root) (:id |SyZy2KU83z) (:text |def) (:type :leaf)
              |j $ {} (:at 1524160935247) (:by |root) (:id |ryzk2KI8nM) (:text |button) (:type :leaf)
              |r $ {} (:at 1524160935247) (:by |root) (:id |r1Qk3KLU2z) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1524160938652) (:by |root) (:id |SJWz3Y883z) (:text |merge) (:type :leaf)
                  |j $ {} (:at 1524160940955) (:by |root) (:id |rJ-Q2YLUnG) (:text |ui/button) (:type :leaf)
                  |r $ {} (:at 1524160941539) (:by |root) (:id |r1I3t8L2f) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1524160941939) (:by |root) (:id |SJmr3FIU3G) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1524160942169) (:by |root) (:id |BkQU2YIUhf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1524160946595) (:by |root) (:id |BJMU3tII2f) (:text |:border-radius) (:type :leaf)
                          |j $ {} (:at 1524160948141) (:by |root) (:id |rJejnFIL3M) (:text "|\"16px") (:type :leaf)
          |link $ {} (:at 1519367966237) (:by |root) (:id |B1eU7P4avf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1519367970413) (:by |root) (:id |SyWUQP46vz) (:text |def) (:type :leaf)
              |j $ {} (:at 1519367966237) (:by |root) (:id |H1MImvEaPG) (:text |link) (:type :leaf)
              |r $ {} (:at 1519367966237) (:by |root) (:id |BkX8QDNpPM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1519367974187) (:by |root) (:id |HJAQwV6Df) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1519367974501) (:by |root) (:id |rkQAmw4pPG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519367980887) (:by |root) (:id |B1M0QDE6Dz) (:text |:text-decoration) (:type :leaf)
                      |j $ {} (:at 1519367984967) (:by |root) (:id |BkQSEDNTwf) (:text |:underline) (:type :leaf)
                  |r $ {} (:at 1519367985371) (:by |root) (:id |S1QYVP4pPG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519367998049) (:by |root) (:id |S1QYVP4pPGleaf) (:text |:cursor) (:type :leaf)
                      |j $ {} (:at 1519367996458) (:by |root) (:id |HkzfrDEaPf) (:text |:pointer) (:type :leaf)
                  |v $ {} (:at 1519368028360) (:by |root) (:id |Bk-Nvv4aPz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519368029579) (:by |root) (:id |Bk-Nvv4aPzleaf) (:text |:color) (:type :leaf)
                      |j $ {} (:at 1519368031142) (:by |root) (:id |SylwPvNTvf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1519368031562) (:by |root) (:id |rygIwwV6Df) (:text |hsl) (:type :leaf)
                          |j $ {} (:at 1519368032307) (:by |root) (:id |rkx_wPNTPz) (:text |240) (:type :leaf)
                          |r $ {} (:at 1519368032737) (:by |root) (:id |B1NOvw4pwM) (:text |80) (:type :leaf)
                          |v $ {} (:at 1519368033240) (:by |root) (:id |By-FwDEaPG) (:text |80) (:type :leaf)
                  |x $ {} (:at 1519368217607) (:by |root) (:id |SkfXu46vf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1519368219848) (:by |root) (:id |SkfXu46vfleaf) (:text |:font-family) (:type :leaf)
                      |j $ {} (:at 1519368227853) (:by |root) (:id |rJWVXuV6wG) (:text |ui/font-fancy) (:type :leaf)
        :ns $ {} (:at 1519367963533) (:by |root) (:id |HygVXDNTvf) (:type :expr)
          :data $ {}
            |T $ {} (:at 1519367963533) (:by |root) (:id |rkbV7wETvz) (:text |ns) (:type :leaf)
            |j $ {} (:at 1519367963533) (:by |root) (:id |BkfNmPV6wG) (:text |app.style) (:type :leaf)
            |r $ {} (:at 1519368036923) (:by |root) (:id |S1fTDw4pDf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1519368038192) (:by |root) (:id |BJWpwDNavz) (:text |:require) (:type :leaf)
                |j $ {} (:at 1519368038575) (:by |root) (:id |S1ydDETwM) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1519368038764) (:by |root) (:id |BJSADvEpPz) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1629914347359) (:by |B1y7Rc-Zz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1519368041713) (:by |root) (:id |rkXWdwEavf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1519368041918) (:by |root) (:id |H1GzdP46Pz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1519368042785) (:by |root) (:id |HkWf_w46wf) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1519368043289) (:by |root) (:id |ryxQdvEpDM) (:text |hsl) (:type :leaf)
                |r $ {} (:at 1519368236509) (:by |root) (:id |HJZV4OEavG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1519368236979) (:by |root) (:id |HJZV4OEavGleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1519368258261) (:by |root) (:id |BJ-HV_VTPz) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1519368241627) (:by |root) (:id |Bkm_4d4pvG) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1519368242073) (:by |root) (:id |SyW5N_46wG) (:text |ui) (:type :leaf)
        :proc $ {} (:at 1519367963533) (:by |root) (:id |SyXN7PVpPM) (:type :expr)
          :data $ {}
      |app.twig.container $ {}
        :defs $ {}
          |twig-container $ {} (:at 1500541255553) (:by nil) (:id |ByY-eUZeAr-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913401171) (:by |B1y7Rc-Zz) (:id |BJ5bxLZlRBZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |Hkibe8Wl0S-) (:text |twig-container) (:type :leaf)
              |n $ {} (:at 1500541255553) (:by nil) (:id |Sk-PI_qp1z) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |Hkzzg8WlRBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |ByXzxL-lCH-) (:text |session) (:type :leaf)
                  |r $ {} (:at 1507828952210) (:by |root) (:id |rklw6NmanW) (:text |records) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ryl38_qaJf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |ByHzl8bgCSZ) (:text |let) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by nil) (:id |HyUflIWgRrZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by nil) (:id |HywGl8-gCHW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |H1_MlIbg0SW) (:text |logged-in?) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |B1FGxLWeRHW) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |ry5fe8ZlRS-) (:text |some?) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by nil) (:id |BkiGlU-e0B-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |BJnGeLZlAHb) (:text |:user-id) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |HJTMlI-eAB-) (:text |session) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |rJ0GgLZlCS-) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |BkkQeLZlCHW) (:text |router) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |SkemlIWxRBb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |SJWmlLWeRHZ) (:text |:router) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |HJzXlLWxAHZ) (:text |session) (:type :leaf)
                      |r $ {} (:at 1507830626848) (:by |root) (:id |ryowoQp2W) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507830630278) (:by |root) (:id |ryowoQp2Wleaf) (:text |base-data) (:type :leaf)
                          |j $ {} (:at 1507830631302) (:by |root) (:id |r1lyujmp3b) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507830631896) (:by |root) (:id |By1djQTnb) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1507830632113) (:by |root) (:id |ryGxdimT2-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830641027) (:by |root) (:id |Sy-guiXp2b) (:text |:logged-in?) (:type :leaf)
                                  |j $ {} (:at 1507830639219) (:by |root) (:id |ByBusQ6hW) (:text |logged-in?) (:type :leaf)
                              |n $ {} (:at 1507830674443) (:by |root) (:id |ByecqsQ6nW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830677551) (:by |root) (:id |ByecqsQ6nWleaf) (:text |:session) (:type :leaf)
                                  |j $ {} (:at 1507830679311) (:by |root) (:id |BJlA5oXpn-) (:text |session) (:type :leaf)
                              |v $ {} (:at 1507830649968) (:by |root) (:id |SyxMtsm62Z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1507830655148) (:by |root) (:id |SyxMtsm62Zleaf) (:text |:reel-length) (:type :leaf)
                                  |j $ {} (:at 1507830655987) (:by |root) (:id |B1xuKj7p3-) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1507830657551) (:by |root) (:id |S1dKjma2Z) (:text |count) (:type :leaf)
                                      |j $ {} (:at 1507830658789) (:by |root) (:id |HkgcFsXT3b) (:text |records) (:type :leaf)
                  |r $ {} (:at 1507830661017) (:by |root) (:id |BkxpKj76h-) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1507830661999) (:by |root) (:id |H1W6KoQ6hZ) (:text |merge) (:type :leaf)
                      |L $ {} (:at 1507830664014) (:by |root) (:id |rJVCFjmp2b) (:text |base-data) (:type :leaf)
                      |T $ {} (:at 1500541255553) (:by nil) (:id |HJQmlU-e0rW) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |rJVmgLZlAr-) (:text |if) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by |root) (:id |r1S7gUZlArb) (:text |logged-in?) (:type :leaf)
                          |r $ {} (:at 1521563747303) (:by |root) (:id |Bkejvu20tM) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521563748075) (:by |root) (:id |B1hDOnCYM) (:text |let) (:type :leaf)
                              |L $ {} (:at 1521563748645) (:by |root) (:id |ByTwOnRYM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521563752109) (:by |root) (:id |Skx__3RKf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521563753505) (:by |root) (:id |HkQhwd2CtG) (:text |user) (:type :leaf)
                                      |j $ {} (:at 1500541255553) (:by nil) (:id |Sy-fs_nRYG) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541255553) (:by |root) (:id |HkXVeL-l0Sb) (:text |get-in) (:type :leaf)
                                          |j $ {} (:at 1500541255553) (:by |root) (:id |rJ4Nx8WeCrb) (:text |db) (:type :leaf)
                                          |r $ {} (:at 1500541255553) (:by nil) (:id |HkrVgLZg0B-) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1500541255553) (:by |root) (:id |ByIEeLbxCHb) (:text |[]) (:type :leaf)
                                              |j $ {} (:at 1500541255553) (:by |root) (:id |H1v4xIWxArZ) (:text |:users) (:type :leaf)
                                              |r $ {} (:at 1500541255553) (:by nil) (:id |HJ_VxL-xRr-) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1500541255553) (:by |root) (:id |rJYNgUbgCBb) (:text |:user-id) (:type :leaf)
                                                  |j $ {} (:at 1500541255553) (:by |root) (:id |ryqNeLZeCHb) (:text |session) (:type :leaf)
                              |T $ {} (:at 1500541255553) (:by nil) (:id |HJUQxIbx0rZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |rJPQl8ZgCHb) (:text |{}) (:type :leaf)
                                  |v $ {} (:at 1500541255553) (:by nil) (:id |B107eU-lCHZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541255553) (:by |root) (:id |Hy1VxUbeCS-) (:text |:user) (:type :leaf)
                                      |j $ {} (:at 1500541255553) (:by nil) (:id |HJlNxUbx0r-) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1500541255553) (:by |root) (:id |SyZVxIZeCS-) (:text |twig-user) (:type :leaf)
                                          |j $ {} (:at 1521563803904) (:by |root) (:id |B1-QjOnCYM) (:text |user) (:type :leaf)
                                  |x $ {} (:at 1500541255553) (:by nil) (:id |SJsEe8ZgCBZ) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1500541255553) (:by |root) (:id |HJ2EeUWe0SZ) (:text |:router) (:type :leaf)
                                      |j $ {} (:at 1520962667475) (:by |root) (:id |SJQ_hFStG) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1520962670606) (:by |root) (:id |HkEu3tSFf) (:text |assoc) (:type :leaf)
                                          |L $ {} (:at 1520962672999) (:by |root) (:id |S1__ntStM) (:text |router) (:type :leaf)
                                          |P $ {} (:at 1520962674110) (:by |root) (:id |S1BFO3tStz) (:text |:data) (:type :leaf)
                                          |T $ {} (:at 1520962628859) (:by |root) (:id |SyTHhYHtz) (:type :expr)
                                            :data $ {}
                                              |D $ {} (:at 1629913492128) (:by |B1y7Rc-Zz) (:id |ByRHnYHYf) (:text |case-default) (:type :leaf)
                                              |T $ {} (:at 1520962632373) (:by |root) (:id |ByeIhtBKz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1520962634462) (:by |root) (:id |B1bU2tBKG) (:text |:name) (:type :leaf)
                                                  |T $ {} (:at 1500541255553) (:by |root) (:id |BJaEl8ZxCS-) (:text |router) (:type :leaf)
                                              |b $ {} (:at 1629913489824) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629913489824) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1520962635169) (:by |root) (:id |BygQI3trKf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1520962637165) (:by |root) (:id |BygQI3trKfleaf) (:text |:home) (:type :leaf)
                                                  |j $ {} (:at 1520962681587) (:by |root) (:id |SkfF2FrKz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1520962809504) (:by |root) (:id |SJgYntBFG) (:text |:working-tasks) (:type :leaf)
                                                      |j $ {} (:at 1521563808208) (:by |root) (:id |BJfbpYrtf) (:text |user) (:type :leaf)
                                              |r $ {} (:at 1520962637615) (:by |root) (:id |S18UhtStG) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1520962815350) (:by |root) (:id |S18UhtStGleaf) (:text |:pending) (:type :leaf)
                                                  |j $ {} (:at 1520962815696) (:by |root) (:id |SJeO-ptStz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1520962820095) (:by |root) (:id |SydZpKrYz) (:text |:pending-tasks) (:type :leaf)
                                                      |j $ {} (:at 1521563809867) (:by |root) (:id |rkBh-pFBtM) (:text |user) (:type :leaf)
                                              |t $ {} (:at 1545759837631) (:by |root) (:id |UbnVHBAQHP) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1545759837631) (:by |root) (:id |-f2KW8ThjR) (:text |:profile) (:type :leaf)
                                                  |j $ {} (:at 1545759837631) (:by |root) (:id |9YU684kPyA) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1545759837631) (:by |root) (:id |cjRPEgbELW) (:text |twig-members) (:type :leaf)
                                                      |j $ {} (:at 1545759837631) (:by |root) (:id |Ox0KaxqOio) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1545759837631) (:by |root) (:id |KyZKLt8Cer) (:text |:sessions) (:type :leaf)
                                                          |j $ {} (:at 1545759837631) (:by |root) (:id |EM29wP5ByQ) (:text |db) (:type :leaf)
                                                      |r $ {} (:at 1545759837631) (:by |root) (:id |KbIlkp9aB7) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1545759837631) (:by |root) (:id |oPwI_y8cex) (:text |:users) (:type :leaf)
                                                          |j $ {} (:at 1545759837631) (:by |root) (:id |piXPjRMgrn) (:text |db) (:type :leaf)
                                              |v $ {} (:at 1520962654786) (:by |root) (:id |BkePD3YBYz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1520962656662) (:by |root) (:id |BkePD3YBYzleaf) (:text |:done) (:type :leaf)
                                                  |j $ {} (:at 1531641878687) (:by |root) (:id |Skxk7gtO7Q) (:type :expr)
                                                    :data $ {}
                                                      |D $ {} (:at 1531641884818) (:by |root) (:id |BJ-17lt_X7) (:text |twig-done-tasks) (:type :leaf)
                                                      |T $ {} (:at 1520962822697) (:by |root) (:id |HyeyzTFrFM) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1520962825409) (:by |root) (:id |B1JzaKSYf) (:text |:done-tasks) (:type :leaf)
                                                          |j $ {} (:at 1521563811813) (:by |root) (:id |Skzz6trYz) (:text |user) (:type :leaf)
                                                      |j $ {} (:at 1531641888223) (:by |root) (:id |Skgd7gtdX7) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1531641890243) (:by |root) (:id |H1UXgtuQQ) (:text |:data) (:type :leaf)
                                                          |j $ {} (:at 1531641890969) (:by |root) (:id |Hy89mxY_XQ) (:text |router) (:type :leaf)
                                  |yT $ {} (:at 1521737426802) (:by |root) (:id |rkxi0R8-5z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521737432593) (:by |root) (:id |rkxi0R8-5zleaf) (:text |:numbers) (:type :leaf)
                                      |j $ {} (:at 1521737433474) (:by |root) (:id |r1b-yJvb9f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1521737433955) (:by |root) (:id |HJgZk1PZcG) (:text |{}) (:type :leaf)
                                          |j $ {} (:at 1521737434626) (:by |root) (:id |ByX1JwZqz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1521737454715) (:by |root) (:id |B1ZMykvbqG) (:text |:sessions) (:type :leaf)
                                              |j $ {} (:at 1521737455084) (:by |root) (:id |rkmwg1DZqf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1521737457795) (:by |root) (:id |H1zDxkv-5M) (:text |count) (:type :leaf)
                                                  |j $ {} (:at 1521737458561) (:by |root) (:id |ryoxkw-qf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1521737460203) (:by |root) (:id |HkZ5e1wWcf) (:text |:sessions) (:type :leaf)
                                                      |j $ {} (:at 1521737460734) (:by |root) (:id |ryS3lJv-cG) (:text |db) (:type :leaf)
                                          |r $ {} (:at 1521737462261) (:by |root) (:id |SJGAlyDZ9f) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1521737470976) (:by |root) (:id |SJGAlyDZ9fleaf) (:text |:working) (:type :leaf)
                                              |j $ {} (:at 1521737471634) (:by |root) (:id |ryu-1PZ9M) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1521737474203) (:by |root) (:id |S1xYbkw-qG) (:text |count) (:type :leaf)
                                                  |j $ {} (:at 1521737474508) (:by |root) (:id |r1BcbJvbqM) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1521737479805) (:by |root) (:id |H1EcZJDWqG) (:text |:working-tasks) (:type :leaf)
                                                      |j $ {} (:at 1521737480427) (:by |root) (:id |Hyfgfyv-cz) (:text |user) (:type :leaf)
                                          |v $ {} (:at 1521737462261) (:by |root) (:id |BJgff1PWqM) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1521737484987) (:by |root) (:id |SJGAlyDZ9fleaf) (:text |:pending) (:type :leaf)
                                              |j $ {} (:at 1521737471634) (:by |root) (:id |ryu-1PZ9M) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1521737474203) (:by |root) (:id |S1xYbkw-qG) (:text |count) (:type :leaf)
                                                  |j $ {} (:at 1521737474508) (:by |root) (:id |r1BcbJvbqM) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1521737488211) (:by |root) (:id |H1EcZJDWqG) (:text |:pending-tasks) (:type :leaf)
                                                      |j $ {} (:at 1521737480427) (:by |root) (:id |Hyfgfyv-cz) (:text |user) (:type :leaf)
                                          |x $ {} (:at 1521737462261) (:by |root) (:id |H1-MGJDbqG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1521737489936) (:by |root) (:id |SJGAlyDZ9fleaf) (:text |:done) (:type :leaf)
                                              |j $ {} (:at 1521737471634) (:by |root) (:id |ryu-1PZ9M) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1521737474203) (:by |root) (:id |S1xYbkw-qG) (:text |count) (:type :leaf)
                                                  |j $ {} (:at 1521737474508) (:by |root) (:id |r1BcbJvbqM) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1521737491654) (:by |root) (:id |H1EcZJDWqG) (:text |:done-tasks) (:type :leaf)
                                                      |j $ {} (:at 1521737480427) (:by |root) (:id |Hyfgfyv-cz) (:text |user) (:type :leaf)
                                  |yj $ {} (:at 1524244363271) (:by |root) (:id |Bkg7qyiv3z) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1524244368230) (:by |root) (:id |Bkg7qyiv3zleaf) (:text |:color) (:type :leaf)
                                      |j $ {} (:at 1524244484475) (:by |root) (:id |ry7fgjv3f) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1636953076569) (:by |B1y7Rc-Zz) (:id |SkgsyeoPnf) (:text |rand-hex-color!) (:type :leaf)
                          |v $ {} (:at 1636953102863) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1636953104605) (:by |B1y7Rc-Zz) (:id |ryg7ssXahb) (:text |{}) (:type :leaf)
          |twig-done-tasks $ {} (:at 1531641892912) (:by |root) (:id |rk-ametOmQ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913441665) (:by |B1y7Rc-Zz) (:id |HJfp7eYd7X) (:text |defn) (:type :leaf)
              |j $ {} (:at 1531641892912) (:by |root) (:id |SyQp7gKdXQ) (:text |twig-done-tasks) (:type :leaf)
              |r $ {} (:at 1531641892912) (:by |root) (:id |rJ4pQxYdQm) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1531641901206) (:by |root) (:id |HyZAXltdXm) (:text |done-tasks) (:type :leaf)
                  |j $ {} (:at 1531641911630) (:by |root) (:id |HkDNetdXm) (:text |year-month) (:type :leaf)
              |t $ {} (:at 1531641998967) (:by |root) (:id |BkPcgKu77) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1531642000376) (:by |root) (:id |BkPcgKu77leaf) (:text |let) (:type :leaf)
                  |j $ {} (:at 1531642000601) (:by |root) (:id |SkF5etdXm) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1531642002195) (:by |root) (:id |rkZcceKdQm) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1531642005801) (:by |root) (:id |H1muqgKuQX) (:text |year-months) (:type :leaf)
                          |j $ {} (:at 1531642007645) (:by |root) (:id |Bkeoxtumm) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629915083175) (:by |B1y7Rc-Zz) (:id |H1JoxF_7X) (:text |->) (:type :leaf)
                              |j $ {} (:at 1531642011167) (:by |root) (:id |ry-WsxKu77) (:text |done-tasks) (:type :leaf)
                              |l $ {} (:at 1637899698705) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637899856566) (:by |B1y7Rc-Zz) (:text |&map:map-list) (:type :leaf)
                                  |j $ {} (:at 1637899700746) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1637899701779) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1637899743549) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637899744847) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                      |r $ {} (:at 1637899819104) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637899819104) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                          |j $ {} (:at 1637899819104) (:by |B1y7Rc-Zz) (:text |pair) (:type :leaf)
                                          |r $ {} (:at 1637899819104) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637899924104) (:by |B1y7Rc-Zz) (:text |&list:nth) (:type :leaf)
                                              |j $ {} (:at 1637899924905) (:by |B1y7Rc-Zz) (:text |1) (:type :leaf)
                                          |v $ {} (:at 1637899819104) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637899868241) (:by |B1y7Rc-Zz) (:text |&map:get) (:type :leaf)
                                              |j $ {} (:at 1637899819104) (:by |B1y7Rc-Zz) (:text |:time) (:type :leaf)
                                          |x $ {} (:at 1637899819104) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1637899819104) (:by |B1y7Rc-Zz) (:text |wrap-format-time) (:type :leaf)
                                              |j $ {} (:at 1637899819104) (:by |B1y7Rc-Zz) (:text "|\"%Y-%m") (:type :leaf)
                              |yT $ {} (:at 1629913515558) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953557149) (:by |B1y7Rc-Zz) (:id |B1iSXKO7X) (:text |distinct) (:type :leaf)
                      |j $ {} (:at 1531642306229) (:by |root) (:id |r1lqaZKuXQ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1531642311487) (:by |root) (:id |r1lqaZKuXQleaf) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1531642312311) (:by |root) (:id |HyeeRbKuQm) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1531642312593) (:by |root) (:id |BklAZKOQQ) (:text |or) (:type :leaf)
                              |j $ {} (:at 1531642320869) (:by |root) (:id |r1V0bK_Q7) (:text |year-month) (:type :leaf)
                              |r $ {} (:at 1531642324718) (:by |root) (:id |SyTAWKu77) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1636953698933) (:by |B1y7Rc-Zz) (:id |ryGK0WKO7m) (:text |&list:max) (:type :leaf)
                                  |j $ {} (:at 1531642452708) (:by |root) (:id |S1gpCbKOX7) (:text |year-months) (:type :leaf)
                      |r $ {} (:at 1531642343598) (:by |root) (:id |r1gxftuQ7) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1531642417788) (:by |root) (:id |r1gxftuQ7leaf) (:text |reading-tasks) (:type :leaf)
                          |j $ {} (:at 1531642353337) (:by |root) (:id |SJlFezYdXm) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913447320) (:by |B1y7Rc-Zz) (:id |HktefKdXQ) (:text |->) (:type :leaf)
                              |j $ {} (:at 1531642358261) (:by |root) (:id |H1GheMtumQ) (:text |done-tasks) (:type :leaf)
                              |r $ {} (:at 1531642359586) (:by |root) (:id |BJebMFuXm) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1637899963829) (:by |B1y7Rc-Zz) (:id |ryyZfK_XX) (:text |&map:filter-kv) (:type :leaf)
                                  |j $ {} (:at 1531642361481) (:by |root) (:id |H1NW-fF_Q7) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1531642362558) (:by |root) (:id |SkmbWfK_mX) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1531642362987) (:by |root) (:id |rJZm-GFOXm) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637899966327) (:by |B1y7Rc-Zz) (:text |k) (:type :leaf)
                                          |j $ {} (:at 1637899967151) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                      |r $ {} (:at 1531642366677) (:by |root) (:id |S1vWzK_QQ) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1637899998200) (:by |B1y7Rc-Zz) (:id |S1vWzK_QQleaf) (:text |&=) (:type :leaf)
                                          |j $ {} (:at 1531642369205) (:by |root) (:id |H1u-GYdXX) (:text |cursor) (:type :leaf)
                                          |v $ {} (:at 1636953650134) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1636953651831) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                                              |j $ {} (:at 1636953654283) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |D $ {} (:at 1637899987764) (:by |B1y7Rc-Zz) (:text |&map:get) (:type :leaf)
                                                  |j $ {} (:at 1636953654283) (:by |B1y7Rc-Zz) (:text |task) (:type :leaf)
                                                  |r $ {} (:at 1637899990128) (:by |B1y7Rc-Zz) (:text |:time) (:type :leaf)
                                              |r $ {} (:at 1636953657757) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1637899429633) (:by |B1y7Rc-Zz) (:text |wrap-format-time) (:type :leaf)
                                                  |j $ {} (:at 1636954147168) (:by |B1y7Rc-Zz) (:text "|\"%Y-%m") (:type :leaf)
                  |r $ {} (:at 1531641916741) (:by |root) (:id |Hkls6lK_Qm) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1531641917121) (:by |root) (:id |r1xNSgYdQm) (:text |{}) (:type :leaf)
                      |j $ {} (:at 1531642035836) (:by |root) (:id |H1b2hetOQX) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1531642037271) (:by |root) (:id |SJx23xFO7Q) (:text |:months) (:type :leaf)
                          |j $ {} (:at 1531642037961) (:by |root) (:id |ryQTnetumQ) (:text |year-months) (:type :leaf)
                      |n $ {} (:at 1531642425330) (:by |root) (:id |rylbrGKO7m) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1531642427777) (:by |root) (:id |rylbrGKO7mleaf) (:text |:cursor) (:type :leaf)
                          |j $ {} (:at 1531642429405) (:by |root) (:id |B1bVrfFdXm) (:text |cursor) (:type :leaf)
                      |r $ {} (:at 1531642395763) (:by |root) (:id |rkVQGt_Xm) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1531642420163) (:by |root) (:id |rkVQGt_Xmleaf) (:text |:tasks) (:type :leaf)
                          |j $ {} (:at 1531642423871) (:by |root) (:id |HJV37GYdQX) (:text |reading-tasks) (:type :leaf)
          |twig-members $ {} (:at 1545759850566) (:by |root) (:id |oaxQXhF81W) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913434527) (:by |B1y7Rc-Zz) (:id |z0g4ylnI_X) (:text |defn) (:type :leaf)
              |j $ {} (:at 1545759850566) (:by |root) (:id |tVCewzBr9v) (:text |twig-members) (:type :leaf)
              |r $ {} (:at 1545759850566) (:by |root) (:id |BWqE1lcicF) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1545759850566) (:by |root) (:id |hGLDKLJpV-) (:text |sessions) (:type :leaf)
                  |j $ {} (:at 1545759850566) (:by |root) (:id |UfRTXplBZS) (:text |users) (:type :leaf)
              |v $ {} (:at 1545759850566) (:by |root) (:id |kVSCi-CCux) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913423781) (:by |B1y7Rc-Zz) (:id |IuSOX_Km4U) (:text |->) (:type :leaf)
                  |j $ {} (:at 1545759850566) (:by |root) (:id |9qZApssnr_) (:text |sessions) (:type :leaf)
                  |r $ {} (:at 1545759850566) (:by |root) (:id |b7N_4p6Smb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913426565) (:by |B1y7Rc-Zz) (:id |agHf9ISS2H) (:text |map-kv) (:type :leaf)
                      |j $ {} (:at 1545759850566) (:by |root) (:id |zSxyYt1f62) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1545759850566) (:by |root) (:id |x7UplEsiMT) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1545759850566) (:by |root) (:id |sLGyiwLmnz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545759850566) (:by |root) (:id |P408U9sKFTX) (:text |k) (:type :leaf)
                              |j $ {} (:at 1545759850566) (:by |root) (:id |bThc5jL2AhI) (:text |session) (:type :leaf)
                          |r $ {} (:at 1545759850566) (:by |root) (:id |1W9-83ITOqD) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1545759850566) (:by |root) (:id |Hi702AyGMBx) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1545759850566) (:by |root) (:id |bUDs_-oPpbR) (:text |k) (:type :leaf)
                              |r $ {} (:at 1545759850566) (:by |root) (:id |ILKeh6PCDe2) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1545759850566) (:by |root) (:id |Kkie6GxRRt7) (:text |get-in) (:type :leaf)
                                  |j $ {} (:at 1545759850566) (:by |root) (:id |zIJ_mtYXZSr) (:text |users) (:type :leaf)
                                  |r $ {} (:at 1545759850566) (:by |root) (:id |UlW5Bhj0yaz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1545759850566) (:by |root) (:id |gJb8NOW_vpq) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1545759850566) (:by |root) (:id |37_Kg5zaM6v) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1545759850566) (:by |root) (:id |PPKzQ_qWiQZ) (:text |:user-id) (:type :leaf)
                                          |j $ {} (:at 1545759850566) (:by |root) (:id |S14fGZIP-qs) (:text |session) (:type :leaf)
                                      |r $ {} (:at 1545759850566) (:by |root) (:id |Uz6qZUNONtx) (:text |:name) (:type :leaf)
          |wrap-format-time $ {} (:at 1637899430728) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1637899433607) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1637899430728) (:by |B1y7Rc-Zz) (:text |wrap-format-time) (:type :leaf)
              |r $ {} (:at 1637899430728) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637899437769) (:by |B1y7Rc-Zz) (:text |stamp) (:type :leaf)
                  |j $ {} (:at 1637899443039) (:by |B1y7Rc-Zz) (:text |format) (:type :leaf)
              |v $ {} (:at 1637899443386) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1637899444898) (:by |B1y7Rc-Zz) (:text |format-time) (:type :leaf)
                  |j $ {} (:at 1637899447882) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1637899448149) (:by |B1y7Rc-Zz) (:text |::) (:type :leaf)
                      |j $ {} (:at 1637899450119) (:by |B1y7Rc-Zz) (:text |Date) (:type :leaf)
                      |r $ {} (:at 1637899459152) (:by |B1y7Rc-Zz) (:text |stamp) (:type :leaf)
                  |r $ {} (:at 1637899462696) (:by |B1y7Rc-Zz) (:text |format) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |rkSex8bg0S-) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |SkIleLblAr-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ByDelU-eRSZ) (:text |app.twig.container) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |HkOlxUZlRH-) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |r1txeIZlRSb) (:text |:require) (:type :leaf)
                |r $ {} (:at 1500541255553) (:by nil) (:id |rkZblUblRHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |SkM-lUbxASW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |SJX-gU-e0SW) (:text |app.twig.user) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |Hy4We8bgCB-) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by nil) (:id |r1SbgUbg0S-) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1500541255553) (:by |root) (:id |BJ8-x8WeCH-) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1500541255553) (:by |root) (:id |BJv-e8beRSW) (:text |twig-user) (:type :leaf)
                |y $ {} (:at 1636953094263) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636953094263) (:by |B1y7Rc-Zz) (:text |calcit.std.rand) (:type :leaf)
                    |j $ {} (:at 1636953094263) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636953094263) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636953094263) (:by |B1y7Rc-Zz) (:text |rand-hex-color!) (:type :leaf)
                |yT $ {} (:at 1636953578539) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636953581150) (:by |B1y7Rc-Zz) (:text |calcit.std.date) (:type :leaf)
                    |j $ {} (:at 1636953582013) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636953582221) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636953586569) (:by |B1y7Rc-Zz) (:text |extract-time) (:type :leaf)
                        |j $ {} (:at 1636953625715) (:by |B1y7Rc-Zz) (:text |format-time) (:type :leaf)
                        |r $ {} (:at 1637899454328) (:by |B1y7Rc-Zz) (:text |Date) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |H1ubxLZx0SZ) (:type :expr)
          :data $ {}
      |app.twig.user $ {}
        :defs $ {}
          |twig-user $ {} (:at 1500541255553) (:by nil) (:id |SJxcQeIWxASZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913415981) (:by |B1y7Rc-Zz) (:id |S1ZqXeIblCH-) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByzcXgUblRBW) (:text |twig-user) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ByuqXg8ZxArZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJY57eLWxAH-) (:text |user) (:type :leaf)
              |v $ {} (:at 1521563771994) (:by |root) (:id |Ske4FO3AKM) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1521563773568) (:by |root) (:id |H1bEK_n0YM) (:text |->) (:type :leaf)
                  |L $ {} (:at 1521563775112) (:by |root) (:id |SJwt_2CFf) (:text |user) (:type :leaf)
                  |T $ {} (:at 1500541255553) (:by nil) (:id |Hk99QgIbxAHW) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |Bkjc7xUZlCSW) (:text |dissoc) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |rk6cXgLZx0HZ) (:text |:password) (:type :leaf)
                  |j $ {} (:at 1521563777873) (:by |root) (:id |r1xqK_n0Yf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521563779385) (:by |root) (:id |r1xqK_n0Yfleaf) (:text |dissoc) (:type :leaf)
                      |j $ {} (:at 1521563782008) (:by |root) (:id |H13Y_hAKf) (:text |:done-tasks) (:type :leaf)
                  |r $ {} (:at 1521563783111) (:by |root) (:id |Hkl1cdn0tG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521563785012) (:by |root) (:id |Hkl1cdn0tGleaf) (:text |dissoc) (:type :leaf)
                      |j $ {} (:at 1521563787677) (:by |root) (:id |HkMZ5OhAKz) (:text |:working-tasks) (:type :leaf)
                  |v $ {} (:at 1521563788158) (:by |root) (:id |SkMNqO3CFG) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521563790582) (:by |root) (:id |SkMNqO3CFGleaf) (:text |dissoc) (:type :leaf)
                      |j $ {} (:at 1521563796215) (:by |root) (:id |SkxwcOnAFG) (:text |:pending-tasks) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |rJ7t7eU-lRrZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |rkVF7xUWgASZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |rkrFQxUZxRBb) (:text |app.twig.user) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |By8K7xL-eArW) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |HyvKQx8WlRHW) (:text |:require) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |H1JqQxLblABb) (:type :expr)
          :data $ {}
      |app.updater $ {}
        :defs $ {}
          |updater $ {} (:at 1500541255553) (:by nil) (:id |Hk7nmeIbx0SZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SkV3Qe8WlRHb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |Hkrn7xI-gASZ) (:text |updater) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rk82mlUZxRB-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |Byw3XlIZg0B-) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1_hme8WxAr-) (:text |op) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |ByY2QgLbxArZ) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1517930722619) (:by |root) (:id |H1537x8-gABW) (:text |sid) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |Hksn7xL-gASW) (:text |op-id) (:type :leaf)
                  |y $ {} (:at 1500541255553) (:by |root) (:id |SJ22mx8ZeRBb) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1517930695338) (:by |root) (:id |rykROrP8f) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1517930698044) (:by |root) (:id |rklROHw8z) (:text |let) (:type :leaf)
                  |T $ {} (:at 1517930701054) (:by |root) (:id |SJlBRdSPUz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1517930698683) (:by |root) (:id |H1X0OSD8f) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1517930699996) (:by |root) (:id |r14RdHv8M) (:text |f) (:type :leaf)
                          |T $ {} (:at 1500541255553) (:by nil) (:id |BJ6hmlU-lASb) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913339463) (:by |B1y7Rc-Zz) (:id |SJ0h7eUbg0rb) (:text |case-default) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |HJyaXeU-gRBZ) (:text |op) (:type :leaf)
                              |n $ {} (:at 1629913340860) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913340860) (:by |B1y7Rc-Zz) (:text |do) (:type :leaf)
                                  |j $ {} (:at 1629913340860) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913340860) (:by |B1y7Rc-Zz) (:text |println) (:type :leaf)
                                      |j $ {} (:at 1629913340860) (:by |B1y7Rc-Zz) (:text "||Unknown op:") (:type :leaf)
                                      |r $ {} (:at 1629913340860) (:by |B1y7Rc-Zz) (:text |op) (:type :leaf)
                                  |r $ {} (:at 1629913343960) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913345156) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1629913345521) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913346426) (:by |B1y7Rc-Zz) (:text |&) (:type :leaf)
                                          |j $ {} (:at 1629913347100) (:by |B1y7Rc-Zz) (:text |args) (:type :leaf)
                                      |r $ {} (:at 1629913350722) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1500541255553) (:by nil) (:id |HygpXe8Ze0Sb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |rJZ6XxLWe0HW) (:text |:session/connect) (:type :leaf)
                                  |j $ {} (:at 1517930788022) (:by |root) (:id |SksmtSP8z) (:text |session/connect) (:type :leaf)
                              |v $ {} (:at 1500541255553) (:by nil) (:id |r1KaQgU-xRrW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |B1cTQlUWlASW) (:text |:session/disconnect) (:type :leaf)
                                  |j $ {} (:at 1517930783929) (:by |root) (:id |r1_7FBPIM) (:text |session/disconnect) (:type :leaf)
                              |x $ {} (:at 1500541255553) (:by nil) (:id |r1fCQxUWe0rb) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |Bkm0mgLZx0S-) (:text |:user/log-in) (:type :leaf)
                                  |j $ {} (:at 1517930780888) (:by |root) (:id |BkBmtrD8M) (:text |user/log-in) (:type :leaf)
                              |y $ {} (:at 1500541255553) (:by nil) (:id |rksRmlIZlCSW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |ry3Cmx8blABb) (:text |:user/sign-up) (:type :leaf)
                                  |j $ {} (:at 1517930777757) (:by |root) (:id |Bke-QtSDUM) (:text |user/sign-up) (:type :leaf)
                              |yT $ {} (:at 1500541255553) (:by nil) (:id |B1V1Nl8Zx0BZ) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |H1rJ4eIblRr-) (:text |:user/log-out) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |ryvkVgIbg0rW) (:text |user/log-out) (:type :leaf)
                              |yj $ {} (:at 1500541255553) (:by nil) (:id |BypyNl8WxAB-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536859978229) (:by |root) (:id |S1CJ4xUWx0rW) (:text |:session/remove-message) (:type :leaf)
                                  |j $ {} (:at 1536859980531) (:by |root) (:id |rJegNeL-gRr-) (:text |session/remove-message) (:type :leaf)
                              |yr $ {} (:at 1500541255553) (:by nil) (:id |HyUe4gLbxCr-) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1500541255553) (:by |root) (:id |BJDxEeLWgASb) (:text |:router/change) (:type :leaf)
                                  |j $ {} (:at 1500541255553) (:by |root) (:id |r1tl4lIZx0SW) (:text |router/change) (:type :leaf)
                              |yt $ {} (:at 1520962602226) (:by |root) (:id |HyfEhKrFM) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1520962604247) (:by |root) (:id |HyfEhKrFMleaf) (:text |:task/create) (:type :leaf)
                                  |j $ {} (:at 1520962606774) (:by |root) (:id |HkSV4htSFf) (:text |task/create) (:type :leaf)
                              |yu $ {} (:at 1520962602226) (:by |root) (:id |SytP9T8YG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521044069064) (:by |root) (:id |HyfEhKrFMleaf) (:text |:task/move-task) (:type :leaf)
                                  |j $ {} (:at 1521044071456) (:by |root) (:id |HkSV4htSFf) (:text |task/move-task) (:type :leaf)
                              |yuD $ {} (:at 1521133370180) (:by |root) (:id |HyxzSvXOYf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521133374287) (:by |root) (:id |HyxzSvXOYfleaf) (:text |:task/update-text) (:type :leaf)
                                  |j $ {} (:at 1521133377388) (:by |root) (:id |SyWIBDXdtz) (:text |task/update-text) (:type :leaf)
                              |yuT $ {} (:at 1520962602226) (:by |root) (:id |ry4cz0UYG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521046159678) (:by |root) (:id |HyfEhKrFMleaf) (:text |:task/remove-done) (:type :leaf)
                                  |j $ {} (:at 1521046162270) (:by |root) (:id |HkSV4htSFf) (:text |task/remove-done) (:type :leaf)
                              |yuj $ {} (:at 1520962602226) (:by |root) (:id |B1VxtuKtz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521219822374) (:by |root) (:id |HyfEhKrFMleaf) (:text |:task/clear-done) (:type :leaf)
                                  |j $ {} (:at 1521219825674) (:by |root) (:id |HkSV4htSFf) (:text |task/clear-done) (:type :leaf)
                              |yur $ {} (:at 1521825646947) (:by |root) (:id |rJD_vhGcG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521825667621) (:by |root) (:id |rJD_vhGcGleaf) (:text |:task/remove-working) (:type :leaf)
                                  |b $ {} (:at 1521825673892) (:by |root) (:id |r1xnKv2G9M) (:text |task/remove-working) (:type :leaf)
                              |yuv $ {} (:at 1521825646947) (:by |root) (:id |BJhO2hM5z) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521826935152) (:by |root) (:id |rJD_vhGcGleaf) (:text |:task/touch-working) (:type :leaf)
                                  |b $ {} (:at 1521826939685) (:by |root) (:id |r1xnKv2G9M) (:text |task/touch-working) (:type :leaf)
                  |j $ {} (:at 1517930704255) (:by |root) (:id |HyxOAOHDUM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1517930704937) (:by |root) (:id |HyxOAOHDUMleaf) (:text |f) (:type :leaf)
                      |j $ {} (:at 1517930706635) (:by |root) (:id |SkcC_SvLM) (:text |db) (:type :leaf)
                      |r $ {} (:at 1517930709018) (:by |root) (:id |HJ2RdSPUf) (:text |op-data) (:type :leaf)
                      |v $ {} (:at 1517930725426) (:by |root) (:id |r1JytHD8G) (:text |sid) (:type :leaf)
                      |x $ {} (:at 1517930717948) (:by |root) (:id |S1z4JKSDLG) (:text |op-id) (:type :leaf)
                      |y $ {} (:at 1517930719120) (:by |root) (:id |BkGLkYrDUz) (:text |op-time) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |BJR97lLZlRSZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |ry1omxI-g0r-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ryxjmgIZgArZ) (:text |app.updater) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |SJ-o7eUZlRBZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |SkGj7eUZgCrZ) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541255553) (:by nil) (:id |S1momeUWgRHb) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |rkEsmx8Wg0rZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |BySiQgUZxCS-) (:text |app.updater.session) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |S1Ismg8blABW) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |BkDsme8-l0H-) (:text |session) (:type :leaf)
                |r $ {} (:at 1500541255553) (:by nil) (:id |S1uoQlLWe0HW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |r1FoXeI-e0BZ) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |H19oXxI-xAH-) (:text |app.updater.user) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |HyojQg8WeCH-) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |SJ2o7eIWeAHb) (:text |user) (:type :leaf)
                |v $ {} (:at 1500541255553) (:by nil) (:id |BkTsXxUbg0S-) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |Sy0sXlLbxRBb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |B1J3XgIZe0SZ) (:text |app.updater.router) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |rkgnmg8-x0BZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |HkZ3XxLZlCSW) (:text |router) (:type :leaf)
                |x $ {} (:at 1500541255553) (:by nil) (:id |S1YE3KBYG) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |Sy0sXlLbxRBb) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1520962611137) (:by |root) (:id |B1J3XgIZe0SZ) (:text |app.updater.task) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |rkgnmg8-x0BZ) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1520962612731) (:by |root) (:id |HkZ3XxLZlCSW) (:text |task) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |SkfhmgLbxRHb) (:type :expr)
          :data $ {}
      |app.updater.router $ {}
        :defs $ {}
          |change $ {} (:at 1500541255553) (:by nil) (:id |ryQxUbg0B-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Hy4gLZgABZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByBlIWg0S-) (:text |change) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |SkIxIWgAHZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJvx8bxCBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |HkdeLWxRBZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |BkYlL-xCSZ) (:text |session-id) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HJ9eLWxRSW) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |Hkog8blRSW) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |BkhgI-xCrb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |B1al8ZxAB-) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1ClU-xRB-) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |Hk1geLWx0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HklggLbxRB-) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |Hk-xxUbeRSZ) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |HyzlgIZgCSb) (:text |session-id) (:type :leaf)
                      |v $ {} (:at 1500541255553) (:by |root) (:id |rkQgxU-l0Bb) (:text |:router) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |B14gg8WxCrb) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |S1eLbxASW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |S1eeUbeCrZ) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |r1-l8We0BW) (:text |app.updater.router) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |HJzeUWeAr-) (:type :expr)
          :data $ {}
      |app.updater.session $ {}
        :defs $ {}
          |connect $ {} (:at 1500541255553) (:by nil) (:id |HyQ1WeI-xABW) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SJ4ybe8-g0Sb) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |B1SyWx8bxABW) (:text |connect) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ry8k-eUbgCr-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |HJv1Wl8WgRBZ) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |Hk_JWeLZg0Hb) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |ryYkWl8Wx0SZ) (:text |session-id) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HyqJ-l8-lCBZ) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |r1jk-lIWlASb) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rJhyZe8blCHW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rka1blIZeRrW) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |B1Ry-lIZgRrZ) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |r1klbeIWeRSZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |BJgeZeLbe0HZ) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |HkWeWlLbl0rb) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |SyfgWx8WeAHW) (:text |session-id) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |rJ7xbgI-eAHb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |rkNeWeUWx0HW) (:text |merge) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |BkBxWxIZxArW) (:text |schema/session) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by nil) (:id |HkUxZeLZxRrb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |Skwebg8-gArb) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by nil) (:id |BkdxZxL-l0S-) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1500541255553) (:by |root) (:id |ryKxZl8-x0SZ) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1500541255553) (:by |root) (:id |r19ebe8WeArW) (:text |session-id) (:type :leaf)
          |disconnect $ {} (:at 1500541255553) (:by nil) (:id |HJsgZx8-lCr-) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |Bknx-g8-gASW) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ByalZeUblRB-) (:text |disconnect) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |rkCxZl8WxCH-) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |r1yWZxIbxRSW) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |r1g--l8WeCHZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |HkWbWe8WeCSW) (:text |session-id) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |B1G--lIWg0Sb) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |HkQ-bxLZx0BZ) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rJ4ZWeUWeArb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |rkrbZe8blCrZ) (:text |update) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |HyL-Wx8WgABb) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |H1v-Wx8ZlCBb) (:text |:sessions) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |rJ_-ZgUbx0H-) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HyKZZxUbxRBb) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |HyqWZlU-lCHb) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |SyjWWlLWe0HW) (:text |session) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by nil) (:id |Syh-WgIZxCHZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1500541255553) (:by |root) (:id |Bka-Zg8beAS-) (:text |dissoc) (:type :leaf)
                          |j $ {} (:at 1500541255553) (:by |root) (:id |rJAZZl8ZgABZ) (:text |session) (:type :leaf)
                          |r $ {} (:at 1500541255553) (:by |root) (:id |S1yMbeI-e0BW) (:text |session-id) (:type :leaf)
          |remove-message $ {} (:at 1500541255553) (:by nil) (:id |ryezWxIWeArb) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |SJWMWxUbe0SW) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |ryMfZeUWxCB-) (:text |remove-message) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |ByXM-gUbxRHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SkVfZe8-eRrW) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |BJBMWgIWe0rZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1536860000493) (:by |root) (:id |BJ8zZeU-eCS-) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |SJPfZeLZeCr-) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |ryuMWe8blABZ) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |ByFGbg8WxRHb) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |Bk5MWeLbeCr-) (:text |update-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |rJjM-gUWxRSb) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |Hyhf-eIZlABb) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |Sk6MbeUWlCrW) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |SJAMbgLZx0BW) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1536860002477) (:by |root) (:id |B11Xbg8-xRHZ) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1536859998428) (:by |root) (:id |ByeXZgU-g0Hb) (:text |:messages) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by nil) (:id |Hy-Q-xL-eABZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |SkzXWe8bxCS-) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by nil) (:id |BJQmblIWxRHZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1536860007920) (:by |root) (:id |By4QWxI-l0SZ) (:text |messages) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by nil) (:id |BkB7blLbxArZ) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1536860017048) (:by |root) (:id |SJLXZeUbx0SW) (:text |dissoc) (:type :leaf)
                          |f $ {} (:at 1536860018556) (:by |root) (:id |WLuPBWQd70) (:text |messages) (:type :leaf)
                          |r $ {} (:at 1536860022918) (:by |root) (:id |xdkBoaDap) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536860025094) (:by |root) (:id |rkOQ-lL-lCrZ) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1536860027020) (:by |root) (:id |H44NRLyBuU) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |Sy_0leLZgCrW) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |H1t0llUZg0r-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |ryq0ee8Wl0BZ) (:text |app.updater.session) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |rJs0xxI-g0rZ) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |B12AggIZl0rW) (:text |:require) (:type :leaf)
                |j $ {} (:at 1500541255553) (:by nil) (:id |SyaAlgIZeCSW) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1500541255553) (:by |root) (:id |rJ00glL-xAr-) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1500541255553) (:by |root) (:id |BkyJbxUWxCH-) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1500541255553) (:by |root) (:id |S1xyWgUWlRHb) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1500541255553) (:by |root) (:id |By-J-xU-gABb) (:text |schema) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |rJGJZgL-x0rZ) (:type :expr)
          :data $ {}
      |app.updater.task $ {}
        :defs $ {}
          |clear-done $ {} (:at 1521219826589) (:by |root) (:id |S1ljeF_FYf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521219826589) (:by |root) (:id |rJ-ogK_Ftf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1521219826589) (:by |root) (:id |rJGoeYuFYM) (:text |clear-done) (:type :leaf)
              |r $ {} (:at 1521219826589) (:by |root) (:id |Hy7igFdFKf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1521219828376) (:by |root) (:id |HyehgKOYFf) (:text |db) (:type :leaf)
                  |j $ {} (:at 1521219830211) (:by |root) (:id |B1mnltuttG) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1521219831054) (:by |root) (:id |BJX0xFuKFM) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1521219835103) (:by |root) (:id |SJfy-KuFKf) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1521219836085) (:by |root) (:id |SJQ7ZYutYG) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1521563964611) (:by |root) (:id |rkHSKhRYG) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1521563965346) (:by |root) (:id |SkxHBKhRtz) (:text |let) (:type :leaf)
                  |L $ {} (:at 1521563821744) (:by |root) (:id |SyLHY3RKz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521563821902) (:by |root) (:id |rkWUhOnRKM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521563823189) (:by |root) (:id |Hy82O3CKz) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1521563823541) (:by |root) (:id |BJ_3u2AKG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521563828340) (:by |root) (:id |HkMvnO3RYz) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1521563834294) (:by |root) (:id |rJWT_3RYM) (:text |db) (:type :leaf)
                              |r $ {} (:at 1521563834883) (:by |root) (:id |r17TO2RFz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521563836216) (:by |root) (:id |SyGM6_30tM) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1521563837643) (:by |root) (:id |rym46dhCtf) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1521563838500) (:by |root) (:id |SyW8TdnAFz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1521563842537) (:by |root) (:id |H1w6u3AtM) (:text |:user-id) (:type :leaf)
                  |T $ {} (:at 1521219839212) (:by |root) (:id |SyvWK_Ytz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521563970977) (:by |root) (:id |SyvWK_Ytzleaf) (:text |assoc-in) (:type :leaf)
                      |j $ {} (:at 1521219842844) (:by |root) (:id |rktZt_FYG) (:text |db) (:type :leaf)
                      |r $ {} (:at 1521563972539) (:by |root) (:id |H1pSY2RKz) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1521563973198) (:by |root) (:id |rkxaHF2CtG) (:text |[]) (:type :leaf)
                          |L $ {} (:at 1521563975281) (:by |root) (:id |HyQTrF3AYz) (:text |:users) (:type :leaf)
                          |P $ {} (:at 1521563976262) (:by |root) (:id |rybJIK3AFM) (:text |user-id) (:type :leaf)
                          |T $ {} (:at 1521219846405) (:by |root) (:id |By6-YuYtM) (:text |:done-tasks) (:type :leaf)
                      |v $ {} (:at 1521219847163) (:by |root) (:id |r1xyGtuKFM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521219847612) (:by |root) (:id |Hyyft_FFM) (:text |{}) (:type :leaf)
          |create $ {} (:at 1520962379590) (:by |root) (:id |rkxEUjYrKz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1520962379590) (:by |root) (:id |SkZNIsFSKf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1520962379590) (:by |root) (:id |SyzVUotSKG) (:text |create) (:type :leaf)
              |r $ {} (:at 1520962379590) (:by |root) (:id |rk748otrYf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1520962386613) (:by |root) (:id |BkZv8jtrKG) (:text |db) (:type :leaf)
                  |r $ {} (:at 1520962390481) (:by |root) (:id |BJnLoKStG) (:text |op-data) (:type :leaf)
                  |t $ {} (:at 1520962399659) (:by |root) (:id |HyxIwsKBtf) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1520962392119) (:by |root) (:id |HyJwstrtM) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1520962397130) (:by |root) (:id |HJMxvjFBtG) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1521563820677) (:by |root) (:id |ByBnu30Kf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1521563821494) (:by |root) (:id |SyxSnOnAYf) (:text |let) (:type :leaf)
                  |L $ {} (:at 1521563821744) (:by |root) (:id |S1eIhunAtM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521563821902) (:by |root) (:id |rkWUhOnRKM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521563823189) (:by |root) (:id |Hy82O3CKz) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1521563823541) (:by |root) (:id |BJ_3u2AKG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521563828340) (:by |root) (:id |HkMvnO3RYz) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1521563834294) (:by |root) (:id |rJWT_3RYM) (:text |db) (:type :leaf)
                              |r $ {} (:at 1521563834883) (:by |root) (:id |r17TO2RFz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521563836216) (:by |root) (:id |SyGM6_30tM) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1521563837643) (:by |root) (:id |rym46dhCtf) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1521563838500) (:by |root) (:id |SyW8TdnAFz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1521563842537) (:by |root) (:id |H1w6u3AtM) (:text |:user-id) (:type :leaf)
                  |T $ {} (:at 1520962421744) (:by |root) (:id |r10djKBKM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1520962425129) (:by |root) (:id |Byx6_strYG) (:text |assoc-in) (:type :leaf)
                      |j $ {} (:at 1520962425982) (:by |root) (:id |SJMWKitBKM) (:text |db) (:type :leaf)
                      |r $ {} (:at 1520962426391) (:by |root) (:id |ByMzKjFStf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1520962426817) (:by |root) (:id |Bk-MKotSFG) (:text |[]) (:type :leaf)
                          |b $ {} (:at 1521563849128) (:by |root) (:id |HkT6unRYf) (:text |:users) (:type :leaf)
                          |f $ {} (:at 1521563851279) (:by |root) (:id |SJM0u3RFf) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1520962765286) (:by |root) (:id |rkW7YiFrKM) (:text |:working-tasks) (:type :leaf)
                          |r $ {} (:at 1520962429462) (:by |root) (:id |BJZ4YjKBYf) (:text |op-id) (:type :leaf)
                      |v $ {} (:at 1520962430284) (:by |root) (:id |rkxLtiKBYG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1520962433347) (:by |root) (:id |rkxLtiKBYGleaf) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1520962433677) (:by |root) (:id |SJlcYsFHKM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1520962434497) (:by |root) (:id |r1cKitrYG) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1520962436918) (:by |root) (:id |rJoKjYStG) (:text |op-id) (:type :leaf)
                          |r $ {} (:at 1520962438366) (:by |root) (:id |r1ZAKjYrYz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1520962570013) (:by |root) (:id |r1ZAKjYrYzleaf) (:text |:text) (:type :leaf)
                              |j $ {} (:at 1520962571787) (:by |root) (:id |Hk7zMhtrFG) (:text |op-data) (:type :leaf)
                          |v $ {} (:at 1520962573443) (:by |root) (:id |HkeHG2FHtG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1520962575236) (:by |root) (:id |HkeHG2FHtGleaf) (:text |:mode) (:type :leaf)
                              |j $ {} (:at 1520962583713) (:by |root) (:id |S1uGhFHFG) (:text |:working) (:type :leaf)
                          |x $ {} (:at 1521132390040) (:by |root) (:id |BkgCw7Xdtf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521132391552) (:by |root) (:id |BkgCw7Xdtfleaf) (:text |:time) (:type :leaf)
                              |j $ {} (:at 1521132393641) (:by |root) (:id |BylgOmQdYM) (:text |op-time) (:type :leaf)
          |move-task $ {} (:at 1521044073548) (:by |root) (:id |rJxfOqaIYf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521044073548) (:by |root) (:id |H1bMuq6LtG) (:text |defn) (:type :leaf)
              |j $ {} (:at 1521044073548) (:by |root) (:id |S1Gzd5TUFz) (:text |move-task) (:type :leaf)
              |r $ {} (:at 1521044073548) (:by |root) (:id |rJ7zu5aItG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1521044077242) (:by |root) (:id |ryBdqTLKz) (:text |db) (:type :leaf)
                  |j $ {} (:at 1521044078246) (:by |root) (:id |ByGHuqpIKG) (:text |op-data) (:type :leaf)
                  |n $ {} (:at 1521044083638) (:by |root) (:id |BJjd9T8tG) (:text |sid) (:type :leaf)
                  |r $ {} (:at 1521044080083) (:by |root) (:id |SJIUO5pUFz) (:text |op-id) (:type :leaf)
                  |v $ {} (:at 1521044081067) (:by |root) (:id |BkB_OcaItM) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1521044148184) (:by |root) (:id |By-hn9aLKM) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1521044148845) (:by |root) (:id |HJf23q6LYz) (:text |let) (:type :leaf)
                  |L $ {} (:at 1521044149032) (:by |root) (:id |ByXT29aLYM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521044149180) (:by |root) (:id |r14Tn5pLKG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521044150206) (:by |root) (:id |BJz6ncTIYG) (:text |task-id) (:type :leaf)
                          |j $ {} (:at 1521044150631) (:by |root) (:id |HkJp96LKf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521044151130) (:by |root) (:id |B14CnqTUYG) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1521044152150) (:by |root) (:id |HkQka5aLKM) (:text |op-data) (:type :leaf)
                      |j $ {} (:at 1521563821902) (:by |root) (:id |rkWUhOnRKM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521563823189) (:by |root) (:id |Hy82O3CKz) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1521563823541) (:by |root) (:id |BJ_3u2AKG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521563828340) (:by |root) (:id |HkMvnO3RYz) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1521563834294) (:by |root) (:id |rJWT_3RYM) (:text |db) (:type :leaf)
                              |r $ {} (:at 1521563834883) (:by |root) (:id |r17TO2RFz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521563836216) (:by |root) (:id |SyGM6_30tM) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1521563837643) (:by |root) (:id |rym46dhCtf) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1521563838500) (:by |root) (:id |SyW8TdnAFz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1521563842537) (:by |root) (:id |H1w6u3AtM) (:text |:user-id) (:type :leaf)
                  |T $ {} (:at 1567350229046) (:by |B1y7Rc-Zz) (:id |utjb3CWmlS) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1567350229629) (:by |B1y7Rc-Zz) (:id |MSzx4m73Y2) (:text |if) (:type :leaf)
                      |L $ {} (:at 1567350229873) (:by |B1y7Rc-Zz) (:id |ELTY33VPa5) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1567350230562) (:by |B1y7Rc-Zz) (:id |mSbQ90pnqW) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1567350236425) (:by |B1y7Rc-Zz) (:id |T3IitgZ64l) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1567350236425) (:by |B1y7Rc-Zz) (:id |8LOfb395kN) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1567350238545) (:by |B1y7Rc-Zz) (:id |8KIsOHVqD2) (:text |db) (:type :leaf)
                              |r $ {} (:at 1567350236425) (:by |B1y7Rc-Zz) (:id |0-Aq2jo8rh) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1567350236425) (:by |B1y7Rc-Zz) (:id |Cd0z9zLs3N) (:text |[]) (:type :leaf)
                                  |b $ {} (:at 1567350241655) (:by |B1y7Rc-Zz) (:id |U_y31Ef1g) (:text |:users) (:type :leaf)
                                  |f $ {} (:at 1567350243372) (:by |B1y7Rc-Zz) (:id |ghd_9pvSc3) (:text |user-id) (:type :leaf)
                                  |j $ {} (:at 1567350236425) (:by |B1y7Rc-Zz) (:id |ifIDOhcJUO) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1567350236425) (:by |B1y7Rc-Zz) (:id |GAhNQzvvKA) (:text |:from) (:type :leaf)
                                      |j $ {} (:at 1567350236425) (:by |B1y7Rc-Zz) (:id |eYdiiVRk1v) (:text |op-data) (:type :leaf)
                                  |r $ {} (:at 1567350236425) (:by |B1y7Rc-Zz) (:id |bVrLuB2rkr) (:text |task-id) (:type :leaf)
                      |T $ {} (:at 1521563884599) (:by |root) (:id |BkreKhRKM) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1521563888044) (:by |root) (:id |SyxBgKhCtz) (:text |update-in) (:type :leaf)
                          |L $ {} (:at 1521563888459) (:by |root) (:id |BJG_eYnAKM) (:text |db) (:type :leaf)
                          |P $ {} (:at 1521563889039) (:by |root) (:id |SJetgK3RFf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521563889260) (:by |root) (:id |HJKgK3AFz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1521563892031) (:by |root) (:id |HJ5gK3CtM) (:text |:users) (:type :leaf)
                              |r $ {} (:at 1521563907422) (:by |root) (:id |HJplF3CtM) (:text |user-id) (:type :leaf)
                          |T $ {} (:at 1521563908542) (:by |root) (:id |HyT-t20Kf) (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1521563909650) (:by |root) (:id |rylT-YnAKM) (:text |fn) (:type :leaf)
                              |L $ {} (:at 1521563909896) (:by |root) (:id |SyfRZY20Kf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521563910311) (:by |root) (:id |H1bR-YhRtf) (:text |user) (:type :leaf)
                              |T $ {} (:at 1521044084828) (:by |root) (:id |Bya_qp8Yf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521044092538) (:by |root) (:id |Bya_qp8Yfleaf) (:text |->) (:type :leaf)
                                  |j $ {} (:at 1521563914048) (:by |root) (:id |SkgHYcT8tz) (:text |user) (:type :leaf)
                                  |r $ {} (:at 1521044094496) (:by |root) (:id |By7UY5TIKM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521044102618) (:by |root) (:id |BJfLFqaUYM) (:text |assoc-in) (:type :leaf)
                                      |j $ {} (:at 1521044103286) (:by |root) (:id |ByG1c9TUtM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1521044103533) (:by |root) (:id |HJby956LYG) (:text |[]) (:type :leaf)
                                          |j $ {} (:at 1521044103906) (:by |root) (:id |rJWec56LKG) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1521044110094) (:by |root) (:id |SJelqqp8KM) (:text |:to) (:type :leaf)
                                              |j $ {} (:at 1521044112713) (:by |root) (:id |SyDc96ItM) (:text |op-data) (:type :leaf)
                                          |r $ {} (:at 1521044155294) (:by |root) (:id |SyW7p968Kz) (:text |task-id) (:type :leaf)
                                      |r $ {} (:at 1521132645592) (:by |root) (:id |B1ADVmdKM) (:type :expr)
                                        :data $ {}
                                          |D $ {} (:at 1521132648449) (:by |root) (:id |r1xAD47utz) (:text |assoc) (:type :leaf)
                                          |T $ {} (:at 1521044136003) (:by |root) (:id |Skle25TIKf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1521044137971) (:by |root) (:id |Syxh5aUtG) (:text |get-in) (:type :leaf)
                                              |j $ {} (:at 1521564393618) (:by |root) (:id |BkfM3qpIYG) (:text |user) (:type :leaf)
                                              |r $ {} (:at 1521044139840) (:by |root) (:id |SJ-Nh56Ltz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1521044140913) (:by |root) (:id |rylV29T8FM) (:text |[]) (:type :leaf)
                                                  |j $ {} (:at 1521044141311) (:by |root) (:id |HJzH2q6LKM) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1521044141961) (:by |root) (:id |rJbBh9pItG) (:text |:from) (:type :leaf)
                                                      |j $ {} (:at 1521044144037) (:by |root) (:id |SkmUh96ItM) (:text |op-data) (:type :leaf)
                                                  |r $ {} (:at 1521044156697) (:by |root) (:id |r1-NacTLYf) (:text |task-id) (:type :leaf)
                                          |j $ {} (:at 1521132650459) (:by |root) (:id |BkeW_4XdYf) (:text |:time) (:type :leaf)
                                          |r $ {} (:at 1521132651462) (:by |root) (:id |HyXdNX_KG) (:text |op-time) (:type :leaf)
                                  |v $ {} (:at 1521044158462) (:by |root) (:id |H1G8aqpIYM) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1521044160988) (:by |root) (:id |H1G8aqpIYMleaf) (:text |update) (:type :leaf)
                                      |j $ {} (:at 1521044162330) (:by |root) (:id |Byqa96Itz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1521044164961) (:by |root) (:id |SkQKT5TUFf) (:text |:from) (:type :leaf)
                                          |j $ {} (:at 1521044166458) (:by |root) (:id |HJXTa9pUtz) (:text |op-data) (:type :leaf)
                                      |r $ {} (:at 1521044166958) (:by |root) (:id |Hy-kR5aLFM) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1521044167283) (:by |root) (:id |S1xyRc6LtM) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1521044167523) (:by |root) (:id |rylR9pLtz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1521044168314) (:by |root) (:id |BJ41Rqp8Kf) (:text |tasks) (:type :leaf)
                                          |r $ {} (:at 1521044168835) (:by |root) (:id |SkxZCqa8tf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1521044170241) (:by |root) (:id |SkxZCqa8tfleaf) (:text |dissoc) (:type :leaf)
                                              |j $ {} (:at 1521044174019) (:by |root) (:id |H1B096IKf) (:text |tasks) (:type :leaf)
                                              |r $ {} (:at 1521044174505) (:by |root) (:id |HJNIRc6Utf) (:text |task-id) (:type :leaf)
                      |j $ {} (:at 1567350246936) (:by |B1y7Rc-Zz) (:id |nHG_oSF8wp) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1567350249070) (:by |B1y7Rc-Zz) (:id |nHG_oSF8wpleaf) (:text |assoc-in) (:type :leaf)
                          |j $ {} (:at 1567350250611) (:by |B1y7Rc-Zz) (:id |0nZQkObWR) (:text |db) (:type :leaf)
                          |r $ {} (:at 1567350252085) (:by |B1y7Rc-Zz) (:id |zaOxHVxxm) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1567350251277) (:by |B1y7Rc-Zz) (:id |db0Rk_ugnk) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1567350254316) (:by |B1y7Rc-Zz) (:id |RYJDK2yD93) (:text |:sessions) (:type :leaf)
                              |r $ {} (:at 1567350255236) (:by |B1y7Rc-Zz) (:id |AboGE7YqE) (:text |sid) (:type :leaf)
                              |v $ {} (:at 1567350263106) (:by |B1y7Rc-Zz) (:id |tOhONFZEN) (:text |:messages) (:type :leaf)
                              |x $ {} (:at 1567350269611) (:by |B1y7Rc-Zz) (:id |LDnHLUILc) (:text |op-id) (:type :leaf)
                          |v $ {} (:at 1567350289943) (:by |B1y7Rc-Zz) (:id |GhAU0Xia-t) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1567350289943) (:by |B1y7Rc-Zz) (:id |QIeb-y4Ihu) (:text |{}) (:type :leaf)
                              |j $ {} (:at 1567350289943) (:by |B1y7Rc-Zz) (:id |MU5HKQ7Xc1) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1567350289943) (:by |B1y7Rc-Zz) (:id |0gi000a8ZK) (:text |:id) (:type :leaf)
                                  |j $ {} (:at 1567350289943) (:by |B1y7Rc-Zz) (:id |Jl1ZXlMImB) (:text |op-id) (:type :leaf)
                              |r $ {} (:at 1567350289943) (:by |B1y7Rc-Zz) (:id |OUvDcch-JW) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1567350289943) (:by |B1y7Rc-Zz) (:id |R_Wqao-C7l) (:text |:text) (:type :leaf)
                                  |j $ {} (:at 1567350289943) (:by |B1y7Rc-Zz) (:id |bqjUmY1MlB) (:text "|\"No such task") (:type :leaf)
          |remove-done $ {} (:at 1521046163785) (:by |root) (:id |ryghcM0UFz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521046163785) (:by |root) (:id |ryWhcG0LKf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1521046163785) (:by |root) (:id |BkG39zR8Yf) (:text |remove-done) (:type :leaf)
              |r $ {} (:at 1521046163785) (:by |root) (:id |r17h9MAIFM) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1521046165465) (:by |root) (:id |r1Za5zCLFM) (:text |db) (:type :leaf)
                  |j $ {} (:at 1521046167262) (:by |root) (:id |SJ0qGCItM) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1521046169236) (:by |root) (:id |H14kiMCItf) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1521046170974) (:by |root) (:id |ryMZjfRLFz) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1521046172590) (:by |root) (:id |Skb7ozC8YG) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1521563956061) (:by |root) (:id |HJ-2EFnRtz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1521563956684) (:by |root) (:id |SkG3EYhAYz) (:text |let) (:type :leaf)
                  |L $ {} (:at 1521563821744) (:by |root) (:id |rJgC4F3RKf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521563821902) (:by |root) (:id |rkWUhOnRKM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521563823189) (:by |root) (:id |Hy82O3CKz) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1521563823541) (:by |root) (:id |BJ_3u2AKG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521563828340) (:by |root) (:id |HkMvnO3RYz) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1521563834294) (:by |root) (:id |rJWT_3RYM) (:text |db) (:type :leaf)
                              |r $ {} (:at 1521563834883) (:by |root) (:id |r17TO2RFz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521563836216) (:by |root) (:id |SyGM6_30tM) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1521563837643) (:by |root) (:id |rym46dhCtf) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1521563838500) (:by |root) (:id |SyW8TdnAFz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1521563842537) (:by |root) (:id |H1w6u3AtM) (:text |:user-id) (:type :leaf)
                  |T $ {} (:at 1521046173248) (:by |root) (:id |rJ-BozRUYz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1567349424110) (:by |B1y7Rc-Zz) (:id |rJ-BozRUYzleaf) (:text |dissoc-in) (:type :leaf)
                      |j $ {} (:at 1521046175806) (:by |root) (:id |r1bDsfCIKM) (:text |db) (:type :leaf)
                      |r $ {} (:at 1521563950582) (:by |root) (:id |HJvNF2RFf) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1521563951265) (:by |root) (:id |BkePEt2AFM) (:text |[]) (:type :leaf)
                          |L $ {} (:at 1521563953967) (:by |root) (:id |SkdEYh0Fz) (:text |:users) (:type :leaf)
                          |P $ {} (:at 1521563954988) (:by |root) (:id |S1NqVthAYz) (:text |user-id) (:type :leaf)
                          |T $ {} (:at 1521046181110) (:by |root) (:id |Bkx9ifAUKG) (:text |:done-tasks) (:type :leaf)
                          |j $ {} (:at 1567349428740) (:by |B1y7Rc-Zz) (:id |yl0imK-jJ) (:text |op-data) (:type :leaf)
          |remove-working $ {} (:at 1521825674863) (:by |root) (:id |Hkgm9P3fqM) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521825674863) (:by |root) (:id |SJb79D3f5M) (:text |defn) (:type :leaf)
              |j $ {} (:at 1521825674863) (:by |root) (:id |r1GX9w2G5z) (:text |remove-working) (:type :leaf)
              |r $ {} (:at 1520962379590) (:by |root) (:id |B1zn5w2M9M) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1520962386613) (:by |root) (:id |BkZv8jtrKG) (:text |db) (:type :leaf)
                  |r $ {} (:at 1520962390481) (:by |root) (:id |BJnLoKStG) (:text |op-data) (:type :leaf)
                  |t $ {} (:at 1520962399659) (:by |root) (:id |HyxIwsKBtf) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1520962392119) (:by |root) (:id |HyJwstrtM) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1520962397130) (:by |root) (:id |HJMxvjFBtG) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1521825691724) (:by |root) (:id |SJl4sDnM9M) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1521825692316) (:by |root) (:id |S1ZNiP2f5M) (:text |let) (:type :leaf)
                  |L $ {} (:at 1521563821744) (:by |root) (:id |SklKsv2fcM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521563821902) (:by |root) (:id |rkWUhOnRKM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521563823189) (:by |root) (:id |Hy82O3CKz) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1521563823541) (:by |root) (:id |BJ_3u2AKG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521563828340) (:by |root) (:id |HkMvnO3RYz) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1521563834294) (:by |root) (:id |rJWT_3RYM) (:text |db) (:type :leaf)
                              |r $ {} (:at 1521563834883) (:by |root) (:id |r17TO2RFz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521563836216) (:by |root) (:id |SyGM6_30tM) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1521563837643) (:by |root) (:id |rym46dhCtf) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1521563838500) (:by |root) (:id |SyW8TdnAFz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1521563842537) (:by |root) (:id |H1w6u3AtM) (:text |:user-id) (:type :leaf)
                  |T $ {} (:at 1521825689134) (:by |root) (:id |BJbbsP2z5z) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1567349966997) (:by |B1y7Rc-Zz) (:id |HkacD2z5f) (:text |dissoc-in) (:type :leaf)
                      |j $ {} (:at 1521825701858) (:by |root) (:id |Hy0iD2zqM) (:text |db) (:type :leaf)
                      |r $ {} (:at 1521825702454) (:by |root) (:id |rk7CoP2f9z) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521825702616) (:by |root) (:id |SyzAjP2M5M) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1521825784892) (:by |root) (:id |rJb1hvnf9G) (:text |:users) (:type :leaf)
                          |r $ {} (:at 1521825786779) (:by |root) (:id |HyzZu2z5f) (:text |user-id) (:type :leaf)
                          |v $ {} (:at 1521825792582) (:by |root) (:id |HJW7WO3M9M) (:text |:working-tasks) (:type :leaf)
                          |x $ {} (:at 1567349971935) (:by |B1y7Rc-Zz) (:id |rUQ2EcQJI) (:text |op-data) (:type :leaf)
          |touch-working $ {} (:at 1521826940068) (:by |root) (:id |BkG4Knnf9G) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521826940068) (:by |root) (:id |B1mNthnMqM) (:text |defn) (:type :leaf)
              |j $ {} (:at 1521826940068) (:by |root) (:id |SyEEF2hM9M) (:text |touch-working) (:type :leaf)
              |r $ {} (:at 1520962379590) (:by |root) (:id |r1htn2zcG) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1520962386613) (:by |root) (:id |BkZv8jtrKG) (:text |db) (:type :leaf)
                  |r $ {} (:at 1520962390481) (:by |root) (:id |BJnLoKStG) (:text |op-data) (:type :leaf)
                  |t $ {} (:at 1520962399659) (:by |root) (:id |HyxIwsKBtf) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1520962392119) (:by |root) (:id |HyJwstrtM) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1520962397130) (:by |root) (:id |HJMxvjFBtG) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1521825691724) (:by |root) (:id |HJbq2nM5f) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1521825692316) (:by |root) (:id |S1ZNiP2f5M) (:text |let) (:type :leaf)
                  |L $ {} (:at 1521563821744) (:by |root) (:id |SklKsv2fcM) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521563821902) (:by |root) (:id |rkWUhOnRKM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521563823189) (:by |root) (:id |Hy82O3CKz) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1521563823541) (:by |root) (:id |BJ_3u2AKG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521563828340) (:by |root) (:id |HkMvnO3RYz) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1521563834294) (:by |root) (:id |rJWT_3RYM) (:text |db) (:type :leaf)
                              |r $ {} (:at 1521563834883) (:by |root) (:id |r17TO2RFz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521563836216) (:by |root) (:id |SyGM6_30tM) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1521563837643) (:by |root) (:id |rym46dhCtf) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1521563838500) (:by |root) (:id |SyW8TdnAFz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1521563842537) (:by |root) (:id |H1w6u3AtM) (:text |:user-id) (:type :leaf)
                  |T $ {} (:at 1521825689134) (:by |root) (:id |BJbbsP2z5z) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1536687856528) (:by |root) (:id |HkacD2z5f) (:text |update-in) (:type :leaf)
                      |j $ {} (:at 1521825701858) (:by |root) (:id |Hy0iD2zqM) (:text |db) (:type :leaf)
                      |r $ {} (:at 1521825702454) (:by |root) (:id |rk7CoP2f9z) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521825702616) (:by |root) (:id |SyzAjP2M5M) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1521825784892) (:by |root) (:id |rJb1hvnf9G) (:text |:users) (:type :leaf)
                          |r $ {} (:at 1521825786779) (:by |root) (:id |HyzZu2z5f) (:text |user-id) (:type :leaf)
                          |v $ {} (:at 1521825792582) (:by |root) (:id |HJW7WO3M9M) (:text |:working-tasks) (:type :leaf)
                      |t $ {} (:at 1536687858313) (:by |root) (:id |NG_5k_nKJU) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1536687859949) (:by |root) (:id |Iehe3-4KY) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1536687860282) (:by |root) (:id |WSD7yJpmSn) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536688018641) (:by |root) (:id |jHZTuwwuIj) (:text |tasks) (:type :leaf)
                          |n $ {} (:at 1536688019433) (:by |root) (:id |0fvGOy3piE) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1536688020072) (:by |root) (:id |0fvGOy3piEleaf) (:text |if) (:type :leaf)
                              |j $ {} (:at 1536688021151) (:by |root) (:id |01UsAjyC0O) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1542535839811) (:by |root) (:id |Ue7OKHhqgf) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1542535840677) (:by |root) (:id |mX_1zCljN) (:type :expr)
                                    :data $ {}
                                      |D $ {} (:at 1542535841620) (:by |root) (:id |0v4oZg70Si) (:text |get) (:type :leaf)
                                      |T $ {} (:at 1536688022825) (:by |root) (:id |P1-toOSsu) (:text |tasks) (:type :leaf)
                                      |j $ {} (:at 1542535845306) (:by |root) (:id |HdMJS8lnVG) (:text |op-data) (:type :leaf)
                              |r $ {} (:at 1536688025147) (:by |root) (:id |-gvuE-uEbh) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1536688026681) (:by |root) (:id |-gvuE-uEbhleaf) (:text |assoc-in) (:type :leaf)
                                  |j $ {} (:at 1536688028160) (:by |root) (:id |I35tyEcQNL) (:text |tasks) (:type :leaf)
                                  |r $ {} (:at 1536688028503) (:by |root) (:id |e4YiHeKZTh) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1536688030382) (:by |root) (:id |_90QTgyXTN) (:text |[]) (:type :leaf)
                                      |j $ {} (:at 1536688032191) (:by |root) (:id |cERw5jrY5) (:text |op-data) (:type :leaf)
                                      |r $ {} (:at 1536688033190) (:by |root) (:id |3JTq8CD4rW) (:text |:time) (:type :leaf)
                                  |v $ {} (:at 1536688082353) (:by |root) (:id |Sz7ByNLEq) (:text |op-time) (:type :leaf)
                              |v $ {} (:at 1536688047422) (:by |root) (:id |ANIh586p7) (:text |tasks) (:type :leaf)
          |update-text $ {} (:at 1521133378111) (:by |root) (:id |Skl5HvXOKf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1521133378111) (:by |root) (:id |Hy-9SDXOtf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1521133378111) (:by |root) (:id |rJf5rw7_Kf) (:text |update-text) (:type :leaf)
              |r $ {} (:at 1521133378111) (:by |root) (:id |H1m9rD7OKz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1521133379686) (:by |root) (:id |SybjHPXOKG) (:text |db) (:type :leaf)
                  |j $ {} (:at 1521133381048) (:by |root) (:id |Syb3SPXdKM) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1521133382574) (:by |root) (:id |ryQ6SwXutf) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1521133383626) (:by |root) (:id |S1ey8vmuKz) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1521133385073) (:by |root) (:id |SylgUPXuKf) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1521563927831) (:by |root) (:id |H1lxXF3Atz) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1521563928484) (:by |root) (:id |ryWx7Y3RKz) (:text |let) (:type :leaf)
                  |L $ {} (:at 1521563928723) (:by |root) (:id |Byx-mt3AFf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1521563821902) (:by |root) (:id |rkWUhOnRKM) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521563823189) (:by |root) (:id |Hy82O3CKz) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1521563823541) (:by |root) (:id |BJ_3u2AKG) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521563828340) (:by |root) (:id |HkMvnO3RYz) (:text |get-in) (:type :leaf)
                              |j $ {} (:at 1521563834294) (:by |root) (:id |rJWT_3RYM) (:text |db) (:type :leaf)
                              |r $ {} (:at 1521563834883) (:by |root) (:id |r17TO2RFz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521563836216) (:by |root) (:id |SyGM6_30tM) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1521563837643) (:by |root) (:id |rym46dhCtf) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1521563838500) (:by |root) (:id |SyW8TdnAFz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1521563842537) (:by |root) (:id |H1w6u3AtM) (:text |:user-id) (:type :leaf)
                  |T $ {} (:at 1521133547526) (:by |root) (:id |BkNxuXuFM) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1521133550726) (:by |root) (:id |S1lNgdQuFf) (:text |update-in) (:type :leaf)
                      |L $ {} (:at 1521133551903) (:by |root) (:id |HJde_muFG) (:text |db) (:type :leaf)
                      |P $ {} (:at 1521133558931) (:by |root) (:id |HylJbdQuFG) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1521133559280) (:by |root) (:id |ry1W_7uYz) (:text |[]) (:type :leaf)
                          |b $ {} (:at 1521563936877) (:by |root) (:id |H1Bmt3RtM) (:text |:users) (:type :leaf)
                          |f $ {} (:at 1521563938560) (:by |root) (:id |BkxFQY3CFz) (:text |user-id) (:type :leaf)
                          |j $ {} (:at 1521133559718) (:by |root) (:id |Skeb_7uFf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521133560858) (:by |root) (:id |BkQJb_mOFM) (:text |:group) (:type :leaf)
                              |j $ {} (:at 1521133562974) (:by |root) (:id |Syz-dQuYz) (:text |op-data) (:type :leaf)
                          |r $ {} (:at 1521133564668) (:by |root) (:id |HkHZOmOYM) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521133565817) (:by |root) (:id |H1EbdQutf) (:text |:id) (:type :leaf)
                              |j $ {} (:at 1521133566901) (:by |root) (:id |rkZUZuQ_FM) (:text |op-data) (:type :leaf)
                      |T $ {} (:at 1521133553753) (:by |root) (:id |SylceOXdtG) (:type :expr)
                        :data $ {}
                          |D $ {} (:at 1521133554351) (:by |root) (:id |rJWqgOX_KM) (:text |fn) (:type :leaf)
                          |L $ {} (:at 1521133555298) (:by |root) (:id |S1esedmdYf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521133555882) (:by |root) (:id |SyoeumdKf) (:text |task) (:type :leaf)
                          |j $ {} (:at 1521133571030) (:by |root) (:id |ryjbu7Otf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1521133571945) (:by |root) (:id |ryjbu7Otfleaf) (:text |assoc) (:type :leaf)
                              |j $ {} (:at 1521133574406) (:by |root) (:id |BkMn-dXdtG) (:text |task) (:type :leaf)
                              |r $ {} (:at 1521133575495) (:by |root) (:id |HykGd7dFf) (:text |:text) (:type :leaf)
                              |v $ {} (:at 1521133576278) (:by |root) (:id |SyelzO7dFf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521133577211) (:by |root) (:id |HyxMdm_tM) (:text |:text) (:type :leaf)
                                  |j $ {} (:at 1521133578268) (:by |root) (:id |S17bfOXOKM) (:text |op-data) (:type :leaf)
                              |x $ {} (:at 1521133586820) (:by |root) (:id |r1mGO7_YG) (:text |:time) (:type :leaf)
                              |y $ {} (:at 1521565735247) (:by |root) (:id |BJZyNeaRFG) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1521565737499) (:by |root) (:id |SkQjMuX_FM) (:text |:time) (:type :leaf)
                                  |j $ {} (:at 1521565742154) (:by |root) (:id |SkfNepRKf) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1520962369922) (:by |root) (:id |Ske5rsFBYM) (:type :expr)
          :data $ {}
            |T $ {} (:at 1520962369922) (:by |root) (:id |By-9BstBtG) (:text |ns) (:type :leaf)
            |j $ {} (:at 1520962369922) (:by |root) (:id |r1f5BiYSFG) (:text |app.updater.task) (:type :leaf)
            |r $ {} (:at 1567349409602) (:by |B1y7Rc-Zz) (:id |IAzYnIidy) (:type :expr)
              :data $ {}
                |T $ {} (:at 1567349410549) (:by |B1y7Rc-Zz) (:id |0xQsvDnLuj) (:text |:require) (:type :leaf)
                |j $ {} (:at 1567349410834) (:by |B1y7Rc-Zz) (:id |6HmQxqTa3N) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1567349411021) (:by |B1y7Rc-Zz) (:id |jsEGU5z7hW) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1567349417698) (:by |B1y7Rc-Zz) (:id |ZjKktLHDmC) (:text |medley.core) (:type :leaf)
                    |r $ {} (:at 1567349418476) (:by |B1y7Rc-Zz) (:id |3ItqlxJXYQ) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1567349418693) (:by |B1y7Rc-Zz) (:id |2pv7HH2yn4) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1567349418907) (:by |B1y7Rc-Zz) (:id |HWjjyqN_z) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1567349420978) (:by |B1y7Rc-Zz) (:id |NbfwxGR81x) (:text |dissoc-in) (:type :leaf)
        :proc $ {} (:at 1520962369922) (:by |root) (:id |S179Hstrtf) (:type :expr)
          :data $ {}
      |app.updater.user $ {}
        :defs $ {}
          |log-in $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |log-in) (:type :leaf)
              |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                  |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |let-sugar) (:type :leaf)
                  |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                          |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                      |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                          |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                              |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                  |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |vals) (:type :leaf)
                              |v $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |.to-list) (:type :leaf)
                              |x $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |find) (:type :leaf)
                                  |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                                      |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |and) (:type :leaf)
                                          |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                              |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                              |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                                  |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                  |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |update-in) (:type :leaf)
                      |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                      |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                          |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                          |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                      |v $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                          |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                              |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                                  |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                              |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                                  |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                      |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                                          |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                                      |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                          |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                                  |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                      |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:user-id) (:type :leaf)
                                      |v $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                                  |v $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |update) (:type :leaf)
                                      |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                      |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                                      |v $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                          |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                          |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                              |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                              |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                              |v $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                                  |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                      |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                                  |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                      |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                                          |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text "|\"Wrong password for ") (:type :leaf)
                                                          |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |v $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |update) (:type :leaf)
                                  |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |session) (:type :leaf)
                                  |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                                  |v $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                      |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                      |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                          |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                          |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                          |v $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                              |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                                  |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                              |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                                  |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                                      |j $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text "|\"No user named: ") (:type :leaf)
                                                      |r $ {} (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
          |log-out $ {} (:at 1500541255553) (:by nil) (:id |Bk8TlgU-xAHZ) (:type :expr)
            :data $ {}
              |T $ {} (:at 1500541255553) (:by |root) (:id |BJPaegIWgAHZ) (:text |defn) (:type :leaf)
              |j $ {} (:at 1500541255553) (:by |root) (:id |HkuTeeIbxAB-) (:text |log-out) (:type :leaf)
              |r $ {} (:at 1500541255553) (:by nil) (:id |BkFael8ZgRrW) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |SJ9pxxIZeRHW) (:text |db) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |BkjpegUbxArZ) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by |root) (:id |Hk3peeU-e0BW) (:text |session-id) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |H16agxUbx0r-) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1500541255553) (:by |root) (:id |HyRpllIblRSb) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1500541255553) (:by nil) (:id |rkyRlxUZxCSZ) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1500541255553) (:by |root) (:id |H1gRge8WeCBb) (:text |assoc-in) (:type :leaf)
                  |j $ {} (:at 1500541255553) (:by |root) (:id |H1WAxxIWlAS-) (:text |db) (:type :leaf)
                  |r $ {} (:at 1500541255553) (:by nil) (:id |BkzRglUWgCHZ) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1500541255553) (:by |root) (:id |HymReg8WgRBZ) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1500541255553) (:by |root) (:id |H1V0ggLZgCB-) (:text |:sessions) (:type :leaf)
                      |r $ {} (:at 1500541255553) (:by |root) (:id |rJBRgeUbxCHZ) (:text |session-id) (:type :leaf)
                      |v $ {} (:at 1500541255553) (:by |root) (:id |HJL0egLbe0H-) (:text |:user-id) (:type :leaf)
                  |v $ {} (:at 1500541255553) (:by |root) (:id |HJvCgxLbeRB-) (:text |nil) (:type :leaf)
          |sign-up $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
            :data $ {}
              |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |defn) (:type :leaf)
              |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |sign-up) (:type :leaf)
              |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                  |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                  |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                  |v $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |let-sugar) (:type :leaf)
                  |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                              |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                          |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-data) (:type :leaf)
                      |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                          |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |find) (:type :leaf)
                              |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |vals) (:type :leaf)
                                  |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                      |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                              |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                                  |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                                  |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |=) (:type :leaf)
                                      |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                      |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                          |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |user) (:type :leaf)
                  |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |if) (:type :leaf)
                      |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |maybe-user) (:type :leaf)
                      |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |update-in) (:type :leaf)
                          |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                          |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                              |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                              |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                              |v $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:messages) (:type :leaf)
                          |v $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                              |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |assoc) (:type :leaf)
                                  |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |messages) (:type :leaf)
                                  |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                  |v $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                      |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                          |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                      |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:text) (:type :leaf)
                                          |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |str) (:type :leaf)
                                              |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text "|\"Name is taken: ") (:type :leaf)
                                              |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                      |v $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |->) (:type :leaf)
                          |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |db) (:type :leaf)
                          |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |assoc-in) (:type :leaf)
                              |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:sessions) (:type :leaf)
                                  |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |sid) (:type :leaf)
                                  |v $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:user-id) (:type :leaf)
                              |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                          |v $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |assoc-in) (:type :leaf)
                              |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |[]) (:type :leaf)
                                  |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:users) (:type :leaf)
                                  |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                              |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |{}) (:type :leaf)
                                  |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:id) (:type :leaf)
                                      |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-id) (:type :leaf)
                                  |r $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:name) (:type :leaf)
                                      |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                  |v $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:nickname) (:type :leaf)
                                      |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |username) (:type :leaf)
                                  |x $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:password) (:type :leaf)
                                      |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                                          |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |password) (:type :leaf)
                                  |y $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:avatar) (:type :leaf)
                                      |j $ {} (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |nil) (:type :leaf)
        :ns $ {} (:at 1500541255553) (:by nil) (:id |SyuRgL-x0HZ) (:type :expr)
          :data $ {}
            |T $ {} (:at 1500541255553) (:by |root) (:id |H1KCx8bgAH-) (:text |ns) (:type :leaf)
            |j $ {} (:at 1500541255553) (:by |root) (:id |Sk5AgLWlRrb) (:text |app.updater.user) (:type :leaf)
            |r $ {} (:at 1500541255553) (:by nil) (:id |ryi0xL-lCH-) (:type :expr)
              :data $ {}
                |T $ {} (:at 1500541255553) (:by |root) (:id |r13AgIWlAS-) (:text |:require) (:type :leaf)
                |r $ {} (:at 1636953500223) (:by |B1y7Rc-Zz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1636953500223) (:by |B1y7Rc-Zz) (:text |calcit.std.hash) (:type :leaf)
                    |j $ {} (:at 1636953500223) (:by |B1y7Rc-Zz) (:text |:refer) (:type :leaf)
                    |r $ {} (:at 1636953500223) (:by |B1y7Rc-Zz) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1636953500223) (:by |B1y7Rc-Zz) (:text |md5) (:type :leaf)
                |v $ {} (:at 1521564176287) (:by |root) (:id |rkg_f9nRYz) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1521564176596) (:by |root) (:id |rkg_f9nRYzleaf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1521564179495) (:by |root) (:id |HJWKz5hCtf) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1521564180578) (:by |root) (:id |HyhMc2CKf) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1521564182529) (:by |root) (:id |HkbpMcnAYf) (:text |schema) (:type :leaf)
        :proc $ {} (:at 1500541255553) (:by nil) (:id |B141llLbeCBW) (:type :expr)
          :data $ {}
    :root $ {} (:def |main!) (:ns |main)
  :users $ {}
    |B1y7Rc-Zz $ {} (:avatar nil) (:id |B1y7Rc-Zz) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
