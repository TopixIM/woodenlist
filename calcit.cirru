
{} (:package |app)
  :configs $ {} (:init-fn |app.client/main!) (:port 6001) (:reload-fn |app.client/reload!) (:storage-key |calcit.cirru)
    :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |respo-feather.calcit/ |alerts.calcit/ |respo-markdown.calcit/
  :entries $ {}
    :server $ {} (:init-fn |app.server/main!) (:port 6001) (:reload-fn |app.server/reload!) (:storage-key |calcit.cirru)
      :modules $ [] |lilac/ |recollect/ |memof/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |calcit-wss/ |calcit.std/
  :files $ {}
    |app.client $ %{} :FileEntry
      :defs $ {}
        |*states $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*states)
              |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |{})
                  |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:states)
                      |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |[])
        |*store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*store)
              |r $ %{} :Expr (:at 1695977027853) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695977028386) (:by |B1y7Rc-Zz) (:text |::)
                  |b $ %{} :Leaf (:at 1695977030163) (:by |B1y7Rc-Zz) (:text |:initial)
        |connect! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |connect!)
              |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |url-obj)
                          |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |url-parse)
                              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |js/location.href)
                              |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |true)
                      |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |host)
                          |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |either)
                              |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |->)
                                  |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |url-obj)
                                  |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |.-query)
                                  |v $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |.-host)
                              |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |js/location.hostname)
                      |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |port)
                          |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |either)
                              |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |->)
                                  |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |url-obj)
                                  |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |.-query)
                                  |v $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |.-port)
                              |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:port)
                                  |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |ws-connect!)
                      |j $ %{} :Expr (:at 1695138998400) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695138998971) (:by |B1y7Rc-Zz) (:text |if)
                          |L $ %{} :Leaf (:at 1695139001382) (:by |B1y7Rc-Zz) (:text |config/dev?)
                          |T $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |str)
                              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"ws://")
                              |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |host)
                              |v $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\":")
                              |x $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |port)
                          |b $ %{} :Leaf (:at 1695139015527) (:by |B1y7Rc-Zz) (:text "|\"wss://wood.topix.im/ws/")
                      |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:on-open)
                              |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |event)
                                  |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |simulate-login!)
                          |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:on-close)
                              |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |event)
                                  |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |reset!)
                                      |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*store)
                                      |r $ %{} :Expr (:at 1695977036670) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695977038267) (:by |B1y7Rc-Zz) (:text |::)
                                          |b $ %{} :Leaf (:at 1695977039959) (:by |B1y7Rc-Zz) (:text |:offline)
                                  |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |js/console.error)
                                      |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"Lost connection!")
                          |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:on-data)
                              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |on-server-data)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |dispatch!)
              |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |op)
              |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |when)
                  |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |and)
                      |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |not=)
                          |j $ %{} :Expr (:at 1695058340211) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1695058342213) (:by |B1y7Rc-Zz) (:text |first)
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |op)
                          |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:states)
                  |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657800365414) (:by |B1y7Rc-Zz) (:text |js/console.log)
                      |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"Dispatch")
                      |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |op)
              |x $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695058349057) (:by |B1y7Rc-Zz) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |op)
                  |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058361423) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:states)
                          |b $ %{} :Leaf (:at 1695058363173) (:by |B1y7Rc-Zz) (:text |cursor)
                          |h $ %{} :Leaf (:at 1695058364191) (:by |B1y7Rc-Zz) (:text |s)
                      |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |reset!)
                          |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*states)
                          |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |update-states)
                              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |@*states)
                              |r $ %{} :Leaf (:at 1695058367095) (:by |B1y7Rc-Zz) (:text |cursor)
                              |t $ %{} :Leaf (:at 1695058367291) (:by |B1y7Rc-Zz) (:text |s)
                  |x $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058359909) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:effect/connect)
                      |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |connect!)
                  |y $ %{} :Expr (:at 1695058351492) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695058351873) (:by |B1y7Rc-Zz) (:text |_)
                      |b $ %{} :Expr (:at 1695058352307) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058352307) (:by |B1y7Rc-Zz) (:text |ws-send!)
                          |b $ %{} :Leaf (:at 1695058358100) (:by |B1y7Rc-Zz) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |main!)
              |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"release")
              |w $ %{} :Expr (:at 1657800381518) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657800381916) (:by |B1y7Rc-Zz) (:text |if)
                  |b $ %{} :Leaf (:at 1657800384323) (:by |B1y7Rc-Zz) (:text |config/dev?)
                  |h $ %{} :Expr (:at 1657800385226) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657800390491) (:by |B1y7Rc-Zz) (:text |load-console-formatter!)
              |x $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render-app!)
              |y $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |connect!)
              |yT $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*store)
                  |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:changes)
                  |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |store)
                          |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |prev)
                      |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render-app!)
              |yj $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*states)
                  |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:changes)
                  |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |states)
                          |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |prev)
                      |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render-app!)
              |yr $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |on-page-touch)
                  |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |if)
                          |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695977046092) (:by |B1y7Rc-Zz) (:text |=)
                              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |@*store)
                              |n $ %{} :Expr (:at 1695977047500) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695977047933) (:by |B1y7Rc-Zz) (:text |::)
                                  |b $ %{} :Leaf (:at 1695977049840) (:by |B1y7Rc-Zz) (:text |:offline)
                          |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |connect!)
              |yt $ %{} :Expr (:at 1695976948004) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695976948004) (:by |B1y7Rc-Zz) (:text |visibility-heartbeat)
                  |b $ %{} :Expr (:at 1695976948004) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695976948004) (:by |B1y7Rc-Zz) (:text |fn)
                      |b $ %{} :Expr (:at 1695976948004) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |h $ %{} :Expr (:at 1695976950601) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695976950601) (:by |B1y7Rc-Zz) (:text |if)
                          |b $ %{} :Expr (:at 1695976950601) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695976950601) (:by |B1y7Rc-Zz) (:text |map?)
                              |b $ %{} :Leaf (:at 1695976950601) (:by |B1y7Rc-Zz) (:text |@*store)
                          |h $ %{} :Expr (:at 1695976950601) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695976950601) (:by |B1y7Rc-Zz) (:text |ws-send!)
                              |b $ %{} :Expr (:at 1695976950601) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695976950601) (:by |B1y7Rc-Zz) (:text |::)
                                  |b $ %{} :Leaf (:at 1695976950601) (:by |B1y7Rc-Zz) (:text |:effect/ping)
              |yv $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"App started!")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |mount-target)
              |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |j $ %{} :Leaf (:at 1701878222969) (:by |B1y7Rc-Zz) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\".app")
        |on-server-data $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |on-server-data)
              |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |data)
              |w $ %{} :Expr (:at 1695058391696) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695058393312) (:by |B1y7Rc-Zz) (:text |tag-match)
                  |b $ %{} :Leaf (:at 1695058394863) (:by |B1y7Rc-Zz) (:text |data)
                  |h $ %{} :Expr (:at 1695058395199) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058395367) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058397674) (:by |B1y7Rc-Zz) (:text |:patch)
                          |b $ %{} :Leaf (:at 1695058399545) (:by |B1y7Rc-Zz) (:text |changes)
                      |b $ %{} :Expr (:at 1695058401988) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058404333) (:by |B1y7Rc-Zz) (:text |do)
                          |h $ %{} :Expr (:at 1695058401988) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695058401988) (:by |B1y7Rc-Zz) (:text |when)
                              |b $ %{} :Leaf (:at 1695058401988) (:by |B1y7Rc-Zz) (:text |config/dev?)
                              |h $ %{} :Expr (:at 1695058401988) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695058401988) (:by |B1y7Rc-Zz) (:text |js/console.log)
                                  |b $ %{} :Leaf (:at 1695058401988) (:by |B1y7Rc-Zz) (:text "|\"Changes")
                                  |h $ %{} :Leaf (:at 1695058401988) (:by |B1y7Rc-Zz) (:text |changes)
                          |l $ %{} :Expr (:at 1695058401988) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695058401988) (:by |B1y7Rc-Zz) (:text |reset!)
                              |b $ %{} :Leaf (:at 1695058401988) (:by |B1y7Rc-Zz) (:text |*store)
                              |h $ %{} :Expr (:at 1695058401988) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695058401988) (:by |B1y7Rc-Zz) (:text |patch-twig)
                                  |b $ %{} :Leaf (:at 1695058401988) (:by |B1y7Rc-Zz) (:text |@*store)
                                  |h $ %{} :Leaf (:at 1695058401988) (:by |B1y7Rc-Zz) (:text |changes)
                  |l $ %{} :Expr (:at 1695976965391) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695976965391) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695976965391) (:by |B1y7Rc-Zz) (:text |:effect/pong)
                      |b $ %{} :Leaf (:at 1695976965391) (:by |B1y7Rc-Zz) (:text |:ok)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |reload!)
              |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |or)
                      |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |client-errors)
                      |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |server-errors)
                  |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |hud!)
                      |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"error")
                      |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |client-errors)
                          |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |&newline)
                          |v $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |server-errors)
                  |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |do)
                      |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |hud!)
                          |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"inactive")
                          |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |nil)
                      |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*store)
                          |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:changes)
                      |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*states)
                          |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:changes)
                      |x $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |clear-cache!)
                      |y $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |yT $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*store)
                          |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:changes)
                          |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |store)
                                  |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |prev)
                              |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |yj $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |*states)
                          |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:changes)
                          |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |states)
                                  |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |prev)
                              |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |yr $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"Code updated.")
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render-app!)
              |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render!)
                  |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |mount-target)
                  |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |comp-container)
                      |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:states)
                          |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |@*states)
                      |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |@*store)
                  |v $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |dispatch!)
        |simulate-login! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |simulate-login!)
              |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |raw)
                          |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1695058381781) (:by |B1y7Rc-Zz) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |raw)
                      |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |do)
                          |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |println)
                              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"Found storage.")
                          |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |dispatch!)
                              |r $ %{} :Expr (:at 1695058384333) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1695058384901) (:by |B1y7Rc-Zz) (:text |::)
                                  |L $ %{} :Leaf (:at 1695058385256) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                                  |T $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                                      |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |raw)
                      |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |do)
                          |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |println)
                              |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"Found no storage.")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
          :data $ {}
            |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |ns)
            |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |app.client)
            |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:require)
                |j $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |render!)
                        |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |clear-cache!)
                        |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |realize-ssr!)
                |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |respo.cursor)
                    |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |update-states)
                |v $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |app.comp.container)
                    |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |comp-container)
                |x $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |app.schema)
                    |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:as)
                    |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |schema)
                |y $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |app.config)
                    |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:as)
                    |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |config)
                |yT $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |ws-edn.client)
                    |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |ws-connect!)
                        |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |ws-send!)
                |yj $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |recollect.patch)
                    |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |patch-twig)
                |yr $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |cumulo-util.core)
                    |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |on-page-touch)
                        |b $ %{} :Leaf (:at 1695976954064) (:by |B1y7Rc-Zz) (:text |visibility-heartbeat)
                |yv $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"url-parse")
                    |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |url-parse)
                |yx $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |hud!)
                |yy $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |client-errors)
                |yyT $ %{} :Expr (:at 1629913386929) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text "|\"../js-out/calcit.build-errors")
                    |j $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629913386929) (:by |B1y7Rc-Zz) (:text |server-errors)
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
              |v $ %{} :Expr (:at 1695977060901) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1695977064066) (:by |B1y7Rc-Zz) (:text |case-default)
                  |L $ %{} :Leaf (:at 1695977153512) (:by |B1y7Rc-Zz) (:text |store)
                  |T $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |let)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |session)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:session)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657802073146) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657802103002) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                      |j $ %{} :Leaf (:at 1657802104924) (:by |B1y7Rc-Zz) (:text |css/global)
                                      |p $ %{} :Leaf (:at 1657802107280) (:by |B1y7Rc-Zz) (:text |css/fullscreen)
                                      |v $ %{} :Leaf (:at 1657802109123) (:by |B1y7Rc-Zz) (:text |css/column)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1531640824563) (:by |root) (:text |comp-sidebar)
                              |b $ %{} :Expr (:at 1520961748118) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520961750317) (:by |root) (:text |:router)
                                  |j $ %{} :Leaf (:at 1520961751565) (:by |root) (:text |store)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1521219988161) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521737516590) (:by |root) (:text |:numbers)
                                  |j $ %{} :Leaf (:at 1521219990041) (:by |root) (:text |store)
                          |v $ %{} :Expr (:at 1531641022324) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1531641023137) (:by |root) (:text |div)
                              |L $ %{} :Expr (:at 1531641023395) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1531641023742) (:by |root) (:text |{})
                                  |b $ %{} :Expr (:at 1657802118185) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657802120700) (:by |B1y7Rc-Zz) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1657802122115) (:by |B1y7Rc-Zz) (:text |css/flex)
                                  |j $ %{} :Expr (:at 1531641024674) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1531641026255) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1531641037411) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1531641037743) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1531641088880) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1531641092131) (:by |root) (:text |:overflow)
                                              |j $ %{} :Leaf (:at 1531641094027) (:by |root) (:text |:auto)
                                          |r $ %{} :Expr (:at 1551633292179) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1551633320743) (:by |B1y7Rc-Zz) (:text |:height)
                                              |j $ %{} :Leaf (:at 1551633323325) (:by |B1y7Rc-Zz) (:text "|\"100%")
                              |T $ %{} :Expr (:at 1531641055156) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1531641056688) (:by |root) (:text |div)
                                  |L $ %{} :Expr (:at 1531641056911) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1531641057259) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1531641061822) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1531641062528) (:by |root) (:text |:style)
                                          |j $ %{} :Expr (:at 1531641067336) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1531641068156) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1531641068350) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1531641070538) (:by |root) (:text |:margin)
                                                  |j $ %{} :Leaf (:at 1531641073086) (:by |root) (:text "|\"0 auto")
                                              |r $ %{} :Expr (:at 1531641076366) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1531641079692) (:by |root) (:text |:max-width)
                                                  |j $ %{} :Leaf (:at 1531641080825) (:by |root) (:text |800)
                                              |v $ %{} :Expr (:at 1551633286736) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1551633287934) (:by |B1y7Rc-Zz) (:text |:height)
                                                  |j $ %{} :Leaf (:at 1551633289608) (:by |B1y7Rc-Zz) (:text "|\"100%")
                                              |x $ %{} :Expr (:at 1551633371767) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1551633371767) (:by |B1y7Rc-Zz) (:text |:overflow)
                                                  |j $ %{} :Leaf (:at 1551633371767) (:by |B1y7Rc-Zz) (:text |:auto)
                                  |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:logged-in?)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |let)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |router)
                                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:router)
                                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629914297143) (:by |B1y7Rc-Zz) (:text |case-default)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |router)
                                              |n $ %{} :Expr (:at 1629914297831) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629914297831) (:by |B1y7Rc-Zz) (:text |<>)
                                                  |j $ %{} :Leaf (:at 1629914297831) (:by |B1y7Rc-Zz) (:text |router)
                                                  |r $ %{} :Leaf (:at 1629914297831) (:by |B1y7Rc-Zz) (:text |nil)
                                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:profile)
                                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
                                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user)
                                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                                      |r $ %{} :Expr (:at 1545759806833) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1545759806833) (:by |root) (:text |:data)
                                                          |j $ %{} :Leaf (:at 1545759806833) (:by |root) (:text |router)
                                              |t $ %{} :Expr (:at 1520961937753) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520961939270) (:by |root) (:text |:home)
                                                  |j $ %{} :Expr (:at 1520961939578) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1520961941426) (:by |root) (:text |comp-home)
                                                      |j $ %{} :Expr (:at 1584892785641) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1584892787403) (:by |B1y7Rc-Zz) (:text |>>)
                                                          |T $ %{} :Leaf (:at 1584892786693) (:by |B1y7Rc-Zz) (:text |states)
                                                          |j $ %{} :Leaf (:at 1584892789580) (:by |B1y7Rc-Zz) (:text |:home)
                                                      |r $ %{} :Expr (:at 1520962863000) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1520962869013) (:by |root) (:text |:data)
                                                          |j $ %{} :Leaf (:at 1520962869986) (:by |root) (:text |router)
                                              |u $ %{} :Expr (:at 1521044444854) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1521044447898) (:by |root) (:text |:pending)
                                                  |j $ %{} :Expr (:at 1521044448218) (:by |root)
                                                    :data $ {}
                                                      |r $ %{} :Leaf (:at 1521044457285) (:by |root) (:text |comp-pending)
                                                      |v $ %{} :Expr (:at 1584892796701) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1584892797391) (:by |B1y7Rc-Zz) (:text |>>)
                                                          |T $ %{} :Leaf (:at 1521044458191) (:by |root) (:text |states)
                                                          |j $ %{} :Leaf (:at 1584892798166) (:by |B1y7Rc-Zz) (:text |:pending)
                                                      |x $ %{} :Expr (:at 1521044460866) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1521044462403) (:by |root) (:text |:data)
                                                          |j $ %{} :Leaf (:at 1521044463214) (:by |root) (:text |router)
                                              |uT $ %{} :Expr (:at 1521044444854) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1521045499905) (:by |root) (:text |:done)
                                                  |j $ %{} :Expr (:at 1521044448218) (:by |root)
                                                    :data $ {}
                                                      |r $ %{} :Leaf (:at 1521045507199) (:by |root) (:text |comp-done-tasks)
                                                      |v $ %{} :Expr (:at 1584892803506) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1584892804877) (:by |B1y7Rc-Zz) (:text |>>)
                                                          |T $ %{} :Leaf (:at 1521044458191) (:by |root) (:text |states)
                                                          |j $ %{} :Leaf (:at 1584892805612) (:by |B1y7Rc-Zz) (:text |:done)
                                                      |x $ %{} :Expr (:at 1521044460866) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1521044462403) (:by |root) (:text |:data)
                                                          |j $ %{} :Leaf (:at 1521044463214) (:by |root) (:text |router)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                                          |j $ %{} :Expr (:at 1584892813301) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1584892813949) (:by |B1y7Rc-Zz) (:text |>>)
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                                              |j $ %{} :Leaf (:at 1584892816223) (:by |B1y7Rc-Zz) (:text |:login)
                          |y $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536859648923) (:by |root) (:text |comp-messages)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |get-in)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:session)
                                      |r $ %{} :Leaf (:at 1536859678771) (:by |root) (:text |:messages)
                              |r $ %{} :Expr (:at 1536859683487) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536859684863) (:by |root) (:text |{})
                              |v $ %{} :Expr (:at 1536859688576) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536859688986) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1536859689270) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536859691977) (:by |root) (:text |info)
                                      |j $ %{} :Leaf (:at 1536859694304) (:by |root) (:text |d!)
                                  |r $ %{} :Expr (:at 1536859696098) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536859699929) (:by |root) (:text |d!)
                                      |j $ %{} :Leaf (:at 1536859706543) (:by |root) (:text |:session/remove-message)
                                      |r $ %{} :Leaf (:at 1536859708926) (:by |root) (:text |info)
                          |y5 $ %{} :Expr (:at 1524244643320) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524244630699) (:by |root) (:text |comp-status-color)
                              |j $ %{} :Expr (:at 1524244630699) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524244630699) (:by |root) (:text |:color)
                                  |j $ %{} :Leaf (:at 1524244630699) (:by |root) (:text |store)
                          |yD $ %{} :Expr (:at 1524203460848) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1524203461381) (:by |root) (:text |if)
                              |L $ %{} :Leaf (:at 1524203462120) (:by |root) (:text |dev?)
                              |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Store)
                                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                  |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |style-debugger)
                          |yT $ %{} :Expr (:at 1521824338196) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521824374535) (:by |root) (:text |if)
                              |L $ %{} :Leaf (:at 1524203456009) (:by |root) (:text |dev?)
                              |T $ %{} :Expr (:at 1507828710405) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507828712159) (:by |root) (:text |comp-reel)
                                  |j $ %{} :Expr (:at 1507829101137) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507830262253) (:by |root) (:text |:reel-length)
                                      |j $ %{} :Leaf (:at 1507829104010) (:by |root) (:text |store)
                                  |r $ %{} :Expr (:at 1507828721052) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507828722268) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1521824388695) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521824389730) (:by |root) (:text |:bottom)
                                          |j $ %{} :Leaf (:at 1521824397448) (:by |root) (:text |24)
                  |b $ %{} :Expr (:at 1695977066278) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695977068281) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695977068638) (:by |B1y7Rc-Zz) (:text |::)
                          |b $ %{} :Leaf (:at 1695977079892) (:by |B1y7Rc-Zz) (:text |:initial)
                      |b $ %{} :Expr (:at 1695977075843) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695977075843) (:by |B1y7Rc-Zz) (:text |comp-offline)
                          |b $ %{} :Leaf (:at 1695977081802) (:by |B1y7Rc-Zz) (:text |:initial)
                  |h $ %{} :Expr (:at 1695977066278) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695977068281) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695977068638) (:by |B1y7Rc-Zz) (:text |::)
                          |b $ %{} :Leaf (:at 1695977072629) (:by |B1y7Rc-Zz) (:text |:offline)
                      |b $ %{} :Expr (:at 1695977075843) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695977075843) (:by |B1y7Rc-Zz) (:text |comp-offline)
                          |b $ %{} :Leaf (:at 1695977083650) (:by |B1y7Rc-Zz) (:text |:offline)
        |comp-offline $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |defcomp)
              |j $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |comp-offline)
              |r $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695977093515) (:by |B1y7Rc-Zz) (:text |state)
              |v $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |div)
                  |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |{})
                      |b $ %{} :Expr (:at 1657802181532) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657802184553) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |b $ %{} :Expr (:at 1657802188306) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1657802189973) (:by |B1y7Rc-Zz) (:text |str-spaced)
                              |T $ %{} :Leaf (:at 1657802188057) (:by |B1y7Rc-Zz) (:text |css/global)
                              |b $ %{} :Leaf (:at 1657802194077) (:by |B1y7Rc-Zz) (:text |css/fullscreen)
                              |h $ %{} :Leaf (:at 1657802199144) (:by |B1y7Rc-Zz) (:text |css/column-dispersive)
                      |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:style)
                          |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:background-color)
                                  |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:theme)
                                      |j $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |0)
                  |v $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:background-image)
                                      |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |str)
                                          |j $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text "|\"url(")
                                          |r $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:icon)
                                              |j $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |config/site)
                                          |v $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text "|\")")
                                  |r $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:width)
                                      |j $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |128)
                                  |v $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |128)
                                  |x $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:background-size)
                                      |j $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:contain)
                  |x $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:pointer)
                                  |r $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:line-height)
                                      |j $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text "|\"32px")
                          |r $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:on-click)
                              |j $ %{} :Expr (:at 1584892868540) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1584892869137) (:by |B1y7Rc-Zz) (:text |fn)
                                  |L $ %{} :Expr (:at 1584892869441) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584892870306) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1584892870971) (:by |B1y7Rc-Zz) (:text |d!)
                                  |T $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584892867923) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:effect/connect)
                                      |r $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |nil)
                      |r $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |<>)
                          |j $ %{} :Expr (:at 1695977095194) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1695977096265) (:by |B1y7Rc-Zz) (:text |if)
                              |L $ %{} :Expr (:at 1695977096873) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695977096982) (:by |B1y7Rc-Zz) (:text |=)
                                  |b $ %{} :Leaf (:at 1695977097374) (:by |B1y7Rc-Zz) (:text |state)
                                  |h $ %{} :Leaf (:at 1695977099121) (:by |B1y7Rc-Zz) (:text |:offline)
                              |P $ %{} :Leaf (:at 1695977107507) (:by |B1y7Rc-Zz) (:text "|\"Socket broken, click to retry")
                              |T $ %{} :Leaf (:at 1695977114554) (:by |B1y7Rc-Zz) (:text ||Loading...)
                          |r $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:font-family)
                                  |j $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                              |r $ %{} :Expr (:at 1535566471371) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |:font-size)
                                  |j $ %{} :Leaf (:at 1535566471371) (:by |B1y7Rc-Zz) (:text |24)
        |comp-status-color $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1524244630699) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1524244632254) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1524244630699) (:by |root) (:text |comp-status-color)
              |n $ %{} :Expr (:at 1524244633411) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524244635434) (:by |root) (:text |color)
              |r $ %{} :Expr (:at 1524244630699) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524244630699) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1524244630699) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524244630699) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1657802141589) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657802144069) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1657802147591) (:by |B1y7Rc-Zz) (:text |css-status-color)
                      |j $ %{} :Expr (:at 1524244630699) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524244630699) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1524244630699) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524244630699) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1524244630699) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524244630699) (:by |root) (:text |:background-color)
                                  |j $ %{} :Leaf (:at 1524244639818) (:by |root) (:text |color)
        |css-status-color $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657802148006) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657802149352) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1657802148006) (:by |B1y7Rc-Zz) (:text |css-status-color)
              |h $ %{} :Expr (:at 1657802148006) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657802150532) (:by |B1y7Rc-Zz) (:text |{})
                  |b $ %{} :Expr (:at 1657802150875) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657802152662) (:by |B1y7Rc-Zz) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1657802153525) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |{})
                          |h $ %{} :Expr (:at 1657802153525) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:height)
                              |b $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |16)
                          |l $ %{} :Expr (:at 1657802153525) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:width)
                              |b $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |16)
                          |o $ %{} :Expr (:at 1657802153525) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:position)
                              |b $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:absolute)
                          |q $ %{} :Expr (:at 1657802153525) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text "|\"8px")
                          |s $ %{} :Expr (:at 1657802153525) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:top)
                              |b $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |8)
                          |t $ %{} :Expr (:at 1657802153525) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:right)
                              |b $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |8)
                          |u $ %{} :Expr (:at 1657802153525) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1657802153525) (:by |B1y7Rc-Zz) (:text "|\"300ms")
        |style-body $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |style-body)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:padding)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||8px 16px")
        |style-debugger $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |style-debugger)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:bottom)
                      |j $ %{} :Leaf (:at 1521824154262) (:by |root) (:text |8)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520874997303) (:by |root) (:text |:right)
                      |j $ %{} :Leaf (:at 1521824157464) (:by |root) (:text |8)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:max-width)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||100%)
                  |x $ %{} :Expr (:at 1521824146203) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521824147943) (:by |root) (:text |:margin)
                      |j $ %{} :Leaf (:at 1521824148344) (:by |root) (:text |0)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.container)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547378489) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |u $ %{} :Expr (:at 1657802086348) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657802088252) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657802088679) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657802089260) (:by |B1y7Rc-Zz) (:text |css)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1542535126511) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |xT $ %{} :Leaf (:at 1584892776945) (:by |B1y7Rc-Zz) (:text |>>)
                        |y $ %{} :Leaf (:at 1507815955483) (:by |root) (:text |button)
                |xT $ %{} :Expr (:at 1657802091520) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657802095203) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657802096718) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657802096976) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657802098442) (:by |B1y7Rc-Zz) (:text |defstyle)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                |yD $ %{} :Expr (:at 1507816109319) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507816117447) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507816112686) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507816113982) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507816114704) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1520874727426) (:by |root) (:text |app.comp.sidebar)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1520874729636) (:by |root) (:text |comp-sidebar)
                |yj $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.profile)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
                |yr $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.login)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                |yv $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1536859637834) (:by |root) (:text |respo-message.comp.messages)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1536859640755) (:by |root) (:text |comp-messages)
                |yx $ %{} :Expr (:at 1507828725931) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1543512890577) (:by |B1y7Rc-Zz) (:text |cumulo-reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507828731528) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507828731735) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507828733743) (:by |root) (:text |comp-reel)
                |yy $ %{} :Expr (:at 1520961943756) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1520961948227) (:by |root) (:text |app.comp.home)
                    |r $ %{} :Leaf (:at 1520961949112) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1520961949314) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1520961950910) (:by |root) (:text |comp-home)
                |yyT $ %{} :Expr (:at 1520961943756) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1521044472658) (:by |root) (:text |app.comp.pending)
                    |r $ %{} :Leaf (:at 1520961949112) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1520961949314) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521044476147) (:by |root) (:text |comp-pending)
                |yyj $ %{} :Expr (:at 1520961943756) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1521045515082) (:by |root) (:text |app.comp.done-tasks)
                    |r $ %{} :Leaf (:at 1520961949112) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1520961949314) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521045518102) (:by |root) (:text |comp-done-tasks)
                |yyr $ %{} :Expr (:at 1524203444768) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1543513094104) (:by |B1y7Rc-Zz) (:text |app.config)
                    |r $ %{} :Leaf (:at 1524203451000) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1524203451191) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1524203452407) (:by |root) (:text |dev?)
                |yyv $ %{} :Expr (:at 1535566481033) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1535566482662) (:by |B1y7Rc-Zz) (:text |app.config)
                    |r $ %{} :Leaf (:at 1535566485217) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1535566485973) (:by |B1y7Rc-Zz) (:text |config)
    |app.comp.done-tasks $ %{} :FileEntry
      :defs $ {}
        |comp-done-task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1524383437936) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1524383442433) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |comp-done-task)
              |n $ %{} :Expr (:at 1524383443947) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1567349802991) (:by |B1y7Rc-Zz) (:text |states)
                  |T $ %{} :Leaf (:at 1524383445178) (:by |root) (:text |task)
                  |j $ %{} :Leaf (:at 1530033253228) (:by |root) (:text |editing?)
              |r $ %{} :Expr (:at 1629914184272) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1629914195564) (:by |B1y7Rc-Zz) (:text |let)
                  |L $ %{} :Expr (:at 1629914195865) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629914196010) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629914199525) (:by |B1y7Rc-Zz) (:text |remove-plugin)
                          |j $ %{} :Expr (:at 1629914199850) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629914205300) (:by |B1y7Rc-Zz) (:text |use-confirm)
                              |j $ %{} :Expr (:at 1629914209006) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629914209508) (:by |B1y7Rc-Zz) (:text |>>)
                                  |j $ %{} :Leaf (:at 1629914210346) (:by |B1y7Rc-Zz) (:text |states)
                                  |r $ %{} :Leaf (:at 1629914211244) (:by |B1y7Rc-Zz) (:text |:remove)
                              |r $ %{} :Expr (:at 1629914215003) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |{})
                                  |r $ %{} :Expr (:at 1629914215003) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |:style)
                                      |j $ %{} :Expr (:at 1629914215003) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1629914215003) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |:cursor)
                                              |j $ %{} :Leaf (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |:pointer)
                                          |r $ %{} :Expr (:at 1629914215003) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |:margin-right)
                                              |j $ %{} :Leaf (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |16)
                                  |v $ %{} :Expr (:at 1629914215003) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629914215003) (:by |B1y7Rc-Zz) (:text |:text)
                                      |j $ %{} :Leaf (:at 1629914215003) (:by |B1y7Rc-Zz) (:text "|\"Remove record forever?")
                  |T $ %{} :Expr (:at 1524383437936) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1524383437936) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1657813437618) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657813439628) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1657813441356) (:by |B1y7Rc-Zz) (:text |css/row)
                          |j $ %{} :Expr (:at 1524383437936) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1524383437936) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1524383437936) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |:margin)
                                      |j $ %{} :Leaf (:at 1524383437936) (:by |root) (:text "||8px 0")
                                  |r $ %{} :Expr (:at 1524383827972) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524383836589) (:by |root) (:text |:align-items)
                                      |j $ %{} :Leaf (:at 1524383838016) (:by |root) (:text |:center)
                      |r $ %{} :Expr (:at 1524383437936) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1530032824033) (:by |root) (:text |span)
                          |j $ %{} :Expr (:at 1524383437936) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1524383437936) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657813460503) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1657813464097) (:by |B1y7Rc-Zz) (:text |css-done-content)
                              |r $ %{} :Expr (:at 1530032825630) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1530032829298) (:by |root) (:text |:inner-text)
                                  |j $ %{} :Expr (:at 1524383437936) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |:text)
                                      |j $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |task)
                      |x $ %{} :Expr (:at 1530033255236) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1530033256106) (:by |root) (:text |when)
                          |L $ %{} :Leaf (:at 1530033256582) (:by |root) (:text |editing?)
                          |P $ %{} :Expr (:at 1629914234122) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629914236051) (:by |B1y7Rc-Zz) (:text |comp-icon)
                              |j $ %{} :Leaf (:at 1629914234122) (:by |B1y7Rc-Zz) (:text |:trash)
                              |r $ %{} :Expr (:at 1629914237146) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629914239254) (:by |B1y7Rc-Zz) (:text |&{})
                                  |L $ %{} :Leaf (:at 1629914242336) (:by |B1y7Rc-Zz) (:text |:font-size)
                                  |T $ %{} :Leaf (:at 1629914234122) (:by |B1y7Rc-Zz) (:text |14)
                                  |j $ %{} :Leaf (:at 1629914244137) (:by |B1y7Rc-Zz) (:text |:color)
                                  |r $ %{} :Expr (:at 1629914248708) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629914248708) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |j $ %{} :Leaf (:at 1629914248708) (:by |B1y7Rc-Zz) (:text |0)
                                      |r $ %{} :Leaf (:at 1629914248708) (:by |B1y7Rc-Zz) (:text |0)
                                      |v $ %{} :Leaf (:at 1629914248708) (:by |B1y7Rc-Zz) (:text |50)
                                  |v $ %{} :Leaf (:at 1629914254138) (:by |B1y7Rc-Zz) (:text |:cursor)
                                  |x $ %{} :Leaf (:at 1629914255923) (:by |B1y7Rc-Zz) (:text |:pointer)
                              |v $ %{} :Expr (:at 1629914260275) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629914260816) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629914261036) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629914262015) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1629914262668) (:by |B1y7Rc-Zz) (:text |d!)
                                  |r $ %{} :Expr (:at 1629914265337) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629914266707) (:by |B1y7Rc-Zz) (:text |.show)
                                      |j $ %{} :Leaf (:at 1629914271154) (:by |B1y7Rc-Zz) (:text |remove-plugin)
                                      |r $ %{} :Leaf (:at 1629914273130) (:by |B1y7Rc-Zz) (:text |d!)
                                      |v $ %{} :Expr (:at 1629914274120) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629914275247) (:by |B1y7Rc-Zz) (:text |fn)
                                          |j $ %{} :Expr (:at 1629914276067) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                          |r $ %{} :Expr (:at 1629914280576) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629914280576) (:by |B1y7Rc-Zz) (:text |d!)
                                              |j $ %{} :Leaf (:at 1629914280576) (:by |B1y7Rc-Zz) (:text |:task/remove-done)
                                              |r $ %{} :Expr (:at 1629914280576) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629914280576) (:by |B1y7Rc-Zz) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1629914280576) (:by |B1y7Rc-Zz) (:text |task)
                      |yT $ %{} :Expr (:at 1530033257650) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1530033258596) (:by |root) (:text |when)
                          |L $ %{} :Leaf (:at 1530033259378) (:by |root) (:text |editing?)
                          |T $ %{} :Expr (:at 1524383437936) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1524383437936) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1524383437936) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1524383437936) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1524383437936) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |:cursor)
                                              |j $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |:pointer)
                                  |r $ %{} :Expr (:at 1524383437936) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1584893073144) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1584893073702) (:by |B1y7Rc-Zz) (:text |fn)
                                          |L $ %{} :Expr (:at 1584893074033) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584893074528) (:by |B1y7Rc-Zz) (:text |e)
                                              |j $ %{} :Leaf (:at 1584893075172) (:by |B1y7Rc-Zz) (:text |d!)
                                          |T $ %{} :Expr (:at 1524383437936) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584893072665) (:by |B1y7Rc-Zz) (:text |d!)
                                              |j $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |:task/move-task)
                                              |r $ %{} :Expr (:at 1524383437936) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1524383437936) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |:id)
                                                      |j $ %{} :Expr (:at 1524383437936) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |:id)
                                                          |j $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |task)
                                                  |r $ %{} :Expr (:at 1524383437936) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |:from)
                                                      |j $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |:done-tasks)
                                                  |v $ %{} :Expr (:at 1524383437936) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |:to)
                                                      |j $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |:working-tasks)
                              |r $ %{} :Expr (:at 1524383437936) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1558366478263) (:by |B1y7Rc-Zz) (:text |comp-i)
                                  |j $ %{} :Leaf (:at 1558366479485) (:by |B1y7Rc-Zz) (:text |:repeat)
                                  |r $ %{} :Leaf (:at 1558366481194) (:by |B1y7Rc-Zz) (:text |14)
                                  |v $ %{} :Expr (:at 1558366482182) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1558366482600) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |j $ %{} :Leaf (:at 1558366483520) (:by |B1y7Rc-Zz) (:text |0)
                                      |r $ %{} :Leaf (:at 1558366484458) (:by |B1y7Rc-Zz) (:text |0)
                                      |v $ %{} :Leaf (:at 1558366484775) (:by |B1y7Rc-Zz) (:text |50)
                      |yj $ %{} :Expr (:at 1629914221312) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629914223520) (:by |B1y7Rc-Zz) (:text |.render)
                          |j $ %{} :Leaf (:at 1629914227048) (:by |B1y7Rc-Zz) (:text |remove-plugin)
        |comp-done-tasks $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521045530725) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521045533135) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1521045530725) (:by |root) (:text |comp-done-tasks)
              |r $ %{} :Expr (:at 1521045530725) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1521045535968) (:by |root) (:text |states)
                  |j $ %{} :Leaf (:at 1521045539997) (:by |root) (:text |router-data)
              |v $ %{} :Expr (:at 1530033032457) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1530033042203) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1530033042489) (:by |root)
                    :data $ {}
                      |D $ %{} :Expr (:at 1584893131244) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584893132277) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1584893132465) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584893133358) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1584893134088) (:by |B1y7Rc-Zz) (:text |states)
                      |T $ %{} :Expr (:at 1530033042634) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1530033043460) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1530033044060) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1530033045120) (:by |root) (:text |or)
                              |j $ %{} :Expr (:at 1530033045404) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1530033045977) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1530033048533) (:by |root) (:text |states)
                              |r $ %{} :Expr (:at 1530033050267) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1530033050938) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1530033051236) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1530033052671) (:by |root) (:text |:editing?)
                                      |j $ %{} :Leaf (:at 1530033053317) (:by |root) (:text |false)
                      |j $ %{} :Expr (:at 1531642768209) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584893119067) (:by |B1y7Rc-Zz) (:text |day-cursor)
                          |j $ %{} :Expr (:at 1531642773095) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1531642777227) (:by |root) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1531642778826) (:by |root) (:text |router-data)
                      |r $ %{} :Expr (:at 1531642779733) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1531642781287) (:by |root) (:text |months)
                          |j $ %{} :Expr (:at 1531642782107) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1531642783749) (:by |root) (:text |:months)
                              |j $ %{} :Leaf (:at 1531642786022) (:by |root) (:text |router-data)
                      |v $ %{} :Expr (:at 1531642803823) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1531642804556) (:by |root) (:text |tasks)
                          |j $ %{} :Expr (:at 1531642805225) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1531642808530) (:by |root) (:text |:tasks)
                              |j $ %{} :Leaf (:at 1531642806751) (:by |root) (:text |router-data)
                  |T $ %{} :Expr (:at 1524383217559) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521045540886) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1521045541162) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521045541506) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1657813130644) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657813132884) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Expr (:at 1657813133803) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657813135932) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1657813137582) (:by |B1y7Rc-Zz) (:text |css/flex)
                                  |h $ %{} :Leaf (:at 1657813139047) (:by |B1y7Rc-Zz) (:text |css/row)
                          |j $ %{} :Expr (:at 1521045581680) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521045582849) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1521045583125) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521045583534) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1521045583880) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521045589938) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1551633546079) (:by |B1y7Rc-Zz) (:text "|\"16px 8px")
                                  |r $ %{} :Expr (:at 1551633176577) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1551633179504) (:by |B1y7Rc-Zz) (:text |:overflow)
                                      |j $ %{} :Leaf (:at 1551633180628) (:by |B1y7Rc-Zz) (:text |:auto)
                                  |v $ %{} :Expr (:at 1551633383402) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1551633384886) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1551633387005) (:by |B1y7Rc-Zz) (:text "|\"100%")
                      |v $ %{} :Expr (:at 1531642535246) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1531642550829) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1531642551111) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1531642552367) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1657813148698) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657813151903) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1657813155256) (:by |B1y7Rc-Zz) (:text |css/font-fancy)
                              |j $ %{} :Expr (:at 1657813147299) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1531642615790) (:by |root) (:text |:style)
                                  |b $ %{} :Expr (:at 1531642612097) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1531642612662) (:by |root) (:text |{})
                                      |T $ %{} :Expr (:at 1531642613083) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1531642606655) (:by |root) (:text |:overflow)
                                          |j $ %{} :Leaf (:at 1531642607705) (:by |root) (:text |:auto)
                                      |v $ %{} :Expr (:at 1531673173681) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1531673175694) (:by |root) (:text |:width)
                                          |j $ %{} :Leaf (:at 1551633512125) (:by |B1y7Rc-Zz) (:text |80)
                                      |x $ %{} :Expr (:at 1536820469637) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536820473893) (:by |B1y7Rc-Zz) (:text |:flex-shrink)
                                          |j $ %{} :Leaf (:at 1536820474679) (:by |B1y7Rc-Zz) (:text |0)
                          |r $ %{} :Expr (:at 1531642553148) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629914120064) (:by |B1y7Rc-Zz) (:text |->)
                              |f $ %{} :Leaf (:at 1531642791032) (:by |root) (:text |months)
                              |l $ %{} :Expr (:at 1533230186481) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1533230185835) (:by |B1y7Rc-Zz) (:text |sort)
                                  |j $ %{} :Expr (:at 1533230188906) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1533230190991) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1533230192194) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1533230191489) (:by |B1y7Rc-Zz) (:text |x)
                                          |j $ %{} :Leaf (:at 1533230192768) (:by |B1y7Rc-Zz) (:text |y)
                                      |r $ %{} :Expr (:at 1533230193549) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629914123106) (:by |B1y7Rc-Zz) (:text |&compare)
                                          |r $ %{} :Leaf (:at 1533230207235) (:by |B1y7Rc-Zz) (:text |y)
                                          |v $ %{} :Leaf (:at 1533230231209) (:by |B1y7Rc-Zz) (:text |x)
                              |r $ %{} :Expr (:at 1531642566612) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1531642567533) (:by |root) (:text |map)
                                  |j $ %{} :Expr (:at 1531642568135) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1531642572530) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1531642572798) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1531642575563) (:by |root) (:text |year-month)
                                      |r $ %{} :Expr (:at 1531642576654) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1531642577371) (:by |root) (:text |[])
                                          |j $ %{} :Leaf (:at 1531642577790) (:by |root) (:text |year-month)
                                          |r $ %{} :Expr (:at 1531642578232) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1531642580991) (:by |root) (:text |div)
                                              |j $ %{} :Expr (:at 1531642581213) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1531642581560) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1531642728237) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1531642730045) (:by |root) (:text |:style)
                                                      |j $ %{} :Expr (:at 1531642736472) (:by |root)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1531642737532) (:by |root) (:text |merge)
                                                          |T $ %{} :Expr (:at 1531642730352) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1531642730915) (:by |root) (:text |{})
                                                              |j $ %{} :Expr (:at 1531642731786) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1531642733199) (:by |root) (:text |:cursor)
                                                                  |j $ %{} :Leaf (:at 1531642734543) (:by |root) (:text |:pointer)
                                                              |r $ %{} :Expr (:at 1531642917644) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1531642919347) (:by |root) (:text |:padding)
                                                                  |j $ %{} :Leaf (:at 1551633533148) (:by |B1y7Rc-Zz) (:text "|\"0 8px")
                                                          |j $ %{} :Expr (:at 1531642739209) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1531642749577) (:by |root) (:text |when)
                                                              |j $ %{} :Expr (:at 1531642740721) (:by |root)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1531642742068) (:by |root) (:text |=)
                                                                  |T $ %{} :Leaf (:at 1584893123380) (:by |B1y7Rc-Zz) (:text |day-cursor)
                                                                  |j $ %{} :Leaf (:at 1531642746997) (:by |root) (:text |year-month)
                                                              |r $ %{} :Expr (:at 1531642750372) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1531642751125) (:by |root) (:text |{})
                                                                  |j $ %{} :Expr (:at 1531642751637) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1531642761808) (:by |root) (:text |:background-color)
                                                                      |j $ %{} :Expr (:at 1531642934330) (:by |root)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1531642934939) (:by |root) (:text |hsl)
                                                                          |j $ %{} :Leaf (:at 1531642935673) (:by |root) (:text |0)
                                                                          |r $ %{} :Leaf (:at 1531642936037) (:by |root) (:text |0)
                                                                          |v $ %{} :Leaf (:at 1531673264530) (:by |root) (:text |94)
                                                  |n $ %{} :Expr (:at 1531673257183) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1531673259651) (:by |root) (:text |:class-name)
                                                      |j $ %{} :Leaf (:at 1531673285999) (:by |root) (:text "|\"item")
                                                  |r $ %{} :Expr (:at 1531642825155) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1531642827279) (:by |root) (:text |:on-click)
                                                      |j $ %{} :Expr (:at 1531642827571) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1531642828493) (:by |root) (:text |fn)
                                                          |j $ %{} :Expr (:at 1531642828798) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1531642829002) (:by |root) (:text |e)
                                                              |j $ %{} :Leaf (:at 1531642831016) (:by |root) (:text |d!)
                                                          |r $ %{} :Expr (:at 1531642832179) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1531642833025) (:by |root) (:text |d!)
                                                              |j $ %{} :Leaf (:at 1531642835860) (:by |root) (:text |:router/change)
                                                              |r $ %{} :Expr (:at 1531642836076) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1531642836477) (:by |root) (:text |{})
                                                                  |j $ %{} :Expr (:at 1531642836671) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1531642837306) (:by |root) (:text |:name)
                                                                      |j $ %{} :Leaf (:at 1531642848803) (:by |root) (:text |:done)
                                                                  |r $ %{} :Expr (:at 1531642849562) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1531642850316) (:by |root) (:text |:data)
                                                                      |j $ %{} :Leaf (:at 1531642853674) (:by |root) (:text |year-month)
                                              |r $ %{} :Expr (:at 1531642582196) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1531642582537) (:by |root) (:text |<>)
                                                  |j $ %{} :Leaf (:at 1531642582993) (:by |root) (:text |year-month)
                      |w $ %{} :Expr (:at 1531642590470) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1531642596555) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1551633564703) (:by |B1y7Rc-Zz) (:text |8)
                          |r $ %{} :Leaf (:at 1531642598161) (:by |root) (:text |nil)
                      |wT $ %{} :Expr (:at 1531643620427) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1531643621504) (:by |root) (:text |div)
                          |L $ %{} :Expr (:at 1531643621734) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1531643622118) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1657813189675) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657813191651) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1657813193165) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1657813195597) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                      |T $ %{} :Leaf (:at 1657813192929) (:by |B1y7Rc-Zz) (:text |css/flex)
                                      |b $ %{} :Leaf (:at 1657813199041) (:by |B1y7Rc-Zz) (:text |css/column)
                              |j $ %{} :Expr (:at 1531643622627) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1531643625491) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1536820477455) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536820479878) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1536820481114) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536820482372) (:by |B1y7Rc-Zz) (:text |:overflow)
                                          |j $ %{} :Leaf (:at 1536820483120) (:by |B1y7Rc-Zz) (:text |:auto)
                                      |r $ %{} :Expr (:at 1551633162462) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1551633166231) (:by |B1y7Rc-Zz) (:text |:height)
                                          |j $ %{} :Leaf (:at 1551633168982) (:by |B1y7Rc-Zz) (:text "|\"100%")
                                      |v $ %{} :Expr (:at 1551633396440) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1551633399730) (:by |B1y7Rc-Zz) (:text |:padding-bottom)
                                          |j $ %{} :Leaf (:at 1551633614268) (:by |B1y7Rc-Zz) (:text |120)
                          |P $ %{} :Expr (:at 1521045551385) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521045552182) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1521045552483) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521045552817) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1521132750884) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1521132751621) (:by |root) (:text |<>)
                                  |T $ %{} :Expr (:at 1521045553893) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521132750289) (:by |root) (:text |str)
                                      |j $ %{} :Leaf (:at 1531643563714) (:by |root) (:text "||Done Tasks(")
                                      |n $ %{} :Expr (:at 1531643568035) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1531643568693) (:by |root) (:text |count)
                                          |j $ %{} :Leaf (:at 1531643569494) (:by |root) (:text |tasks)
                                      |r $ %{} :Leaf (:at 1531643566177) (:by |root) (:text "|\")")
                                  |j $ %{} :Expr (:at 1521045597163) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521045597485) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1521045597703) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521045599185) (:by |root) (:text |:font-size)
                                          |j $ %{} :Leaf (:at 1521045599945) (:by |root) (:text |24)
                                      |r $ %{} :Expr (:at 1521045600706) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521045603448) (:by |root) (:text |:font-family)
                                          |j $ %{} :Leaf (:at 1521045625668) (:by |root) (:text |ui/font-fancy)
                                      |v $ %{} :Expr (:at 1521045612555) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521045618980) (:by |root) (:text |:font-weight)
                                          |j $ %{} :Leaf (:at 1521045619562) (:by |root) (:text |100)
                              |t $ %{} :Expr (:at 1530033364160) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1530033364940) (:by |root) (:text |=<)
                                  |b $ %{} :Leaf (:at 1530033367472) (:by |root) (:text |16)
                                  |j $ %{} :Leaf (:at 1530033365718) (:by |root) (:text |nil)
                              |v $ %{} :Expr (:at 1530033145124) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1530033148215) (:by |root) (:text |if)
                                  |j $ %{} :Expr (:at 1530033149128) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1530033151343) (:by |root) (:text |:editing?)
                                      |j $ %{} :Leaf (:at 1530033152482) (:by |root) (:text |state)
                                  |r $ %{} :Expr (:at 1567349753202) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1567349753202) (:by |B1y7Rc-Zz) (:text |a)
                                      |j $ %{} :Expr (:at 1567349753202) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1567349753202) (:by |B1y7Rc-Zz) (:text |{})
                                          |b $ %{} :Expr (:at 1657813206694) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657813209217) (:by |B1y7Rc-Zz) (:text |:class-name)
                                              |b $ %{} :Leaf (:at 1657813210966) (:by |B1y7Rc-Zz) (:text |css/link)
                                          |r $ %{} :Expr (:at 1567349753202) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1567349753202) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                              |j $ %{} :Leaf (:at 1567349753202) (:by |B1y7Rc-Zz) (:text "|\"Done")
                                          |v $ %{} :Expr (:at 1567349753202) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1567349753202) (:by |B1y7Rc-Zz) (:text |:on-click)
                                              |j $ %{} :Expr (:at 1584893150468) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1584893150982) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |L $ %{} :Expr (:at 1584893151178) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584893151472) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1584893152303) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |T $ %{} :Expr (:at 1567349753202) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584893148649) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |b $ %{} :Leaf (:at 1584893149889) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |j $ %{} :Expr (:at 1567349753202) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1567349753202) (:by |B1y7Rc-Zz) (:text |update)
                                                          |j $ %{} :Leaf (:at 1567349753202) (:by |B1y7Rc-Zz) (:text |state)
                                                          |r $ %{} :Leaf (:at 1567349753202) (:by |B1y7Rc-Zz) (:text |:editing?)
                                                          |v $ %{} :Leaf (:at 1567349753202) (:by |B1y7Rc-Zz) (:text |not)
                                  |v $ %{} :Expr (:at 1530033155428) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1530033378207) (:by |root) (:text |a)
                                      |j $ %{} :Expr (:at 1530033157937) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1530033158309) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1657813215003) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657813215003) (:by |B1y7Rc-Zz) (:text |:class-name)
                                              |b $ %{} :Leaf (:at 1657813215003) (:by |B1y7Rc-Zz) (:text |css/link)
                                          |r $ %{} :Expr (:at 1530033170079) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1530033173693) (:by |root) (:text |:inner-text)
                                              |j $ %{} :Leaf (:at 1530033270166) (:by |root) (:text "|\"Edit")
                                          |v $ %{} :Expr (:at 1530033217977) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1530033219848) (:by |root) (:text |:on-click)
                                              |j $ %{} :Expr (:at 1584893156210) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1584893156720) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |L $ %{} :Expr (:at 1584893156982) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584893157395) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1584893157906) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |T $ %{} :Expr (:at 1530033199674) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584893154850) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |b $ %{} :Leaf (:at 1584893155846) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |j $ %{} :Expr (:at 1530033205932) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1530033208939) (:by |root) (:text |update)
                                                          |j $ %{} :Leaf (:at 1530033209530) (:by |root) (:text |state)
                                                          |r $ %{} :Leaf (:at 1530033212256) (:by |root) (:text |:editing?)
                                                          |v $ %{} :Leaf (:at 1530033214332) (:by |root) (:text |not)
                          |T $ %{} :Expr (:at 1524383219785) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1524383220461) (:by |root) (:text |let)
                              |L $ %{} :Expr (:at 1524383220810) (:by |root)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1524383220971) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524383227199) (:by |root) (:text |tasks-by-time)
                                      |j $ %{} :Expr (:at 1524382730905) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629915623032) (:by |B1y7Rc-Zz) (:text |->)
                                          |b $ %{} :Leaf (:at 1531642801208) (:by |root) (:text |tasks)
                                          |f $ %{} :Expr (:at 1629915624555) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629915653113) (:by |B1y7Rc-Zz) (:text |.to-list)
                                          |j $ %{} :Expr (:at 1629915627160) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629915635316) (:by |B1y7Rc-Zz) (:text |map)
                                              |j $ %{} :Leaf (:at 1629915635940) (:by |B1y7Rc-Zz) (:text |last)
                                          |r $ %{} :Expr (:at 1524382744775) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524382755369) (:by |root) (:text |group-by)
                                              |j $ %{} :Expr (:at 1524382763391) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524382765141) (:by |root) (:text |fn)
                                                  |j $ %{} :Expr (:at 1524382765831) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524382768723) (:by |root) (:text |task)
                                                  |v $ %{} :Expr (:at 1524382951916) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1529162222704) (:by |root) (:text |.format)
                                                      |j $ %{} :Expr (:at 1529162223644) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1529162225353) (:by |root) (:text |dayjs)
                                                          |j $ %{} :Expr (:at 1524383102245) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524383147149) (:by |root) (:text |:time)
                                                              |j $ %{} :Leaf (:at 1524383107299) (:by |root) (:text |task)
                                                      |r $ %{} :Leaf (:at 1531642999064) (:by |root) (:text "|\"DD")
                              |T $ %{} :Expr (:at 1524383209919) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1524383212868) (:by |root) (:text |list->)
                                  |L $ %{} :Expr (:at 1524383213221) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524383214164) (:by |root) (:text |{})
                                  |T $ %{} :Expr (:at 1524383236549) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629914131844) (:by |B1y7Rc-Zz) (:text |->)
                                      |L $ %{} :Leaf (:at 1524383239903) (:by |root) (:text |tasks-by-time)
                                      |M $ %{} :Expr (:at 1629915673424) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629915679112) (:by |B1y7Rc-Zz) (:text |.to-list)
                                      |N $ %{} :Expr (:at 1524383325832) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629914133418) (:by |B1y7Rc-Zz) (:text |.sort)
                                          |j $ %{} :Expr (:at 1524383337684) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524383338009) (:by |root) (:text |fn)
                                              |j $ %{} :Expr (:at 1524383338340) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524383348895) (:by |root) (:text |pair-a)
                                                  |j $ %{} :Leaf (:at 1524383352096) (:by |root) (:text |pair-b)
                                              |r $ %{} :Expr (:at 1524383353110) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629914137060) (:by |B1y7Rc-Zz) (:text |&compare)
                                                  |j $ %{} :Expr (:at 1524383361827) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524383400016) (:by |root) (:text |first)
                                                      |j $ %{} :Leaf (:at 1524383366972) (:by |root) (:text |pair-b)
                                                  |r $ %{} :Expr (:at 1524383361827) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524383405477) (:by |root) (:text |first)
                                                      |j $ %{} :Leaf (:at 1524383370782) (:by |root) (:text |pair-a)
                                      |P $ %{} :Expr (:at 1524383240825) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629914142356) (:by |B1y7Rc-Zz) (:text |.map-pair)
                                          |j $ %{} :Expr (:at 1524383242646) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524383243512) (:by |root) (:text |fn)
                                              |j $ %{} :Expr (:at 1524383243842) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524383250209) (:by |root) (:text |date)
                                                  |j $ %{} :Leaf (:at 1524383251459) (:by |root) (:text |tasks)
                                              |r $ %{} :Expr (:at 1524383254583) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524383255098) (:by |root) (:text |[])
                                                  |j $ %{} :Leaf (:at 1524383258567) (:by |root) (:text |date)
                                                  |r $ %{} :Expr (:at 1524383258941) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524383259676) (:by |root) (:text |div)
                                                      |j $ %{} :Expr (:at 1524383259879) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1524383260211) (:by |root) (:text |{})
                                                      |r $ %{} :Expr (:at 1524383484156) (:by |root)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1524383484800) (:by |root) (:text |div)
                                                          |L $ %{} :Expr (:at 1524383486340) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524383486682) (:by |root) (:text |{})
                                                              |b $ %{} :Expr (:at 1657813221768) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1657813223740) (:by |B1y7Rc-Zz) (:text |:class-name)
                                                                  |b $ %{} :Leaf (:at 1657813226058) (:by |B1y7Rc-Zz) (:text |css/font-fancy)
                                                              |j $ %{} :Expr (:at 1524383486924) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1524383487652) (:by |root) (:text |:style)
                                                                  |j $ %{} :Expr (:at 1524383487844) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1524383488170) (:by |root) (:text |{})
                                                                      |r $ %{} :Expr (:at 1524383496232) (:by |root)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1524383497551) (:by |root) (:text |:font-size)
                                                                          |j $ %{} :Leaf (:at 1524383499001) (:by |root) (:text |16)
                                                                      |v $ %{} :Expr (:at 1524383504201) (:by |root)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1524383506556) (:by |root) (:text |:font-weight)
                                                                          |j $ %{} :Leaf (:at 1524383508068) (:by |root) (:text |100)
                                                                      |x $ %{} :Expr (:at 1524383510227) (:by |root)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1524383511762) (:by |root) (:text |:margin-top)
                                                                          |j $ %{} :Leaf (:at 1524383512599) (:by |root) (:text |16)
                                                                      |y $ %{} :Expr (:at 1524383525531) (:by |root)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1524383528557) (:by |root) (:text |:line-height)
                                                                          |j $ %{} :Leaf (:at 1524383530563) (:by |root) (:text "|\"24px")
                                                          |T $ %{} :Expr (:at 1524383261799) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524383262334) (:by |root) (:text |<>)
                                                              |j $ %{} :Leaf (:at 1524383263730) (:by |root) (:text |date)
                                                      |v $ %{} :Expr (:at 1521045542477) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1521045631182) (:by |root) (:text |list->)
                                                          |j $ %{} :Expr (:at 1521045632825) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1521045633133) (:by |root) (:text |{})
                                                          |r $ %{} :Expr (:at 1521045634512) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629914147995) (:by |B1y7Rc-Zz) (:text |->)
                                                              |j $ %{} :Leaf (:at 1524383273083) (:by |root) (:text |tasks)
                                                              |n $ %{} :Expr (:at 1531643301089) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629914149406) (:by |B1y7Rc-Zz) (:text |.sort-by)
                                                                  |j $ %{} :Expr (:at 1531643316211) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1531643316591) (:by |root) (:text |fn)
                                                                      |j $ %{} :Expr (:at 1531643318704) (:by |root)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1531643326884) (:by |root) (:text |task)
                                                                      |r $ %{} :Expr (:at 1531643335875) (:by |root)
                                                                        :data $ {}
                                                                          |D $ %{} :Leaf (:at 1629914152029) (:by |B1y7Rc-Zz) (:text |negate)
                                                                          |T $ %{} :Expr (:at 1531643328882) (:by |root)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1531643330804) (:by |root) (:text |:time)
                                                                              |j $ %{} :Leaf (:at 1531643331320) (:by |root) (:text |task)
                                                              |r $ %{} :Expr (:at 1521045639284) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1524383275650) (:by |root) (:text |map)
                                                                  |j $ %{} :Expr (:at 1521045641688) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1521045642020) (:by |root) (:text |fn)
                                                                      |j $ %{} :Expr (:at 1521045642617) (:by |root)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1521045643127) (:by |root) (:text |task)
                                                                      |r $ %{} :Expr (:at 1524383277519) (:by |root)
                                                                        :data $ {}
                                                                          |D $ %{} :Leaf (:at 1524383280227) (:by |root) (:text |[])
                                                                          |L $ %{} :Expr (:at 1524383288382) (:by |root)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1524383287736) (:by |root) (:text |:id)
                                                                              |j $ %{} :Leaf (:at 1524383289072) (:by |root) (:text |task)
                                                                          |T $ %{} :Expr (:at 1524383453280) (:by |root)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1524383437936) (:by |root) (:text |comp-done-task)
                                                                              |b $ %{} :Expr (:at 1584893280130) (:by |B1y7Rc-Zz)
                                                                                :data $ {}
                                                                                  |D $ %{} :Leaf (:at 1584893280806) (:by |B1y7Rc-Zz) (:text |>>)
                                                                                  |T $ %{} :Leaf (:at 1567349799379) (:by |B1y7Rc-Zz) (:text |states)
                                                                                  |j $ %{} :Expr (:at 1584893281561) (:by |B1y7Rc-Zz)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1584893281561) (:by |B1y7Rc-Zz) (:text |:id)
                                                                                      |j $ %{} :Leaf (:at 1584893281561) (:by |B1y7Rc-Zz) (:text |task)
                                                                              |j $ %{} :Leaf (:at 1524383454454) (:by |root) (:text |task)
                                                                              |r $ %{} :Expr (:at 1530033243058) (:by |root)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1530033245105) (:by |root) (:text |:editing?)
                                                                                  |j $ %{} :Leaf (:at 1530033246749) (:by |root) (:text |state)
                      |x $ %{} :Expr (:at 1521952317163) (:by |root)
                        :data $ {}
                          |5 $ %{} :Leaf (:at 1530033126906) (:by |root) (:text |;)
                          |D $ %{} :Leaf (:at 1521952317696) (:by |root) (:text |if)
                          |L $ %{} :Expr (:at 1521952327204) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521952355503) (:by |root) (:text |pos?)
                              |T $ %{} :Expr (:at 1521952324470) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521952325244) (:by |root) (:text |count)
                                  |j $ %{} :Leaf (:at 1521952326871) (:by |root) (:text |router-data)
                          |T $ %{} :Expr (:at 1521219775866) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521219776597) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1521219776829) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521219778157) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1521219778742) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521219780910) (:by |root) (:text |button)
                                  |j $ %{} :Expr (:at 1521219781202) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521219781583) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1521219786210) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657813233921) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |j $ %{} :Leaf (:at 1657813236275) (:by |B1y7Rc-Zz) (:text |css/button)
                                      |r $ %{} :Expr (:at 1521219798581) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521219800190) (:by |root) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1584893164066) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1584893164606) (:by |B1y7Rc-Zz) (:text |fn)
                                              |L $ %{} :Expr (:at 1584893165112) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893165748) (:by |B1y7Rc-Zz) (:text |e)
                                                  |j $ %{} :Leaf (:at 1584893166603) (:by |B1y7Rc-Zz) (:text |d!)
                                              |T $ %{} :Expr (:at 1521219801015) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893163678) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1521219810033) (:by |root) (:text |:task/clear-done)
                                                  |r $ %{} :Leaf (:at 1521219811368) (:by |root) (:text |nil)
                                  |r $ %{} :Expr (:at 1521219782329) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521219783180) (:by |root) (:text |<>)
                                      |j $ %{} :Leaf (:at 1521952313362) (:by |root) (:text ||Clear)
                      |y $ %{} :Expr (:at 1524383545621) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524383546876) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1524383549159) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1524383550997) (:by |root) (:text |240)
        |css-done-content $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657813465939) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657813467484) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1657813465939) (:by |B1y7Rc-Zz) (:text |css-done-content)
              |h $ %{} :Expr (:at 1657813465939) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657813468562) (:by |B1y7Rc-Zz) (:text |{})
                  |b $ %{} :Expr (:at 1657813468816) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657813470077) (:by |B1y7Rc-Zz) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1657813470519) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1657813470519) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:background-color)
                              |b $ %{} :Expr (:at 1657813470519) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |0)
                                  |h $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |0)
                                  |l $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |94)
                          |h $ %{} :Expr (:at 1657813470519) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:padding)
                              |b $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text "||0 8px")
                          |l $ %{} :Expr (:at 1657813470519) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:height)
                              |b $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |32)
                          |o $ %{} :Expr (:at 1657813470519) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:line-height)
                              |b $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text "|\"32px")
                          |q $ %{} :Expr (:at 1657813470519) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:margin-right)
                              |b $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |16)
                          |s $ %{} :Expr (:at 1657813470519) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:display)
                              |b $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:inline-block)
                          |t $ %{} :Expr (:at 1657813470519) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:overflow)
                              |b $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:auto)
                          |u $ %{} :Expr (:at 1657813470519) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:white-space)
                              |b $ %{} :Leaf (:at 1657813470519) (:by |B1y7Rc-Zz) (:text |:nowrap)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1521045523784) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1521045523784) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1521045523784) (:by |root) (:text |app.comp.done-tasks)
            |r $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629914105071) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547378489) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |u $ %{} :Expr (:at 1657813159662) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657813162259) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657813162829) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657813163691) (:by |B1y7Rc-Zz) (:text |css)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1542535136705) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |y $ %{} :Leaf (:at 1507815955483) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1521044610764) (:by |root) (:text |list->)
                        |yf $ %{} :Leaf (:at 1584893174890) (:by |B1y7Rc-Zz) (:text |>>)
                        |yr $ %{} :Leaf (:at 1521044740074) (:by |root) (:text |input)
                        |yv $ %{} :Leaf (:at 1530033383090) (:by |root) (:text |a)
                        |yx $ %{} :Leaf (:at 1531641984803) (:by |root) (:text |pre)
                |xT $ %{} :Expr (:at 1657813165012) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657813170851) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657813172633) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657813173056) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657813174882) (:by |B1y7Rc-Zz) (:text |defstyle)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                |yD $ %{} :Expr (:at 1507816109319) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507816117447) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507816112686) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507816113982) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507816114704) (:by |root) (:text |=<)
                |yy $ %{} :Expr (:at 1521044620023) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1521044624327) (:by |root) (:text |respo.util.list)
                    |r $ %{} :Leaf (:at 1521044625168) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521044625428) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521044632401) (:by |root) (:text |map-val)
                |yyT $ %{} :Expr (:at 1521044807446) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1558366436776) (:by |B1y7Rc-Zz) (:text |feather.core)
                    |r $ %{} :Leaf (:at 1521044812982) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521044813741) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1558366438838) (:by |B1y7Rc-Zz) (:text |comp-i)
                        |r $ %{} :Leaf (:at 1629914375727) (:by |B1y7Rc-Zz) (:text |comp-icon)
                |yyb $ %{} :Expr (:at 1567349763921) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1572971300855) (:by |B1y7Rc-Zz) (:text |respo-alerts.core)
                    |r $ %{} :Leaf (:at 1567349763921) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1567349763921) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1629914181321) (:by |B1y7Rc-Zz) (:text |use-confirm)
                |yyj $ %{} :Expr (:at 1531643021557) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1531643024369) (:by |root) (:text "|\"dayjs")
                    |r $ %{} :Leaf (:at 1629914389805) (:by |B1y7Rc-Zz) (:text |:default)
                    |v $ %{} :Leaf (:at 1531643025971) (:by |root) (:text |dayjs)
    |app.comp.home $ %{} :FileEntry
      :defs $ {}
        |comp-home $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1520961835912) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1520961839567) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1520961835912) (:by |root) (:text |comp-home)
              |r $ %{} :Expr (:at 1520961835912) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1520962145653) (:by |root) (:text |states)
                  |j $ %{} :Leaf (:at 1520962875220) (:by |root) (:text |tasks)
              |v $ %{} :Expr (:at 1520962147769) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1520962150211) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1520962150475) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1520962150622) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520962151232) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1520962151549) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520962151851) (:by |root) (:text |or)
                              |j $ %{} :Expr (:at 1520962152486) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520962153151) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1520962153926) (:by |root) (:text |states)
                              |r $ %{} :Expr (:at 1520962154455) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520962155421) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1520962155711) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520962159349) (:by |root) (:text |:draft)
                                      |j $ %{} :Leaf (:at 1520962160529) (:by |root) (:text ||)
                      |j $ %{} :Expr (:at 1629913660176) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913680291) (:by |B1y7Rc-Zz) (:text |create-plugin)
                          |j $ %{} :Expr (:at 1629913680578) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913684225) (:by |B1y7Rc-Zz) (:text |use-prompt)
                              |j $ %{} :Expr (:at 1629913685440) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913686863) (:by |B1y7Rc-Zz) (:text |>>)
                                  |j $ %{} :Leaf (:at 1629913687722) (:by |B1y7Rc-Zz) (:text |states)
                                  |r $ %{} :Leaf (:at 1629913690454) (:by |B1y7Rc-Zz) (:text |:create)
                              |r $ %{} :Expr (:at 1629913691153) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913691864) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629913694586) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913694586) (:by |B1y7Rc-Zz) (:text |:text)
                                      |j $ %{} :Leaf (:at 1629913694586) (:by |B1y7Rc-Zz) (:text "|\"New task:")
                                  |r $ %{} :Expr (:at 1629913699901) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913699901) (:by |B1y7Rc-Zz) (:text |:initial)
                                      |j $ %{} :Leaf (:at 1629913699901) (:by |B1y7Rc-Zz) (:text "|\"")
                  |T $ %{} :Expr (:at 1520961855376) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520961856733) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1520961856998) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520961858407) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1657812955849) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657812958508) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1657812960944) (:by |B1y7Rc-Zz) (:text |css/flex)
                          |j $ %{} :Expr (:at 1520961858798) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520961860311) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1520961960961) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520961961299) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1520961961571) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520961963085) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1520961977424) (:by |root) (:text |16)
                                  |r $ %{} :Expr (:at 1522254466117) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1522254468360) (:by |root) (:text |:overflow)
                                      |j $ %{} :Leaf (:at 1522254470125) (:by |root) (:text |:auto)
                      |n $ %{} :Expr (:at 1521564492092) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521564492868) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1521564493386) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521564494600) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1521564519831) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521564520443) (:by |root) (:text |<>)
                              |T $ %{} :Expr (:at 1521564495228) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521564519507) (:by |root) (:text |str)
                                  |j $ %{} :Leaf (:at 1543726063394) (:by |B1y7Rc-Zz) (:text "||Working(")
                                  |n $ %{} :Expr (:at 1521564506066) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521564506745) (:by |root) (:text |count)
                                      |j $ %{} :Leaf (:at 1521564508573) (:by |root) (:text |tasks)
                                  |r $ %{} :Leaf (:at 1521564504936) (:by |root) (:text "||)")
                              |j $ %{} :Expr (:at 1521045597163) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521045597485) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1521045597703) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521045599185) (:by |root) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1521045599945) (:by |root) (:text |24)
                                  |r $ %{} :Expr (:at 1521045600706) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521045603448) (:by |root) (:text |:font-family)
                                      |j $ %{} :Leaf (:at 1543726067861) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                                  |v $ %{} :Expr (:at 1521045612555) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521045618980) (:by |root) (:text |:font-weight)
                                      |j $ %{} :Leaf (:at 1521045619562) (:by |root) (:text |100)
                          |t $ %{} :Expr (:at 1530462345865) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1530462346350) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1530462347296) (:by |root) (:text |16)
                              |r $ %{} :Leaf (:at 1530462348018) (:by |root) (:text |nil)
                          |u $ %{} :Expr (:at 1629913713584) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629914646418) (:by |B1y7Rc-Zz) (:text |comp-icon)
                              |j $ %{} :Leaf (:at 1629913713584) (:by |B1y7Rc-Zz) (:text |:plus)
                              |r $ %{} :Expr (:at 1629913716150) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629913718023) (:by |B1y7Rc-Zz) (:text |&{})
                                  |L $ %{} :Leaf (:at 1629913721046) (:by |B1y7Rc-Zz) (:text |:font-size)
                                  |T $ %{} :Leaf (:at 1629913713584) (:by |B1y7Rc-Zz) (:text |14)
                                  |j $ %{} :Leaf (:at 1629913722652) (:by |B1y7Rc-Zz) (:text |:color)
                                  |r $ %{} :Expr (:at 1629913724870) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913724870) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |j $ %{} :Leaf (:at 1629913724870) (:by |B1y7Rc-Zz) (:text |0)
                                      |r $ %{} :Leaf (:at 1629913724870) (:by |B1y7Rc-Zz) (:text |0)
                                      |v $ %{} :Leaf (:at 1629913724870) (:by |B1y7Rc-Zz) (:text |50)
                                  |v $ %{} :Leaf (:at 1629913727976) (:by |B1y7Rc-Zz) (:text |:cursor)
                                  |x $ %{} :Leaf (:at 1629913729016) (:by |B1y7Rc-Zz) (:text |:ponter)
                              |v $ %{} :Expr (:at 1629913733966) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913734261) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629913734682) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913736510) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1629913737378) (:by |B1y7Rc-Zz) (:text |d!)
                                  |r $ %{} :Expr (:at 1629913738164) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913741223) (:by |B1y7Rc-Zz) (:text |.show)
                                      |j $ %{} :Leaf (:at 1629913743278) (:by |B1y7Rc-Zz) (:text |create-plugin)
                                      |r $ %{} :Leaf (:at 1629913744218) (:by |B1y7Rc-Zz) (:text |d!)
                                      |v $ %{} :Expr (:at 1629913744845) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913745069) (:by |B1y7Rc-Zz) (:text |fn)
                                          |b $ %{} :Expr (:at 1629913791590) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629913793076) (:by |B1y7Rc-Zz) (:text |result)
                                          |j $ %{} :Expr (:at 1629913751405) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629913751405) (:by |B1y7Rc-Zz) (:text |when)
                                              |j $ %{} :Expr (:at 1629913751405) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629913751405) (:by |B1y7Rc-Zz) (:text |not)
                                                  |j $ %{} :Expr (:at 1629913751405) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629913787082) (:by |B1y7Rc-Zz) (:text |.blank?)
                                                      |j $ %{} :Leaf (:at 1629913751405) (:by |B1y7Rc-Zz) (:text |result)
                                              |r $ %{} :Expr (:at 1629913751405) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629913751405) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1629913751405) (:by |B1y7Rc-Zz) (:text |:task/create)
                                                  |r $ %{} :Leaf (:at 1629913751405) (:by |B1y7Rc-Zz) (:text |result)
                      |r $ %{} :Expr (:at 1521562877504) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1521562878130) (:by |root) (:text |if)
                          |L $ %{} :Expr (:at 1521562878395) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521562883506) (:by |root) (:text |empty?)
                              |j $ %{} :Leaf (:at 1521562887423) (:by |root) (:text |tasks)
                          |T $ %{} :Expr (:at 1520961864138) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520961864708) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1520961864952) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520961865249) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1521219383008) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657812996597) (:by |B1y7Rc-Zz) (:text |:css)
                                      |j $ %{} :Leaf (:at 1657812997979) (:by |B1y7Rc-Zz) (:text |css/row-parted)
                              |v $ %{} :Expr (:at 1520961870285) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520961872619) (:by |root) (:text |button)
                                  |j $ %{} :Expr (:at 1520961873560) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520961873895) (:by |root) (:text |{})
                                      |b $ %{} :Expr (:at 1520961888972) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657813000966) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |j $ %{} :Leaf (:at 1657813003362) (:by |B1y7Rc-Zz) (:text |css/button)
                                      |j $ %{} :Expr (:at 1520961878060) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520961879556) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1520961887343) (:by |root) (:text ||Add)
                                      |r $ %{} :Expr (:at 1520962231861) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520962235960) (:by |root) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1520962236218) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520962236496) (:by |root) (:text |fn)
                                              |j $ %{} :Expr (:at 1520962236832) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520962237030) (:by |root) (:text |e)
                                                  |j $ %{} :Leaf (:at 1520962237548) (:by |root) (:text |d!)
                                              |r $ %{} :Expr (:at 1629915758256) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |.show)
                                                  |j $ %{} :Leaf (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |create-plugin)
                                                  |r $ %{} :Leaf (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |v $ %{} :Expr (:at 1629915758256) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |fn)
                                                      |j $ %{} :Expr (:at 1629915758256) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |result)
                                                      |r $ %{} :Expr (:at 1629915758256) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |when)
                                                          |j $ %{} :Expr (:at 1629915758256) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |not)
                                                              |j $ %{} :Expr (:at 1629915758256) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |.blank?)
                                                                  |j $ %{} :Leaf (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |result)
                                                          |r $ %{} :Expr (:at 1629915758256) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |d!)
                                                              |j $ %{} :Leaf (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |:task/create)
                                                              |r $ %{} :Leaf (:at 1629915758256) (:by |B1y7Rc-Zz) (:text |result)
                      |v $ %{} :Expr (:at 1520961907595) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520962880625) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1520961908277) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520961908593) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1521218958891) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521218959797) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1521218960448) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521218960790) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1521218961075) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521218962584) (:by |root) (:text |:position)
                                          |j $ %{} :Leaf (:at 1521218964555) (:by |root) (:text |:relative)
                                      |r $ %{} :Expr (:at 1521219270187) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521219271583) (:by |root) (:text |:height)
                                          |j $ %{} :Expr (:at 1521219272640) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1521219273100) (:by |root) (:text |+)
                                              |j $ %{} :Leaf (:at 1521219276695) (:by |root) (:text |8)
                                              |r $ %{} :Expr (:at 1521219290942) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1521219291756) (:by |root) (:text |*)
                                                  |L $ %{} :Leaf (:at 1521219294017) (:by |root) (:text |48)
                                                  |T $ %{} :Expr (:at 1521219277011) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1521219278276) (:by |root) (:text |count)
                                                      |j $ %{} :Leaf (:at 1521219287506) (:by |root) (:text |tasks)
                          |r $ %{} :Expr (:at 1520962882028) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913802170) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Leaf (:at 1520962886863) (:by |root) (:text |tasks)
                              |l $ %{} :Expr (:at 1629914717751) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629914719075) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |n $ %{} :Expr (:at 1521132549341) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913805077) (:by |B1y7Rc-Zz) (:text |.sort-by)
                                  |j $ %{} :Expr (:at 1521132554428) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521132554882) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1521132555403) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913814394) (:by |B1y7Rc-Zz) (:text |pair)
                                      |r $ %{} :Expr (:at 1521132566926) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629913811442) (:by |B1y7Rc-Zz) (:text |negate)
                                          |T $ %{} :Expr (:at 1521132562706) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1521132565229) (:by |root) (:text |:time)
                                              |j $ %{} :Expr (:at 1629913807137) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1629913808024) (:by |B1y7Rc-Zz) (:text |last)
                                                  |T $ %{} :Leaf (:at 1629913809342) (:by |B1y7Rc-Zz) (:text |pair)
                              |r $ %{} :Expr (:at 1520962887236) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913816150) (:by |B1y7Rc-Zz) (:text |.map-indexed)
                                  |j $ %{} :Expr (:at 1520962893720) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1520962894007) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1520962894248) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1521218902246) (:by |root) (:text |idx)
                                          |b $ %{} :Leaf (:at 1629913833174) (:by |B1y7Rc-Zz) (:text |pair)
                                      |v $ %{} :Expr (:at 1629913822982) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629913824322) (:by |B1y7Rc-Zz) (:text |let)
                                          |L $ %{} :Expr (:at 1629913824638) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1629913824981) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629913825331) (:by |B1y7Rc-Zz) (:text |task)
                                                  |j $ %{} :Expr (:at 1629913826382) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1629913829923) (:by |B1y7Rc-Zz) (:text |last)
                                                      |T $ %{} :Leaf (:at 1629913827021) (:by |B1y7Rc-Zz) (:text |pair)
                                          |T $ %{} :Expr (:at 1521218903641) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1521218904603) (:by |root) (:text |[])
                                              |L $ %{} :Expr (:at 1521218905177) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1521218907022) (:by |root) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1521218907577) (:by |root) (:text |task)
                                              |T $ %{} :Expr (:at 1521043074144) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1521043088403) (:by |root) (:text |comp-task)
                                                  |b $ %{} :Expr (:at 1584892898442) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1584892899034) (:by |B1y7Rc-Zz) (:text |>>)
                                                      |T $ %{} :Leaf (:at 1521133152851) (:by |root) (:text |states)
                                                      |j $ %{} :Expr (:at 1584892899975) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1584892899975) (:by |B1y7Rc-Zz) (:text |:id)
                                                          |j $ %{} :Leaf (:at 1584892899975) (:by |B1y7Rc-Zz) (:text |task)
                                                  |j $ %{} :Leaf (:at 1521043090794) (:by |root) (:text |task)
                                                  |r $ %{} :Leaf (:at 1521218913675) (:by |root) (:text |idx)
                              |v $ %{} :Expr (:at 1521219089486) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913837509) (:by |B1y7Rc-Zz) (:text |.sort-by)
                                  |j $ %{} :Leaf (:at 1521219092568) (:by |root) (:text |first)
                      |x $ %{} :Expr (:at 1629913707417) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913708213) (:by |B1y7Rc-Zz) (:text |.render)
                          |j $ %{} :Leaf (:at 1629913708798) (:by |B1y7Rc-Zz) (:text |create-plugin)
        |comp-task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521043093402) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521043096319) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1521043093402) (:by |root) (:text |comp-task)
              |r $ %{} :Expr (:at 1521043093402) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1521133157064) (:by |root) (:text |states)
                  |T $ %{} :Leaf (:at 1521043098155) (:by |root) (:text |task)
                  |j $ %{} :Leaf (:at 1521218917999) (:by |root) (:text |idx)
              |v $ %{} :Expr (:at 1536775381601) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1536775383200) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1536775383429) (:by |root)
                    :data $ {}
                      |D $ %{} :Expr (:at 1584892905123) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584892905960) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1584892906163) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1584892908379) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |T $ %{} :Leaf (:at 1584892906936) (:by |B1y7Rc-Zz) (:text |states)
                      |T $ %{} :Expr (:at 1536775383616) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536775384248) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1536775385570) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536775386285) (:by |root) (:text |or)
                              |j $ %{} :Expr (:at 1536775386536) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536775387248) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1536775388758) (:by |root) (:text |states)
                              |r $ %{} :Expr (:at 1536775389681) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536775391306) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1536775391686) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536775395552) (:by |root) (:text |:show-menu?)
                                      |j $ %{} :Leaf (:at 1536775396771) (:by |root) (:text |false)
                                  |r $ %{} :Expr (:at 1536775398248) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536775400346) (:by |root) (:text |:show-editor?)
                                      |j $ %{} :Leaf (:at 1536775401657) (:by |root) (:text |false)
                                  |x $ %{} :Expr (:at 1536819683844) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536819688243) (:by |B1y7Rc-Zz) (:text |:task-draft)
                                      |j $ %{} :Expr (:at 1536819695429) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536819696534) (:by |B1y7Rc-Zz) (:text |:text)
                                          |j $ %{} :Leaf (:at 1536819698674) (:by |B1y7Rc-Zz) (:text |task)
                      |b $ %{} :Expr (:at 1586594648651) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1586594677847) (:by |B1y7Rc-Zz) (:text |remove-plugin)
                          |j $ %{} :Expr (:at 1586594678565) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1586594685328) (:by |B1y7Rc-Zz) (:text |use-confirm)
                              |j $ %{} :Expr (:at 1586594686367) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1586594686819) (:by |B1y7Rc-Zz) (:text |>>)
                                  |j $ %{} :Leaf (:at 1586594687824) (:by |B1y7Rc-Zz) (:text |states)
                                  |r $ %{} :Leaf (:at 1586594690940) (:by |B1y7Rc-Zz) (:text |:remove)
                              |r $ %{} :Expr (:at 1586594691818) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1586594692180) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1586594692429) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1586594694859) (:by |B1y7Rc-Zz) (:text |:text)
                                      |j $ %{} :Leaf (:at 1586594704508) (:by |B1y7Rc-Zz) (:text "|\"Sure to remove?")
                      |f $ %{} :Expr (:at 1586595023741) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1586595028343) (:by |B1y7Rc-Zz) (:text |update-plugin)
                          |j $ %{} :Expr (:at 1586595028681) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1586595030399) (:by |B1y7Rc-Zz) (:text |use-prompt)
                              |j $ %{} :Expr (:at 1586595030858) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1586595031367) (:by |B1y7Rc-Zz) (:text |>>)
                                  |j $ %{} :Leaf (:at 1586595032226) (:by |B1y7Rc-Zz) (:text |states)
                                  |r $ %{} :Leaf (:at 1586595038791) (:by |B1y7Rc-Zz) (:text |:update)
                              |r $ %{} :Expr (:at 1586595039582) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1586595040119) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1586595040377) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1586595041835) (:by |B1y7Rc-Zz) (:text |:text)
                                      |j $ %{} :Leaf (:at 1586595050814) (:by |B1y7Rc-Zz) (:text "|\"Edit task:")
                                  |r $ %{} :Expr (:at 1586595051993) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1586595056505) (:by |B1y7Rc-Zz) (:text |:initial)
                                      |j $ %{} :Expr (:at 1586595056979) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1586595061164) (:by |B1y7Rc-Zz) (:text |:text)
                                          |j $ %{} :Leaf (:at 1586595063032) (:by |B1y7Rc-Zz) (:text |task)
                                  |v $ %{} :Expr (:at 1586595065230) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1586595069031) (:by |B1y7Rc-Zz) (:text |:button-text)
                                      |j $ %{} :Leaf (:at 1586595074677) (:by |B1y7Rc-Zz) (:text "|\"Edit")
                  |T $ %{} :Expr (:at 1521043098678) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521043101248) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1521043101491) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521043101832) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1657813020241) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657813025107) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Expr (:at 1657813026144) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657813028098) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                  |b $ %{} :Leaf (:at 1657813029167) (:by |B1y7Rc-Zz) (:text |css/row)
                                  |h $ %{} :Leaf (:at 1657813056258) (:by |B1y7Rc-Zz) (:text |css-item)
                          |j $ %{} :Expr (:at 1521043124574) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521043126115) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1521043503680) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1521043505869) (:by |root) (:text |merge)
                                  |j $ %{} :Expr (:at 1536777853355) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536777854236) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1536777855459) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536777855459) (:by |root) (:text |:top)
                                          |j $ %{} :Expr (:at 1536777855459) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1536777855459) (:by |root) (:text |+)
                                              |j $ %{} :Leaf (:at 1536777855459) (:by |root) (:text |8)
                                              |r $ %{} :Expr (:at 1536777855459) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1536777855459) (:by |root) (:text |*)
                                                  |j $ %{} :Leaf (:at 1536777855459) (:by |root) (:text |idx)
                                                  |r $ %{} :Leaf (:at 1536777855459) (:by |root) (:text |48)
                                  |r $ %{} :Expr (:at 1536946548128) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536946564383) (:by |root) (:text |when)
                                      |j $ %{} :Expr (:at 1536946557076) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1536946557620) (:by |root) (:text |or)
                                          |L $ %{} :Expr (:at 1536946661406) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1536946661406) (:by |root) (:text |:show-menu?)
                                              |j $ %{} :Leaf (:at 1536946669436) (:by |root) (:text |state)
                                          |T $ %{} :Expr (:at 1536946550628) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1536946553609) (:by |root) (:text |:show-editor?)
                                              |j $ %{} :Leaf (:at 1536946556597) (:by |root) (:text |state)
                                      |r $ %{} :Expr (:at 1536946564951) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536946565400) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1536946565761) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1536946580313) (:by |root) (:text |:outline)
                                              |j $ %{} :Expr (:at 1536946581397) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1536946582705) (:by |root) (:text |str)
                                                  |j $ %{} :Leaf (:at 1536946642524) (:by |root) (:text "|\"2px solid ")
                                                  |r $ %{} :Expr (:at 1536946588566) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1536946592992) (:by |root) (:text |hsl)
                                                      |j $ %{} :Leaf (:at 1536946594380) (:by |root) (:text |240)
                                                      |r $ %{} :Leaf (:at 1536946595036) (:by |root) (:text |80)
                                                      |v $ %{} :Leaf (:at 1536946687904) (:by |root) (:text |86)
                          |r $ %{} :Expr (:at 1536777711256) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536777711256) (:by |root) (:text |:on-click)
                              |j $ %{} :Expr (:at 1536777711256) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536777711256) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1536777711256) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536777711256) (:by |root) (:text |e)
                                      |j $ %{} :Leaf (:at 1536777711256) (:by |root) (:text |d!)
                                  |r $ %{} :Expr (:at 1536777711256) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1584892921623) (:by |B1y7Rc-Zz) (:text |d!)
                                      |b $ %{} :Leaf (:at 1584892923795) (:by |B1y7Rc-Zz) (:text |cursor)
                                      |j $ %{} :Expr (:at 1536777711256) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536777711256) (:by |root) (:text |assoc)
                                          |j $ %{} :Leaf (:at 1536777711256) (:by |root) (:text |state)
                                          |r $ %{} :Leaf (:at 1536777711256) (:by |root) (:text |:show-menu?)
                                          |v $ %{} :Leaf (:at 1536777711256) (:by |root) (:text |true)
                          |v $ %{} :Expr (:at 1566926211718) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1566926214338) (:by |B1y7Rc-Zz) (:text |:draggable)
                              |j $ %{} :Leaf (:at 1566926215393) (:by |B1y7Rc-Zz) (:text |true)
                          |x $ %{} :Expr (:at 1566926226813) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1566926228061) (:by |B1y7Rc-Zz) (:text |:on-dragend)
                              |j $ %{} :Expr (:at 1566926258569) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1566926259073) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1566926259402) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1566926259583) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1566926260272) (:by |B1y7Rc-Zz) (:text |d!)
                                  |r $ %{} :Expr (:at 1566926262042) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1566926262042) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1566926262042) (:by |B1y7Rc-Zz) (:text |:task/touch-working)
                                      |r $ %{} :Expr (:at 1566926262042) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1566926262042) (:by |B1y7Rc-Zz) (:text |:id)
                                          |j $ %{} :Leaf (:at 1566926262042) (:by |B1y7Rc-Zz) (:text |task)
                      |l $ %{} :Expr (:at 1536777732498) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536777699391) (:by |root) (:text |<>)
                          |j $ %{} :Expr (:at 1536777699391) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536777699391) (:by |root) (:text |:text)
                              |j $ %{} :Leaf (:at 1536777699391) (:by |root) (:text |task)
                          |r $ %{} :Expr (:at 1585589454286) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1585589456414) (:by |B1y7Rc-Zz) (:text |merge)
                              |L $ %{} :Leaf (:at 1585589459441) (:by |B1y7Rc-Zz) (:text |ui/expand)
                              |T $ %{} :Expr (:at 1543727211628) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1543727212284) (:by |B1y7Rc-Zz) (:text |{})
                                  |T $ %{} :Expr (:at 1543727210974) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1543727210974) (:by |B1y7Rc-Zz) (:text |:text-overflow)
                                      |j $ %{} :Leaf (:at 1543727210974) (:by |B1y7Rc-Zz) (:text |:ellipsis)
                                  |j $ %{} :Expr (:at 1543727222192) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1543727225194) (:by |B1y7Rc-Zz) (:text |:overflow)
                                      |j $ %{} :Leaf (:at 1543727226907) (:by |B1y7Rc-Zz) (:text |:hidden)
                                  |r $ %{} :Expr (:at 1543727229945) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1543727232346) (:by |B1y7Rc-Zz) (:text |:max-width)
                                      |j $ %{} :Leaf (:at 1543727234634) (:by |B1y7Rc-Zz) (:text "|\"100%")
                      |y $ %{} :Expr (:at 1530462110650) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1530462111113) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1530462449235) (:by |root) (:text |32)
                          |r $ %{} :Leaf (:at 1530462114078) (:by |root) (:text |nil)
                      |yF $ %{} :Expr (:at 1572971695879) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1572971696863) (:by |B1y7Rc-Zz) (:text |comp-modal-menu)
                          |r $ %{} :Expr (:at 1572971703098) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572971703384) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1572971703591) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572971704289) (:by |B1y7Rc-Zz) (:text |:title)
                                  |j $ %{} :Leaf (:at 1572971708746) (:by |B1y7Rc-Zz) (:text "|\"Operations")
                              |r $ %{} :Expr (:at 1572972407100) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572972407100) (:by |B1y7Rc-Zz) (:text |:style)
                                  |j $ %{} :Expr (:at 1572972407100) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1572972407100) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1572972407100) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1572972407100) (:by |B1y7Rc-Zz) (:text |:line-height)
                                          |j $ %{} :Leaf (:at 1572972407100) (:by |B1y7Rc-Zz) (:text "|\"24px")
                              |v $ %{} :Expr (:at 1584893393538) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584893394723) (:by |B1y7Rc-Zz) (:text |:items)
                                  |j $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629914821447) (:by |B1y7Rc-Zz) (:text |&list:concat)
                                      |j $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |if)
                                          |j $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629914437394) (:by |B1y7Rc-Zz) (:text |.!test)
                                              |f $ %{} :Leaf (:at 1629914448340) (:by |B1y7Rc-Zz) (:text |http-pattern)
                                              |r $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:text)
                                                  |j $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |task)
                                          |r $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |[])
                                              |j $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |{})
                                                  |j $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:value)
                                                      |j $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:open)
                                                  |r $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:display)
                                                      |j $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text "|\"Open Link")
                                          |v $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |nil)
                                      |r $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |[])
                                          |j $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:value)
                                                  |j $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:finish)
                                              |r $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:display)
                                                  |j $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text "|\"Finish")
                                          |r $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:value)
                                                  |j $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:edit)
                                              |r $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:display)
                                                  |j $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text "|\"Edit")
                                          |v $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:value)
                                                  |j $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:postpone)
                                              |r $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:display)
                                                  |j $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text "|\"Postpone")
                                          |x $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:value)
                                                  |j $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:touch)
                                              |r $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:display)
                                                  |j $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text "|\"Up")
                                          |y $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:value)
                                                  |j $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:remove)
                                              |r $ %{} :Expr (:at 1584893395188) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text |:display)
                                                  |j $ %{} :Leaf (:at 1584893395188) (:by |B1y7Rc-Zz) (:text "|\"Remove")
                          |u $ %{} :Expr (:at 1584893398561) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584893398561) (:by |B1y7Rc-Zz) (:text |:show-menu?)
                              |j $ %{} :Leaf (:at 1584893398561) (:by |B1y7Rc-Zz) (:text |state)
                          |x $ %{} :Expr (:at 1572971780497) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572971782071) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1572971782455) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584892930771) (:by |B1y7Rc-Zz) (:text |d!)
                              |r $ %{} :Expr (:at 1572971784724) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584892932220) (:by |B1y7Rc-Zz) (:text |d!)
                                  |b $ %{} :Leaf (:at 1584892929220) (:by |B1y7Rc-Zz) (:text |cursor)
                                  |j $ %{} :Expr (:at 1572971788689) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1572971790124) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |j $ %{} :Leaf (:at 1572971793399) (:by |B1y7Rc-Zz) (:text |state)
                                      |r $ %{} :Leaf (:at 1572971793974) (:by |B1y7Rc-Zz) (:text |:show-menu?)
                                      |v $ %{} :Leaf (:at 1572971795173) (:by |B1y7Rc-Zz) (:text |false)
                          |y $ %{} :Expr (:at 1572971796706) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1572971797715) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1572971798246) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1572971887756) (:by |B1y7Rc-Zz) (:text |item)
                                  |j $ %{} :Leaf (:at 1572971891108) (:by |B1y7Rc-Zz) (:text |d!)
                              |v $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |let)
                                  |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |new-state)
                                          |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:show-menu?)
                                              |v $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |false)
                                  |r $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913866516) (:by |B1y7Rc-Zz) (:text |case-default)
                                      |j $ %{} :Expr (:at 1586594815264) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1586594815264) (:by |B1y7Rc-Zz) (:text |:value)
                                          |j $ %{} :Leaf (:at 1586594815264) (:by |B1y7Rc-Zz) (:text |item)
                                      |n $ %{} :Leaf (:at 1629913868047) (:by |B1y7Rc-Zz) (:text |nil)
                                      |r $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:finish)
                                          |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |do)
                                              |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:task/move-task)
                                                  |r $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |{})
                                                      |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:id)
                                                          |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:id)
                                                              |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |task)
                                                      |r $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:from)
                                                          |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:working-tasks)
                                                      |v $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:to)
                                                          |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:done-tasks)
                                              |r $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |r $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |new-state)
                                      |v $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:postpone)
                                          |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |do)
                                              |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:task/move-task)
                                                  |r $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |{})
                                                      |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:id)
                                                          |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:id)
                                                              |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |task)
                                                      |r $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:from)
                                                          |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:working-tasks)
                                                      |v $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:to)
                                                          |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:pending-tasks)
                                              |r $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |r $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |new-state)
                                      |x $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:edit)
                                          |j $ %{} :Expr (:at 1586595089680) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1586595090301) (:by |B1y7Rc-Zz) (:text |do)
                                              |T $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |r $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |new-state)
                                              |j $ %{} :Expr (:at 1586595091140) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629915003595) (:by |B1y7Rc-Zz) (:text |.show)
                                                  |b $ %{} :Leaf (:at 1586595096802) (:by |B1y7Rc-Zz) (:text |update-plugin)
                                                  |j $ %{} :Leaf (:at 1586595098001) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |r $ %{} :Expr (:at 1586595098335) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1586595098633) (:by |B1y7Rc-Zz) (:text |fn)
                                                      |j $ %{} :Expr (:at 1586595098815) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1586595120772) (:by |B1y7Rc-Zz) (:text |text)
                                                      |r $ %{} :Expr (:at 1586595121868) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1586595121868) (:by |B1y7Rc-Zz) (:text |when)
                                                          |j $ %{} :Expr (:at 1586595121868) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1586595121868) (:by |B1y7Rc-Zz) (:text |some?)
                                                              |j $ %{} :Leaf (:at 1586595121868) (:by |B1y7Rc-Zz) (:text |text)
                                                          |v $ %{} :Expr (:at 1586595121868) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1586595121868) (:by |B1y7Rc-Zz) (:text |d!)
                                                              |j $ %{} :Leaf (:at 1586595121868) (:by |B1y7Rc-Zz) (:text |:task/update-text)
                                                              |r $ %{} :Expr (:at 1586595121868) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1586595121868) (:by |B1y7Rc-Zz) (:text |{})
                                                                  |j $ %{} :Expr (:at 1586595121868) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1586595121868) (:by |B1y7Rc-Zz) (:text |:id)
                                                                      |j $ %{} :Expr (:at 1586595121868) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1586595121868) (:by |B1y7Rc-Zz) (:text |:id)
                                                                          |j $ %{} :Leaf (:at 1586595121868) (:by |B1y7Rc-Zz) (:text |task)
                                                                  |r $ %{} :Expr (:at 1586595121868) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1586595121868) (:by |B1y7Rc-Zz) (:text |:text)
                                                                      |j $ %{} :Leaf (:at 1586595121868) (:by |B1y7Rc-Zz) (:text |text)
                                                                  |v $ %{} :Expr (:at 1586595121868) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1586595121868) (:by |B1y7Rc-Zz) (:text |:group)
                                                                      |j $ %{} :Leaf (:at 1586595121868) (:by |B1y7Rc-Zz) (:text |:working-tasks)
                                                                  |x $ %{} :Expr (:at 1586595121868) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1586595121868) (:by |B1y7Rc-Zz) (:text |:time)
                                                                      |j $ %{} :Expr (:at 1586595121868) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |j $ %{} :Leaf (:at 1629915445819) (:by |B1y7Rc-Zz) (:text |js/Date.now)
                                      |y $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:remove)
                                          |j $ %{} :Expr (:at 1586594836852) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1586594837531) (:by |B1y7Rc-Zz) (:text |do)
                                              |T $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |n $ %{} :Leaf (:at 1586594842647) (:by |B1y7Rc-Zz) (:text |new-state)
                                              |j $ %{} :Expr (:at 1586594966828) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1629914992487) (:by |B1y7Rc-Zz) (:text |.show)
                                                  |H $ %{} :Leaf (:at 1586594974396) (:by |B1y7Rc-Zz) (:text |remove-plugin)
                                                  |L $ %{} :Leaf (:at 1586594976318) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |T $ %{} :Expr (:at 1586594977420) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1586594978119) (:by |B1y7Rc-Zz) (:text |fn)
                                                      |L $ %{} :Expr (:at 1586594979194) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                      |T $ %{} :Expr (:at 1586594838441) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1586594838441) (:by |B1y7Rc-Zz) (:text |d!)
                                                          |j $ %{} :Leaf (:at 1586594838441) (:by |B1y7Rc-Zz) (:text |:task/remove-working)
                                                          |r $ %{} :Expr (:at 1586594838441) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1586594838441) (:by |B1y7Rc-Zz) (:text |:id)
                                                              |j $ %{} :Leaf (:at 1586594838441) (:by |B1y7Rc-Zz) (:text |task)
                                      |yT $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:touch)
                                          |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |do)
                                              |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:task/touch-working)
                                                  |r $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |task)
                                              |r $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |r $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |new-state)
                                      |yj $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |:open)
                                          |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |do)
                                              |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |js/window.open)
                                                  |j $ %{} :Expr (:at 1629914519612) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1629914521026) (:by |B1y7Rc-Zz) (:text |.-0)
                                                      |T $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629914493571) (:by |B1y7Rc-Zz) (:text |.!match)
                                                          |b $ %{} :Expr (:at 1629914495699) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629914495699) (:by |B1y7Rc-Zz) (:text |:text)
                                                              |j $ %{} :Leaf (:at 1629914495699) (:by |B1y7Rc-Zz) (:text |task)
                                                          |f $ %{} :Leaf (:at 1629914502326) (:by |B1y7Rc-Zz) (:text |url-pattern)
                                              |r $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |r $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |new-state)
                                      |yr $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |nil)
                                          |j $ %{} :Expr (:at 1586594791653) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |d!)
                                              |j $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |cursor)
                                              |r $ %{} :Leaf (:at 1586594791653) (:by |B1y7Rc-Zz) (:text |new-state)
                      |yj $ %{} :Expr (:at 1586594713625) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629914912184) (:by |B1y7Rc-Zz) (:text |.render)
                          |j $ %{} :Leaf (:at 1586594717550) (:by |B1y7Rc-Zz) (:text |remove-plugin)
                      |yr $ %{} :Expr (:at 1586594713625) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629914915170) (:by |B1y7Rc-Zz) (:text |.render)
                          |j $ %{} :Leaf (:at 1586595081429) (:by |B1y7Rc-Zz) (:text |update-plugin)
        |css-item $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1536777861344) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1657813042018) (:by |B1y7Rc-Zz) (:text |defstyle)
              |j $ %{} :Leaf (:at 1657813040423) (:by |B1y7Rc-Zz) (:text |css-item)
              |r $ %{} :Expr (:at 1657813043664) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1657813044286) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1657813044689) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1657813046259) (:by |B1y7Rc-Zz) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1536777861344) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1536777861344) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |:line-height)
                              |j $ %{} :Leaf (:at 1536777861344) (:by |root) (:text ||32px)
                          |r $ %{} :Expr (:at 1536777861344) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |:margin)
                              |j $ %{} :Leaf (:at 1536777861344) (:by |root) (:text "||8px 0px")
                          |v $ %{} :Expr (:at 1536777861344) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |:position)
                              |j $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |:absolute)
                          |w $ %{} :Expr (:at 1585589492333) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1585589492333) (:by |B1y7Rc-Zz) (:text |:width)
                              |j $ %{} :Leaf (:at 1585589492333) (:by |B1y7Rc-Zz) (:text "|\"100%")
                          |y $ %{} :Expr (:at 1536777861344) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |:transition-duration)
                              |j $ %{} :Leaf (:at 1536777861344) (:by |root) (:text ||300ms)
                          |yT $ %{} :Expr (:at 1536777861344) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |:white-space)
                              |j $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |:nowrap)
                          |yj $ %{} :Expr (:at 1536777861344) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |:line-height)
                              |j $ %{} :Leaf (:at 1536777861344) (:by |root) (:text "|\"32px")
                          |yn $ %{} :Expr (:at 1536777861344) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536819946162) (:by |B1y7Rc-Zz) (:text |:height)
                              |j $ %{} :Leaf (:at 1536777861344) (:by |root) (:text "|\"32px")
                          |yr $ %{} :Expr (:at 1536777861344) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |:max-width)
                              |j $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |480)
                          |yv $ %{} :Expr (:at 1536777861344) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |:background-color)
                              |j $ %{} :Expr (:at 1536777861344) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |0)
                                  |r $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |0)
                                  |v $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |94)
                          |yx $ %{} :Expr (:at 1536777861344) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536777861344) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1536777861344) (:by |root) (:text "|\"0 8px")
        |http-pattern $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629914448718) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629914448718) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1629914448718) (:by |B1y7Rc-Zz) (:text |http-pattern)
              |r $ %{} :Expr (:at 1629914448718) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629914451665) (:by |B1y7Rc-Zz) (:text |new)
                  |j $ %{} :Leaf (:at 1629914454352) (:by |B1y7Rc-Zz) (:text |js/RegExp)
                  |r $ %{} :Leaf (:at 1629914455670) (:by |B1y7Rc-Zz) (:text "|\"https?://")
        |url-pattern $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629914506487) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629914506487) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1629914506487) (:by |B1y7Rc-Zz) (:text |url-pattern)
              |r $ %{} :Expr (:at 1629914506487) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629914508313) (:by |B1y7Rc-Zz) (:text |new)
                  |j $ %{} :Leaf (:at 1629914511826) (:by |B1y7Rc-Zz) (:text |js/RegExp)
                  |r $ %{} :Leaf (:at 1629914512298) (:by |B1y7Rc-Zz) (:text "|\"https?://\\S+")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1520961831841) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1520961831841) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1520961831841) (:by |root) (:text |app.comp.home)
            |r $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629913760629) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547378489) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |u $ %{} :Expr (:at 1657812972327) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657812974897) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657812975675) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657812976199) (:by |B1y7Rc-Zz) (:text |css)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1542535144896) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |y $ %{} :Leaf (:at 1507815955483) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1520961917370) (:by |root) (:text |input)
                        |yj $ %{} :Leaf (:at 1584892971954) (:by |B1y7Rc-Zz) (:text |>>)
                        |yv $ %{} :Leaf (:at 1520962930710) (:by |root) (:text |list->)
                        |yy $ %{} :Leaf (:at 1521219401736) (:by |root) (:text |span)
                        |yyT $ %{} :Leaf (:at 1536819900192) (:by |B1y7Rc-Zz) (:text |input)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                |yD $ %{} :Expr (:at 1507816109319) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507816117447) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507816112686) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507816113982) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507816114704) (:by |root) (:text |=<)
                |yP $ %{} :Expr (:at 1657812982020) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657812985725) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657812986769) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657812987044) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657812988375) (:by |B1y7Rc-Zz) (:text |defstyle)
                |yn $ %{} :Expr (:at 1521043556689) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1558366305582) (:by |B1y7Rc-Zz) (:text |feather.core)
                    |r $ %{} :Leaf (:at 1521043562141) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521043562398) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1629914652889) (:by |B1y7Rc-Zz) (:text |comp-icon)
                |yx $ %{} :Expr (:at 1530457111096) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1572971307844) (:by |B1y7Rc-Zz) (:text |respo-alerts.core)
                    |r $ %{} :Leaf (:at 1530457122785) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1530457122966) (:by |root)
                      :data $ {}
                        |yT $ %{} :Leaf (:at 1586594880964) (:by |B1y7Rc-Zz) (:text |use-confirm)
                        |yj $ %{} :Leaf (:at 1586595184461) (:by |B1y7Rc-Zz) (:text |use-prompt)
                        |yr $ %{} :Leaf (:at 1629914362411) (:by |B1y7Rc-Zz) (:text |comp-modal-menu)
                |yy $ %{} :Expr (:at 1536774927773) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1545759461931) (:by |root) (:text |cumulo-util.core)
                    |r $ %{} :Leaf (:at 1536774927773) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1536774927773) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1536774927773) (:by |root) (:text |delay!)
    |app.comp.login $ %{} :FileEntry
      :defs $ {}
        |comp-login $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |D $ %{} :Expr (:at 1584892820754) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584892821525) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1584892821965) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584892822912) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1584892823640) (:by |B1y7Rc-Zz) (:text |states)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |or)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |initial-state)
                  |r $ %{} :Expr (:at 1519368111046) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1519368111912) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1519368112156) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519368113787) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1519368114295) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657812818019) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |j $ %{} :Expr (:at 1519368119982) (:by |root)
                                :data $ {}
                                  |5 $ %{} :Leaf (:at 1657812820878) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                  |D $ %{} :Leaf (:at 1657812823043) (:by |B1y7Rc-Zz) (:text |css/flex)
                                  |T $ %{} :Leaf (:at 1657812824885) (:by |B1y7Rc-Zz) (:text |css/center)
                      |P $ %{} :Expr (:at 1521738271237) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521738271803) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1521738272085) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521738272498) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1521738345442) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521738346622) (:by |root) (:text |comp-md-block)
                              |j $ %{} :Leaf (:at 1521738595101) (:by |root) (:text "||Woodenlist is an online Todolist built by [@jiyinyiyong](https://github.com/jiyinyiyong) based on [Cumulo](http://cumulo.org/) solution.\nFind out more on [GitHub](https://github.com/TopixIM/woodenlist).\n\nCaution! It's an toy app. Don't trust my database!")
                              |r $ %{} :Expr (:at 1521738348503) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521738349300) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1521738543795) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521738544462) (:by |root) (:text |:css)
                                      |j $ %{} :Leaf (:at 1521738584189) (:by |root) (:text "||.md-p {margin: 20px 0; line-height: 1.6em;}")
                      |R $ %{} :Expr (:at 1521738296683) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521738298800) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1521738300035) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1521738301632) (:by |root) (:text |40)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:placeholder)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Username)
                                          |n $ %{} :Expr (:at 1657812853891) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657812856389) (:by |B1y7Rc-Zz) (:text |:class-name)
                                              |b $ %{} :Leaf (:at 1657812857945) (:by |B1y7Rc-Zz) (:text |css/input)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:value)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                          |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1514302367311) (:by |root) (:text |:on-input)
                                              |j $ %{} :Expr (:at 1584892827332) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584892827651) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1584892827981) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584892828239) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1584892829203) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |r $ %{} :Expr (:at 1584892829640) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584892830411) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1584892831505) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |r $ %{} :Expr (:at 1584892832963) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1584892832514) (:by |B1y7Rc-Zz) (:text |assoc)
                                                          |j $ %{} :Leaf (:at 1584892834095) (:by |B1y7Rc-Zz) (:text |state)
                                                          |r $ %{} :Leaf (:at 1584892836004) (:by |B1y7Rc-Zz) (:text |:username)
                                                          |v $ %{} :Expr (:at 1584892837007) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1584892837661) (:by |B1y7Rc-Zz) (:text |:value)
                                                              |j $ %{} :Leaf (:at 1584892837879) (:by |B1y7Rc-Zz) (:text |e)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                              |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:placeholder)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Password)
                                          |n $ %{} :Expr (:at 1657812861964) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1657812861964) (:by |B1y7Rc-Zz) (:text |:class-name)
                                              |b $ %{} :Leaf (:at 1657812861964) (:by |B1y7Rc-Zz) (:text |css/input)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:value)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                          |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1514302370752) (:by |root) (:text |:on-input)
                                              |j $ %{} :Expr (:at 1584892848199) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584892848199) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1584892848199) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584892848199) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1584892848199) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |r $ %{} :Expr (:at 1584892848199) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1584892848199) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1584892848199) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |r $ %{} :Expr (:at 1584892848199) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1584892848199) (:by |B1y7Rc-Zz) (:text |assoc)
                                                          |j $ %{} :Leaf (:at 1584892848199) (:by |B1y7Rc-Zz) (:text |state)
                                                          |r $ %{} :Leaf (:at 1584892850694) (:by |B1y7Rc-Zz) (:text |:password)
                                                          |v $ %{} :Expr (:at 1584892848199) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1584892848199) (:by |B1y7Rc-Zz) (:text |:value)
                                                              |j $ %{} :Leaf (:at 1584892848199) (:by |B1y7Rc-Zz) (:text |e)
                          |v $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                          |x $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1519368067092) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519368067501) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1519368135916) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519368141461) (:by |root) (:text |:text-align)
                                              |j $ %{} :Leaf (:at 1519368142240) (:by |root) (:text |:right)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519367924372) (:by |root) (:text |span)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||Sign up")
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657812867515) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |j $ %{} :Leaf (:at 1657812871480) (:by |B1y7Rc-Zz) (:text |css/link)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1514302375364) (:by |root) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |true)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                              |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519367939048) (:by |root) (:text |span)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1519368084428) (:by |root) (:text "||Log in")
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657812874688) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |j $ %{} :Leaf (:at 1657812880233) (:by |B1y7Rc-Zz) (:text |css/link)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1514302381488) (:by |root) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |false)
        |initial-state $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |initial-state)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||)
        |on-submit $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |username)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |password)
                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |signup?)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |fn)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |e)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |signup?)
                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/sign-up)
                          |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/log-in)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |username)
                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |password)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |.setItem)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |js/localStorage)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545759700951) (:by |root) (:text |:storage-key)
                          |j $ %{} :Leaf (:at 1545759704191) (:by |root) (:text |config/site)
                      |v $ %{} :Expr (:at 1629914674197) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1629914678191) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                          |T $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |username)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |password)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1510936619134) (:by |root) (:text |app.comp.login)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1542535155942) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                        |y $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                |w $ %{} :Expr (:at 1657812829075) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657812831592) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657812832110) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657812832767) (:by |B1y7Rc-Zz) (:text |css)
                |wT $ %{} :Expr (:at 1657812834527) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657812836599) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657812837708) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657812837978) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657812839340) (:by |B1y7Rc-Zz) (:text |defstyle)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547410331) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |xT $ %{} :Expr (:at 1545759715773) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1545759717845) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1545759718257) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1545759718910) (:by |root) (:text |schema)
                |y $ %{} :Expr (:at 1545759713605) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1545759713605) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1545759713605) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1545759713605) (:by |root) (:text |config)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1519368017028) (:by |root) (:text |app.style)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1519368019779) (:by |root) (:text |style)
                |yj $ %{} :Expr (:at 1521738314307) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1521738318598) (:by |root) (:text |respo-md.comp.md)
                    |r $ %{} :Leaf (:at 1521738319370) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521738319575) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521738320880) (:by |root) (:text |comp-md)
                        |r $ %{} :Leaf (:at 1521738337874) (:by |root) (:text |comp-md-block)
    |app.comp.pending $ %{} :FileEntry
      :defs $ {}
        |comp-pending $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521044486477) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521044489312) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1521044486477) (:by |root) (:text |comp-pending)
              |r $ %{} :Expr (:at 1521044486477) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1521044490946) (:by |root) (:text |states)
                  |j $ %{} :Leaf (:at 1521044496308) (:by |root) (:text |router-data)
              |v $ %{} :Expr (:at 1521044496672) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1521044497744) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1521044497965) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521044498387) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1657813111025) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657813113696) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1657813115085) (:by |B1y7Rc-Zz) (:text |css/flex)
                      |j $ %{} :Expr (:at 1521044680606) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521044681491) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1521044681697) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521044682090) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1521044682369) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521044683573) (:by |root) (:text |:padding)
                                  |j $ %{} :Leaf (:at 1521044684057) (:by |root) (:text |16)
                              |r $ %{} :Expr (:at 1522254493595) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1522254496672) (:by |root) (:text |:overflow)
                                  |j $ %{} :Leaf (:at 1522254497518) (:by |root) (:text |:auto)
                  |v $ %{} :Expr (:at 1521044523987) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521044525273) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1521044525499) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521044525850) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1657813076130) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657813078255) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1657813080546) (:by |B1y7Rc-Zz) (:text |css/font-fancy)
                          |j $ %{} :Expr (:at 1521044648395) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521044650839) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1521044651105) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521044651436) (:by |root) (:text |{})
                                  |r $ %{} :Expr (:at 1521044662108) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521044664079) (:by |root) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1521044670365) (:by |root) (:text |24)
                                  |v $ %{} :Expr (:at 1521044671377) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521044673247) (:by |root) (:text |:font-weight)
                                      |j $ %{} :Leaf (:at 1521044674471) (:by |root) (:text |100)
                      |r $ %{} :Expr (:at 1521044526788) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521044527146) (:by |root) (:text |<>)
                          |j $ %{} :Expr (:at 1521132696215) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521132697055) (:by |root) (:text |str)
                              |T $ %{} :Leaf (:at 1521132699161) (:by |root) (:text "||Pending Tasks(")
                              |b $ %{} :Expr (:at 1521132701505) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521132702333) (:by |root) (:text |count)
                                  |j $ %{} :Leaf (:at 1521132705357) (:by |root) (:text |router-data)
                              |j $ %{} :Leaf (:at 1521132700550) (:by |root) (:text "||)")
                  |x $ %{} :Expr (:at 1521044554672) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521044556159) (:by |root) (:text |list->)
                      |j $ %{} :Expr (:at 1521044556488) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521044557010) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1522254557396) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1522254563533) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1522254563776) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1522254564088) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1522254564348) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1522254566119) (:by |root) (:text |:width)
                                      |j $ %{} :Leaf (:at 1522254568808) (:by |root) (:text "|\"100%")
                      |r $ %{} :Expr (:at 1521044557538) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629914072731) (:by |B1y7Rc-Zz) (:text |->)
                          |j $ %{} :Leaf (:at 1521044580606) (:by |root) (:text |router-data)
                          |l $ %{} :Expr (:at 1629915051683) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629915053435) (:by |B1y7Rc-Zz) (:text |.to-list)
                          |n $ %{} :Expr (:at 1536946283727) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629914071015) (:by |B1y7Rc-Zz) (:text |.sort-by)
                              |j $ %{} :Expr (:at 1536946283727) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536946283727) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1536946283727) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629914075324) (:by |B1y7Rc-Zz) (:text |pair)
                                  |r $ %{} :Expr (:at 1536946283727) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629914078357) (:by |B1y7Rc-Zz) (:text |negate)
                                      |j $ %{} :Expr (:at 1536946283727) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536946283727) (:by |root) (:text |:time)
                                          |j $ %{} :Expr (:at 1629914079814) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629914081013) (:by |B1y7Rc-Zz) (:text |last)
                                              |j $ %{} :Leaf (:at 1629914081554) (:by |B1y7Rc-Zz) (:text |pair)
                          |r $ %{} :Expr (:at 1521044581203) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629914090594) (:by |B1y7Rc-Zz) (:text |.map-pair)
                              |j $ %{} :Expr (:at 1521044587863) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521044588206) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1521044588506) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629914085880) (:by |B1y7Rc-Zz) (:text |k)
                                      |j $ %{} :Leaf (:at 1629914093653) (:by |B1y7Rc-Zz) (:text |task)
                                  |r $ %{} :Expr (:at 1629914094773) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629914095681) (:by |B1y7Rc-Zz) (:text |[])
                                      |L $ %{} :Leaf (:at 1629914096046) (:by |B1y7Rc-Zz) (:text |k)
                                      |T $ %{} :Expr (:at 1521044694242) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521044696084) (:by |root) (:text |comp-task)
                                          |b $ %{} :Expr (:at 1584893255016) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1584893255769) (:by |B1y7Rc-Zz) (:text |>>)
                                              |T $ %{} :Leaf (:at 1521220699748) (:by |root) (:text |states)
                                              |j $ %{} :Expr (:at 1584893256852) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1584893256852) (:by |B1y7Rc-Zz) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1584893256852) (:by |B1y7Rc-Zz) (:text |task)
                                          |j $ %{} :Leaf (:at 1521044700502) (:by |root) (:text |task)
        |comp-task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521044701726) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521044703303) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1521044701726) (:by |root) (:text |comp-task)
              |r $ %{} :Expr (:at 1521044701726) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1521220694019) (:by |root) (:text |states)
                  |T $ %{} :Leaf (:at 1521044704653) (:by |root) (:text |task)
              |v $ %{} :Expr (:at 1629913952272) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1629913952987) (:by |B1y7Rc-Zz) (:text |let)
                  |L $ %{} :Expr (:at 1629913953310) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629913953630) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913958043) (:by |B1y7Rc-Zz) (:text |update-plugin)
                          |j $ %{} :Expr (:at 1629913958686) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913967905) (:by |B1y7Rc-Zz) (:text |use-prompt)
                              |j $ %{} :Expr (:at 1629913968461) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913968886) (:by |B1y7Rc-Zz) (:text |>>)
                                  |j $ %{} :Leaf (:at 1629913969779) (:by |B1y7Rc-Zz) (:text |states)
                                  |r $ %{} :Leaf (:at 1629913970817) (:by |B1y7Rc-Zz) (:text |:update)
                              |r $ %{} :Expr (:at 1629913975139) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913975139) (:by |B1y7Rc-Zz) (:text |{})
                                  |r $ %{} :Expr (:at 1629913975139) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913975139) (:by |B1y7Rc-Zz) (:text |:text)
                                      |j $ %{} :Leaf (:at 1629913975139) (:by |B1y7Rc-Zz) (:text "|\"Update task:")
                                  |v $ %{} :Expr (:at 1629913975139) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913975139) (:by |B1y7Rc-Zz) (:text |:initial)
                                      |j $ %{} :Expr (:at 1629913975139) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913975139) (:by |B1y7Rc-Zz) (:text |or)
                                          |j $ %{} :Expr (:at 1629913975139) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629913975139) (:by |B1y7Rc-Zz) (:text |:text)
                                              |j $ %{} :Leaf (:at 1629913975139) (:by |B1y7Rc-Zz) (:text |task)
                                          |r $ %{} :Leaf (:at 1629913975139) (:by |B1y7Rc-Zz) (:text "|\"")
                  |T $ %{} :Expr (:at 1521044705114) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521044705979) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1521044706214) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521044707863) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1657813519503) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657813522685) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1657813524378) (:by |B1y7Rc-Zz) (:text |css/row)
                          |j $ %{} :Expr (:at 1521044756825) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521044757974) (:by |root) (:text |:style)
                              |T $ %{} :Expr (:at 1521044758908) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1521044761416) (:by |root) (:text |{})
                                  |T $ %{} :Expr (:at 1521044745161) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521044746161) (:by |root) (:text |:margin)
                                      |j $ %{} :Leaf (:at 1521044751078) (:by |root) (:text "||8px 0")
                                  |j $ %{} :Expr (:at 1524382601594) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524382605428) (:by |root) (:text |:align-items)
                                      |j $ %{} :Leaf (:at 1524382606956) (:by |root) (:text |:center)
                                  |n $ %{} :Expr (:at 1536860324198) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536860324198) (:by |root) (:text |:max-width)
                                      |j $ %{} :Leaf (:at 1536860324198) (:by |root) (:text |480)
                                  |r $ %{} :Expr (:at 1536860321525) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536860321525) (:by |root) (:text |:width)
                                      |j $ %{} :Leaf (:at 1536860321525) (:by |root) (:text "|\"100%")
                      |o $ %{} :Expr (:at 1530458503489) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1530458505143) (:by |root) (:text |div)
                          |L $ %{} :Expr (:at 1530458505325) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1530458506976) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1657813528882) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657813531163) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1657813532686) (:by |B1y7Rc-Zz) (:text |css/flex)
                              |j $ %{} :Expr (:at 1530458507343) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1530458510631) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1530458715590) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1530458715944) (:by |root) (:text |{})
                                      |r $ %{} :Expr (:at 1530458730669) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1530458733596) (:by |root) (:text |:padding)
                                          |j $ %{} :Leaf (:at 1530458735628) (:by |root) (:text "|\"0 8px")
                                      |v $ %{} :Expr (:at 1530458898753) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1530458904370) (:by |root) (:text |:background-color)
                                          |j $ %{} :Expr (:at 1530458904585) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1530458905161) (:by |root) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1530458905733) (:by |root) (:text |0)
                                              |r $ %{} :Leaf (:at 1530458906003) (:by |root) (:text |0)
                                              |v $ %{} :Leaf (:at 1530458907378) (:by |root) (:text |96)
                                      |yT $ %{} :Expr (:at 1531673079635) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1531673081673) (:by |root) (:text |:overflow)
                                          |j $ %{} :Leaf (:at 1531673082728) (:by |root) (:text |:auto)
                          |P $ %{} :Expr (:at 1629913996862) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1629913999366) (:by |B1y7Rc-Zz) (:text |span)
                              |T $ %{} :Expr (:at 1629913993511) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629914001287) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629913993511) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629914008347) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                      |j $ %{} :Expr (:at 1629915537443) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629915538605) (:by |B1y7Rc-Zz) (:text |:text)
                                          |T $ %{} :Leaf (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |task)
                                  |r $ %{} :Expr (:at 1629914009355) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629914010561) (:by |B1y7Rc-Zz) (:text |:style)
                                      |T $ %{} :Expr (:at 1629913993511) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1629913993511) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |:display)
                                              |j $ %{} :Leaf (:at 1657813773161) (:by |B1y7Rc-Zz) (:text |:block)
                                          |r $ %{} :Expr (:at 1629913993511) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |:height)
                                              |j $ %{} :Leaf (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |32)
                                          |v $ %{} :Expr (:at 1629913993511) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |:line-height)
                                              |j $ %{} :Leaf (:at 1629913993511) (:by |B1y7Rc-Zz) (:text "|\"32px")
                                          |x $ %{} :Expr (:at 1629913993511) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |:overflow)
                                              |j $ %{} :Leaf (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |:auto)
                                          |y $ %{} :Expr (:at 1629913993511) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |:white-space)
                                              |j $ %{} :Leaf (:at 1629913993511) (:by |B1y7Rc-Zz) (:text |:nowrap)
                                  |v $ %{} :Expr (:at 1629914012487) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629914014251) (:by |B1y7Rc-Zz) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1629914014606) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629914014979) (:by |B1y7Rc-Zz) (:text |fn)
                                          |j $ %{} :Expr (:at 1629914015633) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629914015995) (:by |B1y7Rc-Zz) (:text |e)
                                              |j $ %{} :Leaf (:at 1629914016807) (:by |B1y7Rc-Zz) (:text |d!)
                                          |r $ %{} :Expr (:at 1629914017303) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629914019045) (:by |B1y7Rc-Zz) (:text |.show)
                                              |j $ %{} :Leaf (:at 1629914023530) (:by |B1y7Rc-Zz) (:text |update-plugin)
                                              |r $ %{} :Leaf (:at 1629914024755) (:by |B1y7Rc-Zz) (:text |d!)
                                              |v $ %{} :Expr (:at 1629914025154) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629914025562) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1629914029251) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629914037877) (:by |B1y7Rc-Zz) (:text |result)
                                                  |r $ %{} :Expr (:at 1629914041290) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |:task/update-text)
                                                      |r $ %{} :Expr (:at 1629914041290) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |{})
                                                          |j $ %{} :Expr (:at 1629914041290) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |:id)
                                                              |j $ %{} :Expr (:at 1629914041290) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |:id)
                                                                  |j $ %{} :Leaf (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |task)
                                                          |r $ %{} :Expr (:at 1629914041290) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |:text)
                                                              |j $ %{} :Leaf (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |result)
                                                          |v $ %{} :Expr (:at 1629914041290) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |:group)
                                                              |j $ %{} :Leaf (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |:pending-tasks)
                                                          |x $ %{} :Expr (:at 1629914041290) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629914041290) (:by |B1y7Rc-Zz) (:text |:time)
                                                              |j $ %{} :Expr (:at 1629914041290) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |j $ %{} :Leaf (:at 1629915525748) (:by |B1y7Rc-Zz) (:text |js/Date.now)
                      |v $ %{} :Expr (:at 1521044766745) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521044768029) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1521044769178) (:by |root) (:text |16)
                          |r $ %{} :Leaf (:at 1521044769783) (:by |root) (:text |nil)
                      |w $ %{} :Expr (:at 1521044771539) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521044772061) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1521044772332) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521044772681) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1521044851165) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521044852591) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1521044852802) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521044853142) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1521044853380) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521044854579) (:by |root) (:text |:cursor)
                                          |j $ %{} :Leaf (:at 1521044855737) (:by |root) (:text |:pointer)
                              |r $ %{} :Expr (:at 1521044856686) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521044858637) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1584893323355) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1584893323892) (:by |B1y7Rc-Zz) (:text |fn)
                                      |L $ %{} :Expr (:at 1584893324167) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1584893324418) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1584893326108) (:by |B1y7Rc-Zz) (:text |d!)
                                      |T $ %{} :Expr (:at 1567350416723) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1584893322918) (:by |B1y7Rc-Zz) (:text |d!)
                                          |j $ %{} :Leaf (:at 1567350416723) (:by |B1y7Rc-Zz) (:text |:task/move-task)
                                          |r $ %{} :Expr (:at 1567350416723) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1567350416723) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1567350416723) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1567350416723) (:by |B1y7Rc-Zz) (:text |:id)
                                                  |j $ %{} :Expr (:at 1567350416723) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1567350416723) (:by |B1y7Rc-Zz) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1567350416723) (:by |B1y7Rc-Zz) (:text |task)
                                              |r $ %{} :Expr (:at 1567350416723) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1567350416723) (:by |B1y7Rc-Zz) (:text |:from)
                                                  |j $ %{} :Leaf (:at 1567350416723) (:by |B1y7Rc-Zz) (:text |:pending-tasks)
                                              |v $ %{} :Expr (:at 1567350416723) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1567350416723) (:by |B1y7Rc-Zz) (:text |:to)
                                                  |j $ %{} :Leaf (:at 1567350416723) (:by |B1y7Rc-Zz) (:text |:working-tasks)
                          |r $ %{} :Expr (:at 1521044788041) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1558370880973) (:by |B1y7Rc-Zz) (:text |comp-i)
                              |j $ %{} :Leaf (:at 1558370883996) (:by |B1y7Rc-Zz) (:text |:corner-up-left)
                              |r $ %{} :Leaf (:at 1558370886414) (:by |B1y7Rc-Zz) (:text |14)
                              |v $ %{} :Expr (:at 1558370886872) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1558370887238) (:by |B1y7Rc-Zz) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1558370887606) (:by |B1y7Rc-Zz) (:text |0)
                                  |r $ %{} :Leaf (:at 1558370887821) (:by |B1y7Rc-Zz) (:text |0)
                                  |v $ %{} :Leaf (:at 1558370888349) (:by |B1y7Rc-Zz) (:text |50)
                      |y $ %{} :Expr (:at 1521044771539) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1558370963793) (:by |B1y7Rc-Zz) (:text |;)
                          |T $ %{} :Leaf (:at 1521044772061) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1521044772332) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521044772681) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1521044851165) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521044852591) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1521044852802) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521044853142) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1521044853380) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521044854579) (:by |root) (:text |:cursor)
                                          |j $ %{} :Leaf (:at 1521044855737) (:by |root) (:text |:pointer)
                              |r $ %{} :Expr (:at 1521044856686) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521044858637) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1567350421707) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1567350421707) (:by |B1y7Rc-Zz) (:text |action->)
                                      |j $ %{} :Leaf (:at 1567350421707) (:by |B1y7Rc-Zz) (:text |:task/move-task)
                                      |r $ %{} :Expr (:at 1567350421707) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1567350421707) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1567350421707) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1567350421707) (:by |B1y7Rc-Zz) (:text |:id)
                                              |j $ %{} :Expr (:at 1567350421707) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1567350421707) (:by |B1y7Rc-Zz) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1567350421707) (:by |B1y7Rc-Zz) (:text |task)
                                          |r $ %{} :Expr (:at 1567350421707) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1567350421707) (:by |B1y7Rc-Zz) (:text |:from)
                                              |j $ %{} :Leaf (:at 1567350421707) (:by |B1y7Rc-Zz) (:text |:pending-tasks)
                                          |v $ %{} :Expr (:at 1567350421707) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1567350421707) (:by |B1y7Rc-Zz) (:text |:to)
                                              |j $ %{} :Leaf (:at 1567350421707) (:by |B1y7Rc-Zz) (:text |:done-tasks)
                          |r $ %{} :Expr (:at 1521044788041) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1558370897931) (:by |B1y7Rc-Zz) (:text |comp-i)
                              |j $ %{} :Leaf (:at 1558370892550) (:by |B1y7Rc-Zz) (:text |:check)
                              |r $ %{} :Leaf (:at 1558370893971) (:by |B1y7Rc-Zz) (:text |14)
                              |v $ %{} :Expr (:at 1558370894462) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1558370894978) (:by |B1y7Rc-Zz) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1558370895321) (:by |B1y7Rc-Zz) (:text |0)
                                  |r $ %{} :Leaf (:at 1558370895622) (:by |B1y7Rc-Zz) (:text |0)
                                  |v $ %{} :Leaf (:at 1558370896234) (:by |B1y7Rc-Zz) (:text |50)
                      |yT $ %{} :Expr (:at 1629913982351) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913983566) (:by |B1y7Rc-Zz) (:text |.render)
                          |j $ %{} :Leaf (:at 1629913987031) (:by |B1y7Rc-Zz) (:text |update-plugin)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1521044483128) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1521044483128) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1521044483128) (:by |root) (:text |app.comp.pending)
            |r $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629913928026) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547378489) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |u $ %{} :Expr (:at 1657813091126) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657813094443) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657813095790) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657813096397) (:by |B1y7Rc-Zz) (:text |css)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1542535168011) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |xT $ %{} :Leaf (:at 1584893186966) (:by |B1y7Rc-Zz) (:text |>>)
                        |y $ %{} :Leaf (:at 1507815955483) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1521044610764) (:by |root) (:text |list->)
                        |yr $ %{} :Leaf (:at 1521044740074) (:by |root) (:text |input)
                |xT $ %{} :Expr (:at 1657813098988) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657813103265) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657813104325) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657813104531) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657813105874) (:by |B1y7Rc-Zz) (:text |defstyle)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                |yD $ %{} :Expr (:at 1507816109319) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507816117447) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507816112686) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507816113982) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507816114704) (:by |root) (:text |=<)
                |yy $ %{} :Expr (:at 1521044620023) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1521044624327) (:by |root) (:text |respo.util.list)
                    |r $ %{} :Leaf (:at 1521044625168) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521044625428) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521044632401) (:by |root) (:text |map-val)
                |yyr $ %{} :Expr (:at 1530460214605) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1572971316584) (:by |B1y7Rc-Zz) (:text |respo-alerts.core)
                    |r $ %{} :Leaf (:at 1530460222813) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1530460223008) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1629913961515) (:by |B1y7Rc-Zz) (:text |use-prompt)
                        |r $ %{} :Leaf (:at 1629914366390) (:by |B1y7Rc-Zz) (:text |comp-modal-menu)
                |yyv $ %{} :Expr (:at 1558370900041) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1558370905094) (:by |B1y7Rc-Zz) (:text |feather.core)
                    |r $ %{} :Leaf (:at 1558370907389) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1558370907593) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1558370909061) (:by |B1y7Rc-Zz) (:text |comp-i)
    |app.comp.profile $ %{} :FileEntry
      :defs $ {}
        |comp-profile $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545759770753) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |comp-profile)
              |r $ %{} :Expr (:at 1545759770753) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |user)
                  |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |members)
              |v $ %{} :Expr (:at 1545759770753) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1545759770753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |{})
                      |b $ %{} :Expr (:at 1657802366397) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657802368616) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1657802371262) (:by |B1y7Rc-Zz) (:text |css/flex)
                      |j $ %{} :Expr (:at 1545759770753) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1545759770753) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:padding)
                                  |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |16)
                  |r $ %{} :Expr (:at 1545759770753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1545759770753) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1657802377403) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657802380992) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1657802385193) (:by |B1y7Rc-Zz) (:text |css/font-fancy)
                          |j $ %{} :Expr (:at 1545759770753) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |{})
                                  |r $ %{} :Expr (:at 1545759770753) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |32)
                                  |v $ %{} :Expr (:at 1545759770753) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:font-weight)
                                      |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |100)
                      |r $ %{} :Expr (:at 1545759770753) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |<>)
                          |j $ %{} :Expr (:at 1545759770753) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |str)
                              |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text "||Hello! ")
                              |r $ %{} :Expr (:at 1545759770753) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:name)
                                  |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |user)
                  |v $ %{} :Expr (:at 1545759770753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |16)
                  |x $ %{} :Expr (:at 1545759770753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1545759770753) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1545759770753) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657812893684) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |j $ %{} :Leaf (:at 1657812895304) (:by |B1y7Rc-Zz) (:text |css/row)
                      |r $ %{} :Expr (:at 1545759770753) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text "|\"Members:")
                      |v $ %{} :Expr (:at 1545759770753) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |nil)
                      |x $ %{} :Expr (:at 1545759770753) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1545759770753) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657812899236) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1657812900887) (:by |B1y7Rc-Zz) (:text |css/row)
                          |r $ %{} :Expr (:at 1545759770753) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913582233) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |members)
                              |n $ %{} :Expr (:at 1629913584092) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913588179) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |r $ %{} :Expr (:at 1545759770753) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913592229) (:by |B1y7Rc-Zz) (:text |.map-pair)
                                  |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |k)
                                          |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |username)
                                      |r $ %{} :Expr (:at 1545759770753) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |[])
                                          |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |k)
                                          |r $ %{} :Expr (:at 1545759770753) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |div)
                                              |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1657812907792) (:by |B1y7Rc-Zz) (:text |:class-name)
                                                      |b $ %{} :Leaf (:at 1657812913311) (:by |B1y7Rc-Zz) (:text |css-member-label)
                                              |r $ %{} :Expr (:at 1545759770753) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |<>)
                                                  |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |username)
                  |y $ %{} :Expr (:at 1545759770753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |48)
                  |yT $ %{} :Expr (:at 1545759770753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1545759770753) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |{})
                      |r $ %{} :Expr (:at 1545759770753) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |button)
                          |j $ %{} :Expr (:at 1545759770753) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657812932663) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1657812936881) (:by |B1y7Rc-Zz) (:text |css/button)
                              |r $ %{} :Expr (:at 1545759770753) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |e)
                                          |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |d!)
                                      |r $ %{} :Expr (:at 1545759770753) (:by |root)
                                        :data $ {}
                                          |j $ %{} :Leaf (:at 1636953739885) (:by |B1y7Rc-Zz) (:text |js/location.replace)
                                          |r $ %{} :Expr (:at 1545759770753) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |str)
                                              |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |js/location.origin)
                                              |r $ %{} :Leaf (:at 1545759770753) (:by |root) (:text "|\"?time=")
                                              |v $ %{} :Expr (:at 1545759770753) (:by |root)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1636953734895) (:by |B1y7Rc-Zz) (:text |js/Date.now)
                          |r $ %{} :Expr (:at 1545759770753) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text "|\"Refresh")
                      |v $ %{} :Expr (:at 1545759770753) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |nil)
                      |x $ %{} :Expr (:at 1545759770753) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |button)
                          |j $ %{} :Expr (:at 1545759770753) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1657812939543) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657812942240) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1657812944168) (:by |B1y7Rc-Zz) (:text |css/button)
                              |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:color)
                                          |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:red)
                                      |r $ %{} :Expr (:at 1545759770753) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:border-color)
                                          |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:red)
                              |r $ %{} :Expr (:at 1545759770753) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1545759770753) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |e)
                                          |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |dispatch!)
                                          |r $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |mutate!)
                                      |r $ %{} :Expr (:at 1545759770753) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |dispatch!)
                                          |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:user/log-out)
                                          |r $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |nil)
                                      |v $ %{} :Expr (:at 1545759770753) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |.removeItem)
                                          |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |js/localStorage)
                                          |r $ %{} :Expr (:at 1545759770753) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |:storage-key)
                                              |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |config/site)
                          |r $ %{} :Expr (:at 1545759770753) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545759770753) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1545759770753) (:by |root) (:text "|\"Log out")
        |css-member-label $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1657812913764) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1657812915295) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1657812913764) (:by |B1y7Rc-Zz) (:text |css-member-label)
              |h $ %{} :Expr (:at 1657812913764) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1657812916565) (:by |B1y7Rc-Zz) (:text |{})
                  |b $ %{} :Expr (:at 1657812917908) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1657812919256) (:by |B1y7Rc-Zz) (:text "|\"$0")
                      |b $ %{} :Expr (:at 1657812919760) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1657812919760) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |:padding)
                              |b $ %{} :Leaf (:at 1657812919760) (:by |B1y7Rc-Zz) (:text "|\"0 8px")
                          |h $ %{} :Expr (:at 1657812919760) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |:border)
                              |b $ %{} :Expr (:at 1657812919760) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |str)
                                  |b $ %{} :Leaf (:at 1657812919760) (:by |B1y7Rc-Zz) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1657812919760) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Leaf (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |0)
                                      |l $ %{} :Leaf (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |80)
                          |l $ %{} :Expr (:at 1657812919760) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1657812919760) (:by |B1y7Rc-Zz) (:text "|\"16px")
                          |o $ %{} :Expr (:at 1657812919760) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657812919760) (:by |B1y7Rc-Zz) (:text |:margin)
                              |b $ %{} :Leaf (:at 1657812919760) (:by |B1y7Rc-Zz) (:text "|\"0 4px")
        |style-trigger $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |style-trigger)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:font-size)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |14)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:cursor)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:pointer)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:background-color)
                      |j $ %{} :Expr (:at 1558370677601) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1558370678092) (:by |B1y7Rc-Zz) (:text |hsl)
                          |j $ %{} :Leaf (:at 1558370679216) (:by |B1y7Rc-Zz) (:text |200)
                          |r $ %{} :Leaf (:at 1558370679753) (:by |B1y7Rc-Zz) (:text |100)
                          |v $ %{} :Leaf (:at 1558370680262) (:by |B1y7Rc-Zz) (:text |84)
                  |x $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:color)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:white)
                  |y $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:padding)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||0 8px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.profile)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629913603324) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |t $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1545759906504) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1545759908068) (:by |root) (:text |config)
                |u $ %{} :Expr (:at 1657802390870) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657802393649) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657802395794) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657802396041) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657802397272) (:by |B1y7Rc-Zz) (:text |defstyle)
                |uT $ %{} :Expr (:at 1657802398771) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657802400564) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657802401577) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657802402374) (:by |B1y7Rc-Zz) (:text |css)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547419785) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1542535189284) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1524161390866) (:by |root) (:text |list->)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |w $ %{} :Leaf (:at 1524160969081) (:by |root) (:text |button)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |y $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |a)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |yj $ %{} :Expr (:at 1524160957264) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1524160959360) (:by |root) (:text |app.style)
                    |r $ %{} :Leaf (:at 1524160959999) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1524160961127) (:by |root) (:text |style)
    |app.comp.sidebar $ %{} :FileEntry
      :defs $ {}
        |comp-sidebar $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-sidebar)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |D $ %{} :Leaf (:at 1520961756193) (:by |root) (:text |router)
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |logged-in?)
                  |j $ %{} :Leaf (:at 1521737522399) (:by |root) (:text |numbers)
              |v $ %{} :Expr (:at 1531641154666) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1531641155584) (:by |root) (:text |div)
                  |L $ %{} :Expr (:at 1531641155816) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1531641156563) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1531641163113) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1531641165098) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |yv $ %{} :Expr (:at 1531641116610) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1531641120862) (:by |root) (:text |:flex-shrink)
                                  |j $ %{} :Leaf (:at 1531641121606) (:by |root) (:text |0)
                              |yx $ %{} :Expr (:at 1531641127431) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1531641129583) (:by |root) (:text |:border-bottom)
                                  |j $ %{} :Expr (:at 1531641129903) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1531641130375) (:by |root) (:text |str)
                                      |j $ %{} :Leaf (:at 1531641132857) (:by |root) (:text "|\"1px solid ")
                                      |r $ %{} :Expr (:at 1531641133859) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1531641134327) (:by |root) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1531641134632) (:by |root) (:text |0)
                                          |r $ %{} :Leaf (:at 1531641134993) (:by |root) (:text |0)
                                          |v $ %{} :Leaf (:at 1531641136507) (:by |root) (:text |90)
                              |yy $ %{} :Expr (:at 1536777946173) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536777949053) (:by |root) (:text |:background-color)
                                  |j $ %{} :Expr (:at 1536777949823) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536777952757) (:by |root) (:text |:theme)
                                      |j $ %{} :Leaf (:at 1536777956424) (:by |root) (:text |config/site)
                  |T $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1657802221043) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1657802222902) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Expr (:at 1657802230825) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1657802233877) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                  |T $ %{} :Leaf (:at 1657802226242) (:by |B1y7Rc-Zz) (:text |css/row-parted)
                                  |b $ %{} :Leaf (:at 1657802261613) (:by |B1y7Rc-Zz) (:text |css/font-fancy)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |y $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1520875030792) (:by |root) (:text |24)
                                  |yr $ %{} :Expr (:at 1521737903773) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521737905054) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1521738032535) (:by |root) (:text "||8 8px")
                                  |yv $ %{} :Expr (:at 1531641178818) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1531641183394) (:by |root) (:text |:max-width)
                                      |j $ %{} :Leaf (:at 1531641184135) (:by |root) (:text |800)
                                  |yx $ %{} :Expr (:at 1531641186845) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1531641189249) (:by |root) (:text |:margin)
                                      |j $ %{} :Leaf (:at 1531641190352) (:by |root) (:text |:auto)
                      |r $ %{} :Expr (:at 1520875047898) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1520875048669) (:by |root) (:text |div)
                          |L $ %{} :Expr (:at 1520875048910) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520875050291) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1520875051016) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657813345130) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1657813346953) (:by |B1y7Rc-Zz) (:text |css/row)
                          |T $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |b $ %{} :Expr (:at 1657802335992) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657802339559) (:by |B1y7Rc-Zz) (:text |:class-name)
                                      |b $ %{} :Expr (:at 1657813279428) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1657813281398) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                          |T $ %{} :Leaf (:at 1657802341164) (:by |B1y7Rc-Zz) (:text |css/row)
                                          |b $ %{} :Leaf (:at 1657813282134) (:by |B1y7Rc-Zz) (:text |css-entry)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1514302328636) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1520875297716) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520875299130) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1520875299945) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520875301244) (:by |root) (:text |e)
                                              |j $ %{} :Leaf (:at 1520875303034) (:by |root) (:text |d!)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520875308253) (:by |root) (:text |d!)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:router/change)
                                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:home)
                                  |r $ %{} :Expr (:at 1520875268221) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1520875271640) (:by |root) (:text |:style)
                                      |T $ %{} :Expr (:at 1520961733434) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520961734074) (:by |root) (:text |if)
                                          |j $ %{} :Expr (:at 1520961736037) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520961735598) (:by |root) (:text |=)
                                              |j $ %{} :Leaf (:at 1520961788039) (:by |root) (:text |:home)
                                              |r $ %{} :Expr (:at 1520961762439) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520961763035) (:by |root) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1520961763774) (:by |root) (:text |router)
                                          |r $ %{} :Expr (:at 1520961766080) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520961765338) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1520961767628) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520961768841) (:by |root) (:text |:color)
                                                  |j $ %{} :Leaf (:at 1536777979449) (:by |root) (:text |:white)
                              |r $ %{} :Expr (:at 1521737936096) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1521737937617) (:by |root) (:text |div)
                                  |L $ %{} :Expr (:at 1521737937859) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521737938184) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1657802325083) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657802325083) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1657802325083) (:by |B1y7Rc-Zz) (:text |css-icon)
                                  |f $ %{} :Expr (:at 1520874796553) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1558366070894) (:by |B1y7Rc-Zz) (:text |comp-i)
                                      |j $ %{} :Leaf (:at 1520874800662) (:by |root) (:text |:home)
                                      |r $ %{} :Leaf (:at 1558366072935) (:by |B1y7Rc-Zz) (:text |14)
                                      |v $ %{} :Leaf (:at 1558366203608) (:by |B1y7Rc-Zz) (:text "|\"white")
                              |v $ %{} :Expr (:at 1521737552520) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521737552828) (:by |root) (:text |<>)
                                  |j $ %{} :Expr (:at 1521737554545) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521737557214) (:by |root) (:text |:working)
                                      |j $ %{} :Leaf (:at 1521737558836) (:by |root) (:text |numbers)
                                  |r $ %{} :Leaf (:at 1521737853644) (:by |root) (:text |style-count)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1514302328636) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1520875297716) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520875299130) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1520875299945) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520875301244) (:by |root) (:text |e)
                                              |j $ %{} :Leaf (:at 1520875303034) (:by |root) (:text |d!)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520875308253) (:by |root) (:text |d!)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:router/change)
                                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                                      |j $ %{} :Leaf (:at 1520962777871) (:by |root) (:text |:pending)
                                  |n $ %{} :Expr (:at 1657813323743) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657813323743) (:by |B1y7Rc-Zz) (:text |:class-name)
                                      |b $ %{} :Expr (:at 1657813323743) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657813323743) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                          |b $ %{} :Leaf (:at 1657813323743) (:by |B1y7Rc-Zz) (:text |css/row)
                                          |h $ %{} :Leaf (:at 1657813323743) (:by |B1y7Rc-Zz) (:text |css-entry)
                                  |r $ %{} :Expr (:at 1520875268221) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1520875271640) (:by |root) (:text |:style)
                                      |T $ %{} :Expr (:at 1520961733434) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520961734074) (:by |root) (:text |if)
                                          |j $ %{} :Expr (:at 1520961736037) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520961735598) (:by |root) (:text |=)
                                              |j $ %{} :Leaf (:at 1520962782647) (:by |root) (:text |:pending)
                                              |r $ %{} :Expr (:at 1520961762439) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520961763035) (:by |root) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1520961763774) (:by |root) (:text |router)
                                          |r $ %{} :Expr (:at 1520961766080) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520961765338) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1520961767628) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520961768841) (:by |root) (:text |:color)
                                                  |j $ %{} :Leaf (:at 1536778010856) (:by |root) (:text |:white)
                              |n $ %{} :Expr (:at 1521737936096) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1521737937617) (:by |root) (:text |div)
                                  |L $ %{} :Expr (:at 1521737937859) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521737938184) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1657802321855) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657802321855) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1657802321855) (:by |B1y7Rc-Zz) (:text |css-icon)
                                  |T $ %{} :Expr (:at 1520874796553) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1558366082313) (:by |B1y7Rc-Zz) (:text |comp-i)
                                      |j $ %{} :Leaf (:at 1558366090125) (:by |B1y7Rc-Zz) (:text |:clock)
                                      |r $ %{} :Leaf (:at 1558366091464) (:by |B1y7Rc-Zz) (:text |14)
                                      |v $ %{} :Leaf (:at 1558366201366) (:by |B1y7Rc-Zz) (:text "|\"white")
                              |v $ %{} :Expr (:at 1521737629299) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521737629893) (:by |root) (:text |<>)
                                  |j $ %{} :Expr (:at 1521737630263) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521737632367) (:by |root) (:text |:pending)
                                      |j $ %{} :Leaf (:at 1521737635823) (:by |root) (:text |numbers)
                                  |r $ %{} :Leaf (:at 1521737858250) (:by |root) (:text |style-count)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1514302328636) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1520875297716) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520875299130) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1520875299945) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520875301244) (:by |root) (:text |e)
                                              |j $ %{} :Leaf (:at 1520875303034) (:by |root) (:text |d!)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520875308253) (:by |root) (:text |d!)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:router/change)
                                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                                      |j $ %{} :Leaf (:at 1520875322006) (:by |root) (:text |:done)
                                  |n $ %{} :Expr (:at 1657813305212) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657813307639) (:by |B1y7Rc-Zz) (:text |:class-name)
                                      |b $ %{} :Expr (:at 1657813308893) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657813311840) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                          |b $ %{} :Leaf (:at 1657813314275) (:by |B1y7Rc-Zz) (:text |css/row)
                                          |h $ %{} :Leaf (:at 1657813316752) (:by |B1y7Rc-Zz) (:text |css-entry)
                                  |r $ %{} :Expr (:at 1520875268221) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1520875271640) (:by |root) (:text |:style)
                                      |T $ %{} :Expr (:at 1520961733434) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520961734074) (:by |root) (:text |if)
                                          |j $ %{} :Expr (:at 1520961736037) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520961735598) (:by |root) (:text |=)
                                              |j $ %{} :Leaf (:at 1520961781293) (:by |root) (:text |:done)
                                              |r $ %{} :Expr (:at 1520961762439) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520961763035) (:by |root) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1520961763774) (:by |root) (:text |router)
                                          |r $ %{} :Expr (:at 1520961766080) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520961765338) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1520961767628) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520961768841) (:by |root) (:text |:color)
                                                  |j $ %{} :Leaf (:at 1536778014300) (:by |root) (:text |:white)
                              |n $ %{} :Expr (:at 1521737936096) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1521737937617) (:by |root) (:text |div)
                                  |L $ %{} :Expr (:at 1521737937859) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521737938184) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1657802318376) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657802318376) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1657802318376) (:by |B1y7Rc-Zz) (:text |css-icon)
                                  |T $ %{} :Expr (:at 1520874796553) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1558366122312) (:by |B1y7Rc-Zz) (:text |comp-i)
                                      |b $ %{} :Leaf (:at 1558366123177) (:by |B1y7Rc-Zz) (:text |:package)
                                      |j $ %{} :Leaf (:at 1558366125960) (:by |B1y7Rc-Zz) (:text |14)
                                      |r $ %{} :Leaf (:at 1558366199252) (:by |B1y7Rc-Zz) (:text "|\"white")
                              |v $ %{} :Expr (:at 1521737644212) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521737644918) (:by |root) (:text |<>)
                                  |j $ %{} :Expr (:at 1521737646014) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521737646552) (:by |root) (:text |:done)
                                      |j $ %{} :Leaf (:at 1521737647861) (:by |root) (:text |numbers)
                                  |r $ %{} :Leaf (:at 1521737862971) (:by |root) (:text |style-count)
                      |v $ %{} :Expr (:at 1521220013466) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1521220014248) (:by |root) (:text |div)
                          |L $ %{} :Expr (:at 1521220014493) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521220014882) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1521220018728) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1657813351741) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1657813353150) (:by |B1y7Rc-Zz) (:text |css/column)
                          |T $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |b $ %{} :Expr (:at 1657813332405) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1657813332405) (:by |B1y7Rc-Zz) (:text |:class-name)
                                      |b $ %{} :Expr (:at 1657813332405) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657813332405) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                          |b $ %{} :Leaf (:at 1657813332405) (:by |B1y7Rc-Zz) (:text |css/row)
                                          |h $ %{} :Leaf (:at 1657813332405) (:by |B1y7Rc-Zz) (:text |css-entry)
                                  |j $ %{} :Expr (:at 1520875268221) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1520875271640) (:by |root) (:text |:style)
                                      |T $ %{} :Expr (:at 1520961733434) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1520961734074) (:by |root) (:text |if)
                                          |j $ %{} :Expr (:at 1520961736037) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520961735598) (:by |root) (:text |=)
                                              |j $ %{} :Leaf (:at 1520961798220) (:by |root) (:text |:profile)
                                              |r $ %{} :Expr (:at 1520961762439) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520961763035) (:by |root) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1520961763774) (:by |root) (:text |router)
                                          |r $ %{} :Expr (:at 1520961766080) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520961765338) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1520961767628) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520961768841) (:by |root) (:text |:color)
                                                  |j $ %{} :Leaf (:at 1536778018409) (:by |root) (:text |:white)
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1514302332444) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1520875332644) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1520875334033) (:by |root) (:text |fn)
                                          |L $ %{} :Expr (:at 1520875334361) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520875335369) (:by |root) (:text |e)
                                              |j $ %{} :Leaf (:at 1520875336266) (:by |root) (:text |d!)
                                          |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1520875339293) (:by |root) (:text |d!)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:router/change)
                                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:profile)
                              |v $ %{} :Expr (:at 1521737960247) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1521737961526) (:by |root) (:text |div)
                                  |L $ %{} :Expr (:at 1521737961742) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521737962582) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1521737962898) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1657802311668) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |j $ %{} :Leaf (:at 1657802313846) (:by |B1y7Rc-Zz) (:text |css-icon)
                                  |T $ %{} :Expr (:at 1520874934457) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1520874935084) (:by |root) (:text |if)
                                      |L $ %{} :Leaf (:at 1520874937708) (:by |root) (:text |logged-in?)
                                      |T $ %{} :Expr (:at 1520874915087) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1558366223765) (:by |B1y7Rc-Zz) (:text |comp-i)
                                          |j $ %{} :Leaf (:at 1558366360697) (:by |B1y7Rc-Zz) (:text |:user)
                                          |r $ %{} :Leaf (:at 1558366183854) (:by |B1y7Rc-Zz) (:text |14)
                                          |v $ %{} :Leaf (:at 1558366194140) (:by |B1y7Rc-Zz) (:text "|\"white")
                                      |j $ %{} :Expr (:at 1520874941424) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1558366157110) (:by |B1y7Rc-Zz) (:text |comp-i)
                                          |j $ %{} :Leaf (:at 1558366251665) (:by |B1y7Rc-Zz) (:text |:log-in)
                                          |r $ %{} :Leaf (:at 1558366161376) (:by |B1y7Rc-Zz) (:text |14)
                                          |v $ %{} :Leaf (:at 1558366195857) (:by |B1y7Rc-Zz) (:text "|\"white")
                              |x $ %{} :Expr (:at 1521220026009) (:by |root)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1521220028997) (:by |root) (:text |<>)
                                  |T $ %{} :Expr (:at 1521737526453) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521737530051) (:by |root) (:text |:sessions)
                                      |j $ %{} :Leaf (:at 1521737533436) (:by |root) (:text |numbers)
                                  |j $ %{} :Leaf (:at 1521737849364) (:by |root) (:text |style-count)
        |css-entry $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1520875259977) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1657813284364) (:by |B1y7Rc-Zz) (:text |defstyle)
              |j $ %{} :Leaf (:at 1657813271912) (:by |B1y7Rc-Zz) (:text |css-entry)
              |r $ %{} :Expr (:at 1657813285080) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1657813286128) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1657813286480) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1657813288033) (:by |B1y7Rc-Zz) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1520875259977) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520875259977) (:by |root) (:text |{})
                          |v $ %{} :Expr (:at 1520875259977) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520875259977) (:by |root) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1520875259977) (:by |root) (:text |:pointer)
                          |x $ %{} :Expr (:at 1520961805632) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520961806545) (:by |root) (:text |:color)
                              |j $ %{} :Expr (:at 1520961806814) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1520961807407) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1520961808229) (:by |root) (:text |0)
                                  |r $ %{} :Leaf (:at 1520961808471) (:by |root) (:text |0)
                                  |v $ %{} :Leaf (:at 1536777992619) (:by |root) (:text |80)
                          |y $ %{} :Expr (:at 1521737825560) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521737828459) (:by |root) (:text |:align-items)
                              |j $ %{} :Leaf (:at 1521737829713) (:by |root) (:text |:center)
                          |yT $ %{} :Expr (:at 1521738049299) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521738051193) (:by |root) (:text |:height)
                              |j $ %{} :Leaf (:at 1521738051848) (:by |root) (:text |40)
                          |yj $ %{} :Expr (:at 1531641231416) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1531641233970) (:by |root) (:text |:margin-right)
                              |j $ %{} :Leaf (:at 1531641238421) (:by |root) (:text |24)
        |css-icon $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521737984541) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1657802299994) (:by |B1y7Rc-Zz) (:text |defstyle)
              |j $ %{} :Leaf (:at 1657802297986) (:by |B1y7Rc-Zz) (:text |css-icon)
              |r $ %{} :Expr (:at 1657802300894) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1657802301563) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1657802302038) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1657802303352) (:by |B1y7Rc-Zz) (:text "|\"$0")
                      |T $ %{} :Expr (:at 1521737995963) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1521737997607) (:by |root) (:text |merge)
                          |L $ %{} :Leaf (:at 1521737999722) (:by |root) (:text |ui/center)
                          |T $ %{} :Expr (:at 1521737984541) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521737987681) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1521737988866) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521737990430) (:by |root) (:text |:width)
                                  |j $ %{} :Leaf (:at 1531641210553) (:by |root) (:text |24)
        |style-count $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521737864890) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521737865551) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1521737864890) (:by |root) (:text |style-count)
              |r $ %{} :Expr (:at 1521737890304) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1521737891228) (:by |root) (:text |merge)
                  |L $ %{} :Leaf (:at 1521737892528) (:by |root) (:text |ui/center)
                  |T $ %{} :Expr (:at 1521737864890) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521737867023) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1521737867389) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1586710436683) (:by |B1y7Rc-Zz) (:text |:min-width)
                          |j $ %{} :Leaf (:at 1521737916027) (:by |root) (:text |20)
                      |r $ %{} :Expr (:at 1521737878586) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521737881724) (:by |root) (:text |:font-size)
                          |j $ %{} :Leaf (:at 1521738013457) (:by |root) (:text |14)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.sidebar)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629913542326) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547394445) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |u $ %{} :Expr (:at 1657802236364) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657802239447) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1657802240323) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1657802243742) (:by |B1y7Rc-Zz) (:text |css)
                |v $ %{} :Expr (:at 1657802244467) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1657802246114) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1657802247505) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1657802247748) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1657802249153) (:by |B1y7Rc-Zz) (:text |defstyle)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1542535196614) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                |y $ %{} :Expr (:at 1520874782736) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1558366043596) (:by |B1y7Rc-Zz) (:text |feather.core)
                    |r $ %{} :Leaf (:at 1520874789599) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1520874789826) (:by |root)
                      :data $ {}
                        |r $ %{} :Leaf (:at 1558366056228) (:by |B1y7Rc-Zz) (:text |comp-i)
                |yT $ %{} :Expr (:at 1536777958469) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1536777960828) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1536777963080) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1536777963953) (:by |root) (:text |config)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545759095906) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1545759095906) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1545759095906) (:by |root) (:text |dev?)
              |r $ %{} :Expr (:at 1629913497732) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913497803) (:by |B1y7Rc-Zz) (:text |=)
                  |j $ %{} :Leaf (:at 1629913498659) (:by |B1y7Rc-Zz) (:text "|\"dev")
                  |r $ %{} :Expr (:at 1629913498921) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913502065) (:by |B1y7Rc-Zz) (:text |get-env)
                      |j $ %{} :Leaf (:at 1629913504293) (:by |B1y7Rc-Zz) (:text "|\"mode")
                      |n $ %{} :Leaf (:at 1657800349288) (:by |B1y7Rc-Zz) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1535566498551) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1535566501561) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1535566498551) (:by |B1y7Rc-Zz) (:text |site)
              |v $ %{} :Expr (:at 1545759107046) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545759107046) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1545759107046) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545759107046) (:by |root) (:text |:port)
                      |j $ %{} :Leaf (:at 1545759124528) (:by |root) (:text |11000)
                  |r $ %{} :Expr (:at 1545759107046) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545759107046) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1545759143611) (:by |root) (:text "|\"Woodenlist")
                  |v $ %{} :Expr (:at 1545759107046) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545759107046) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1545759150498) (:by |root) (:text "|\"http://cdn.tiye.me/logo/woodenlist.png")
                  |yv $ %{} :Expr (:at 1545759107046) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545759107046) (:by |root) (:text |:server-folder)
                      |j $ %{} :Leaf (:at 1545759195811) (:by |root) (:text "|\"tiye.me:servers/woodenlist")
                  |yx $ %{} :Expr (:at 1545759107046) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545759107046) (:by |root) (:text |:theme)
                      |j $ %{} :Leaf (:at 1545759205067) (:by |root) (:text "|\"#4DB386")
                  |yy $ %{} :Expr (:at 1545759107046) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545759107046) (:by |root) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1545759130707) (:by |root) (:text "|\"woodenlist-storage")
                  |yyT $ %{} :Expr (:at 1545759107046) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1545759107046) (:by |root) (:text |:storage-file)
                      |j $ %{} :Leaf (:at 1629914570589) (:by |B1y7Rc-Zz) (:text "|\"woodenlist.cirru")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1535566495114) (:by |B1y7Rc-Zz)
          :data $ {}
            |T $ %{} :Leaf (:at 1535566495114) (:by |B1y7Rc-Zz) (:text |ns)
            |j $ %{} :Leaf (:at 1535566495114) (:by |B1y7Rc-Zz) (:text |app.config)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |database $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |database)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:users)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
        |notification $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |notification)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:kind)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:text)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |router $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:data)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |session $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:home)
                          |r $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:data)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1536859765313) (:by |root) (:text |:messages)
                      |j $ %{} :Expr (:at 1536859766438) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536859766795) (:by |root) (:text |{})
        |task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1520962454894) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1520962457301) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1520962454894) (:by |root) (:text |task)
              |r $ %{} :Expr (:at 1520962454894) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1520962458320) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1520962459430) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520962459252) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1520962460297) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1520962461238) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520962463836) (:by |root) (:text |:text)
                      |j $ %{} :Leaf (:at 1520962466259) (:by |root) (:text ||)
                  |y $ %{} :Expr (:at 1521043256016) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1531642132141) (:by |root) (:text |:mode)
                      |j $ %{} :Leaf (:at 1531642134410) (:by |root) (:text |nil)
                  |yT $ %{} :Expr (:at 1531642134885) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1531642136097) (:by |root) (:text |:time)
                      |j $ %{} :Leaf (:at 1531642136874) (:by |root) (:text |0)
        |user $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:avatar)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |yT $ %{} :Expr (:at 1521563717844) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521563720568) (:by |root) (:text |:working-tasks)
                      |j $ %{} :Expr (:at 1521563722072) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521563722766) (:by |root) (:text |{})
                  |yj $ %{} :Expr (:at 1521563723905) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521563728019) (:by |root) (:text |:pending-tasks)
                      |j $ %{} :Expr (:at 1521563728473) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521563728797) (:by |root) (:text |{})
                  |yr $ %{} :Expr (:at 1521563729502) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521563731294) (:by |root) (:text |:done-tasks)
                      |j $ %{} :Expr (:at 1521563731672) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521563731995) (:by |root) (:text |{})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.schema)
    |app.server $ %{} :FileEntry
      :defs $ {}
        |*client-caches $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |*client-caches)
              |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |{})
        |*initial-db $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636953131015) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |*initial-db)
              |r $ %{} :Expr (:at 1636953131015) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1636953131015) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |path-exists?)
                      |j $ %{} :Expr (:at 1636953131015) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |w-log)
                          |j $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |storage-file)
                  |r $ %{} :Expr (:at 1636953131015) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |do)
                      |j $ %{} :Expr (:at 1636953131015) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text "|\"Found local EDN data")
                      |r $ %{} :Expr (:at 1636953131015) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |merge)
                          |j $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |schema/database)
                          |r $ %{} :Expr (:at 1636953131015) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                              |j $ %{} :Expr (:at 1636953131015) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |read-file)
                                  |j $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |storage-file)
                  |v $ %{} :Expr (:at 1636953131015) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |do)
                      |j $ %{} :Expr (:at 1636953131015) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text "|\"Found no data")
                      |r $ %{} :Leaf (:at 1636953131015) (:by |B1y7Rc-Zz) (:text |schema/database)
        |*reader-reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |*reader-reel)
              |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |@*reel)
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |*reel)
              |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |merge)
                  |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reel-schema)
                  |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |{})
                      |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:base)
                          |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |@*initial-db)
                      |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:db)
                          |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |@*initial-db)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |dispatch!)
              |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op)
                  |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid)
              |v $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op-id)
                          |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636953417063) (:by |B1y7Rc-Zz) (:text |generate-id!)
                      |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op-time)
                          |j $ %{} :Expr (:at 1637898916196) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1637898950132) (:by |B1y7Rc-Zz) (:text |->)
                              |T $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953184736) (:by |B1y7Rc-Zz) (:text |get-time!)
                              |j $ %{} :Expr (:at 1637898950782) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1637898953735) (:by |B1y7Rc-Zz) (:text |.timestamp)
                  |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text "|\"Dispatch!")
                          |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |str)
                              |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op)
                          |x $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid)
                  |v $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695976980625) (:by |B1y7Rc-Zz) (:text |tag-match)
                      |b $ %{} :Leaf (:at 1695976982056) (:by |B1y7Rc-Zz) (:text |op)
                      |j $ %{} :Expr (:at 1695976986451) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:effect/persist)
                          |b $ %{} :Expr (:at 1695976988945) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695976988945) (:by |B1y7Rc-Zz) (:text |persist-db!)
                      |p $ %{} :Expr (:at 1695976992136) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1695976992136) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695976992136) (:by |B1y7Rc-Zz) (:text |:effect/ping)
                          |b $ %{} :Expr (:at 1695976996434) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695976996434) (:by |B1y7Rc-Zz) (:text |wss-send!)
                              |b $ %{} :Leaf (:at 1695976996434) (:by |B1y7Rc-Zz) (:text |sid)
                              |h $ %{} :Expr (:at 1695976996434) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695976996434) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                                  |b $ %{} :Expr (:at 1695976996434) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695976996434) (:by |B1y7Rc-Zz) (:text |::)
                                      |b $ %{} :Leaf (:at 1695976996434) (:by |B1y7Rc-Zz) (:text |:effect/pong)
                      |v $ %{} :Expr (:at 1695976990587) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695976991019) (:by |B1y7Rc-Zz) (:text |_)
                          |T $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reset!)
                              |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |*reel)
                              |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reel-reducer)
                                  |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |@*reel)
                                  |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |updater)
                                  |v $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op)
                                  |y $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid)
                                  |yT $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op-id)
                                  |yj $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |op-time)
                                  |yr $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |config/dev?)
        |get-backup-path! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636953401126) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |get-backup-path!)
              |r $ %{} :Expr (:at 1636953401126) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636953401126) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1636953401126) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1636953401126) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |now)
                          |j $ %{} :Expr (:at 1636953401126) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |extract-time)
                              |j $ %{} :Expr (:at 1636953401126) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |get-time!)
                  |r $ %{} :Expr (:at 1636953401126) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |join-path)
                      |j $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |r $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text "|\"backups")
                      |v $ %{} :Expr (:at 1636953401126) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Expr (:at 1636953401126) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |:month)
                              |j $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |now)
                      |x $ %{} :Expr (:at 1636953401126) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Expr (:at 1636953401126) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |:day)
                              |j $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text |now)
                          |r $ %{} :Leaf (:at 1636953401126) (:by |B1y7Rc-Zz) (:text "|\"-snapshot.cirru")
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |main!)
              |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text "|\"release")
              |x $ %{} :Expr (:at 1636953210810) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1636953210810) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1636953210810) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |p?)
                          |j $ %{} :Expr (:at 1636953210810) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |get-env)
                              |j $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text "|\"port")
                      |j $ %{} :Expr (:at 1636953210810) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |port)
                          |j $ %{} :Expr (:at 1636953210810) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Expr (:at 1636953210810) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |some?)
                                  |j $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |p?)
                              |r $ %{} :Expr (:at 1636953210810) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953218209) (:by |B1y7Rc-Zz) (:text |parse-float)
                                  |j $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |p?)
                              |v $ %{} :Expr (:at 1636953210810) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |:port)
                                  |j $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1636953210810) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |run-server!)
                      |j $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |port)
                  |v $ %{} :Expr (:at 1636953210810) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |println)
                      |j $ %{} :Expr (:at 1636953210810) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text "|\"Server started on port:")
                          |r $ %{} :Leaf (:at 1636953210810) (:by |B1y7Rc-Zz) (:text |port)
              |y $ %{} :Expr (:at 1636953227709) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |do)
                  |j $ %{} :Expr (:at 1636953227709) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |;)
                      |j $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text "|\"init it before doing multi-threading")
                  |r $ %{} :Expr (:at 1636953227709) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |identity)
                      |j $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
              |yT $ %{} :Expr (:at 1636953227709) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |set-interval)
                  |j $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |200)
                  |r $ %{} :Expr (:at 1636953227709) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1636953227709) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |r $ %{} :Expr (:at 1636953227709) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |render-loop!)
              |yj $ %{} :Expr (:at 1636953227709) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |set-interval)
                  |j $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |600000)
                  |r $ %{} :Expr (:at 1636953227709) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1636953227709) (:by |B1y7Rc-Zz)
                        :data $ {}
                      |r $ %{} :Expr (:at 1636953227709) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |persist-db!)
              |yr $ %{} :Expr (:at 1636953227709) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |on-control-c)
                  |j $ %{} :Leaf (:at 1636953227709) (:by |B1y7Rc-Zz) (:text |on-exit!)
        |on-exit! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636953246371) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636953246371) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636953246371) (:by |B1y7Rc-Zz) (:text |on-exit!)
              |r $ %{} :Expr (:at 1636953246371) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636953246371) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953246371) (:by |B1y7Rc-Zz) (:text |persist-db!)
              |x $ %{} :Expr (:at 1636953246371) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953246371) (:by |B1y7Rc-Zz) (:text |;)
                  |j $ %{} :Leaf (:at 1636953246371) (:by |B1y7Rc-Zz) (:text |println)
                  |r $ %{} :Leaf (:at 1636953246371) (:by |B1y7Rc-Zz) (:text "|\"exit code is...")
              |y $ %{} :Expr (:at 1636953246371) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953246371) (:by |B1y7Rc-Zz) (:text |quit!)
                  |j $ %{} :Leaf (:at 1636953246371) (:by |B1y7Rc-Zz) (:text |0)
        |persist-db! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636953262623) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |persist-db!)
              |r $ %{} :Expr (:at 1636953262623) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636953262623) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1636953262623) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1636953262623) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |file-content)
                          |j $ %{} :Expr (:at 1636953262623) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                              |j $ %{} :Expr (:at 1636953262623) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |assoc)
                                  |j $ %{} :Expr (:at 1636953262623) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |:db)
                                      |j $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |@*reel)
                                  |r $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |:sessions)
                                  |v $ %{} :Expr (:at 1636953262623) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |{})
                      |j $ %{} :Expr (:at 1636953262623) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |storage-path)
                          |j $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |storage-file)
                      |r $ %{} :Expr (:at 1636953262623) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |backup-path)
                          |j $ %{} :Expr (:at 1636953262623) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |get-backup-path!)
                  |r $ %{} :Expr (:at 1636953262623) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                      |j $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |storage-path)
                      |r $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |file-content)
                  |v $ %{} :Expr (:at 1636953262623) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                      |j $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |backup-path)
                      |r $ %{} :Leaf (:at 1636953262623) (:by |B1y7Rc-Zz) (:text |file-content)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636953285774) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |reload!)
              |r $ %{} :Expr (:at 1636953285774) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636953285774) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text "|\"Code updated..")
              |x $ %{} :Expr (:at 1636953285774) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1636953285774) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |not)
                      |j $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1636953285774) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |raise)
                      |j $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text "|\"reloading only happens in dev mode")
              |y $ %{} :Expr (:at 1636953285774) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!)
              |yT $ %{} :Expr (:at 1636953285774) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |reset!)
                  |j $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |*reel)
                  |r $ %{} :Expr (:at 1636953285774) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |refresh-reel)
                      |j $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |@*reel)
                      |r $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |@*initial-db)
                      |v $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |updater)
              |yj $ %{} :Expr (:at 1636953285774) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |sync-clients!)
                  |j $ %{} :Leaf (:at 1636953285774) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
        |render-loop! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636953304711) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |render-loop!)
              |r $ %{} :Expr (:at 1636953304711) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1636953304711) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |when)
                  |j $ %{} :Expr (:at 1636953304711) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |not)
                      |j $ %{} :Expr (:at 1636953304711) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |identical?)
                          |j $ %{} :Leaf (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
                          |r $ %{} :Leaf (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |@*reel)
                  |r $ %{} :Expr (:at 1636953304711) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |reset!)
                      |j $ %{} :Leaf (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |*reader-reel)
                      |r $ %{} :Leaf (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |@*reel)
                  |v $ %{} :Expr (:at 1636953304711) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |sync-clients!)
                      |j $ %{} :Leaf (:at 1636953304711) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
        |run-server! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |run-server!)
              |r $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |port)
              |v $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |wss-serve!)
                  |j $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |&{})
                      |j $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:port)
                      |r $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |port)
                  |r $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |data)
                      |r $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686365099003) (:by |B1y7Rc-Zz) (:text |tag-match)
                          |j $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |data)
                          |r $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:connect)
                                  |j $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |sid)
                              |j $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |do)
                                  |j $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                      |j $ %{} :Expr (:at 1695058452859) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1695058453496) (:by |B1y7Rc-Zz) (:text |::)
                                          |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:session/connect)
                                      |v $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |sid)
                                  |r $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |println)
                                      |j $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text "|\"New client.")
                          |v $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:message)
                                  |j $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |sid)
                                  |r $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |msg)
                              |j $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |let)
                                  |j $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |action)
                                          |j $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                                              |j $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |msg)
                                  |n $ %{} :Expr (:at 1695058442257) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695058444740) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                      |b $ %{} :Leaf (:at 1695058446267) (:by |B1y7Rc-Zz) (:text |action)
                                      |h $ %{} :Leaf (:at 1695058447629) (:by |B1y7Rc-Zz) (:text |sid)
                          |x $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:disconnect)
                                  |j $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |sid)
                              |j $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |do)
                                  |j $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |println)
                                      |j $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text "|\"Client closed!")
                                  |r $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |dispatch!)
                                      |j $ %{} :Expr (:at 1695058455731) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1695058456279) (:by |B1y7Rc-Zz) (:text |::)
                                          |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |:session/disconnect)
                                      |v $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |sid)
                          |y $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |_)
                              |j $ %{} :Expr (:at 1636953321482) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695058461876) (:by |B1y7Rc-Zz) (:text |eprintln)
                                  |j $ %{} :Leaf (:at 1695058460021) (:by |B1y7Rc-Zz) (:text "|\"unknown data:")
                                  |r $ %{} :Leaf (:at 1636953321482) (:by |B1y7Rc-Zz) (:text |data)
        |storage-file $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1636953338581) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |storage-file)
              |r $ %{} :Expr (:at 1636953338581) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1636953338581) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |empty?)
                      |j $ %{} :Leaf (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                  |r $ %{} :Expr (:at 1636953338581) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |str)
                      |j $ %{} :Leaf (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |r $ %{} :Expr (:at 1636953338581) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |:storage-file)
                          |j $ %{} :Leaf (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |config/site)
                  |v $ %{} :Expr (:at 1636953338581) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |str)
                      |j $ %{} :Leaf (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                      |r $ %{} :Leaf (:at 1636953338581) (:by |B1y7Rc-Zz) (:text "|\"/")
                      |v $ %{} :Expr (:at 1636953338581) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |:storage-file)
                          |j $ %{} :Leaf (:at 1636953338581) (:by |B1y7Rc-Zz) (:text |config/site)
        |sync-clients! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sync-clients!)
              |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reel)
              |v $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |wss-each!)
                  |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid)
                      |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |let)
                          |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |db)
                                  |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:db)
                                      |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reel)
                              |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |records)
                                  |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:records)
                                      |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reel)
                              |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |session)
                                  |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |get-in)
                                      |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |db)
                                      |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |[])
                                          |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:sessions)
                                          |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid)
                              |v $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |old-store)
                                  |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |or)
                                      |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |get)
                                          |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |@*client-caches)
                                          |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid)
                                      |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |nil)
                              |x $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |new-store)
                                  |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |twig-container)
                                      |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |db)
                                      |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |session)
                                      |v $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |records)
                              |y $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |changes)
                                  |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |diff-twig)
                                      |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |old-store)
                                      |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |new-store)
                                      |v $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:key)
                                              |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:id)
                          |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1636953833766) (:by |B1y7Rc-Zz) (:text |;)
                              |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |when)
                              |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |config/dev?)
                              |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |println)
                                  |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text "|\"Changes for")
                                  |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid)
                                  |v $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text "|\":")
                                  |x $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |changes)
                                  |y $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |count)
                                      |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |records)
                          |v $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |not=)
                                  |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |changes)
                                  |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |[])
                              |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |do)
                                  |j $ %{} :Expr (:at 1636953378462) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1636953378462) (:by |B1y7Rc-Zz) (:text |wss-send!)
                                      |j $ %{} :Leaf (:at 1636953378462) (:by |B1y7Rc-Zz) (:text |sid)
                                      |r $ %{} :Expr (:at 1636953378462) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1636953378462) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                                          |b $ %{} :Expr (:at 1695058576820) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695058577031) (:by |B1y7Rc-Zz) (:text |::)
                                              |b $ %{} :Leaf (:at 1695058578251) (:by |B1y7Rc-Zz) (:text |:patch)
                                              |h $ %{} :Leaf (:at 1695058580136) (:by |B1y7Rc-Zz) (:text |changes)
                                  |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |swap!)
                                      |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |*client-caches)
                                      |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |v $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |sid)
                                      |x $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |new-store)
              |x $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |new-twig-loop!)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
          :data $ {}
            |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |ns)
            |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |app.server)
            |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:require)
                |j $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |app.schema)
                    |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:as)
                    |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |schema)
                |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |app.updater)
                    |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |updater)
                |x $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |cumulo-reel.core)
                    |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reel-reducer)
                        |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |refresh-reel)
                        |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |reel-schema)
                |yj $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |app.config)
                    |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:as)
                    |r $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |config)
                |yx $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |app.twig.container)
                    |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |twig-container)
                |yy $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |recollect.diff)
                    |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |diff-twig)
                |yyT $ %{} :Expr (:at 1636953148283) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636953148283) (:by |B1y7Rc-Zz) (:text |wss.core)
                    |j $ %{} :Leaf (:at 1636953148283) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636953148283) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636953148283) (:by |B1y7Rc-Zz) (:text |wss-serve!)
                        |j $ %{} :Leaf (:at 1636953148283) (:by |B1y7Rc-Zz) (:text |wss-send!)
                        |r $ %{} :Leaf (:at 1636953148283) (:by |B1y7Rc-Zz) (:text |wss-each!)
                |yyj $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |recollect.twig)
                    |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629913374561) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |new-twig-loop!)
                        |j $ %{} :Leaf (:at 1629913374561) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!)
                |yyr $ %{} :Expr (:at 1636953139978) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |app.$meta)
                    |j $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636953139978) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |calcit-dirname)
                |yyv $ %{} :Expr (:at 1636953139978) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |calcit.std.fs)
                    |j $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636953139978) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |path-exists?)
                        |j $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |check-write-file!)
                |yyx $ %{} :Expr (:at 1636953139978) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |calcit.std.time)
                    |j $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636953139978) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |set-interval)
                |yyy $ %{} :Expr (:at 1636953139978) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |calcit.std.date)
                    |j $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636953139978) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |get-time!)
                        |j $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |extract-time)
                |yyyT $ %{} :Expr (:at 1636953139978) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |calcit.std.path)
                    |j $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636953139978) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636953139978) (:by |B1y7Rc-Zz) (:text |join-path)
    |app.style $ %{} :FileEntry
      :defs $ {}
        |button $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1524160935247) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1524160937319) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1524160935247) (:by |root) (:text |button)
              |r $ %{} :Expr (:at 1524160935247) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524160938652) (:by |root) (:text |merge)
                  |j $ %{} :Leaf (:at 1524160940955) (:by |root) (:text |ui/button)
                  |r $ %{} :Expr (:at 1524160941539) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524160941939) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1524160942169) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524160946595) (:by |root) (:text |:border-radius)
                          |j $ %{} :Leaf (:at 1524160948141) (:by |root) (:text "|\"16px")
        |link $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519367966237) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1519367970413) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1519367966237) (:by |root) (:text |link)
              |r $ %{} :Expr (:at 1519367966237) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519367974187) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1519367974501) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519367980887) (:by |root) (:text |:text-decoration)
                      |j $ %{} :Leaf (:at 1519367984967) (:by |root) (:text |:underline)
                  |r $ %{} :Expr (:at 1519367985371) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519367998049) (:by |root) (:text |:cursor)
                      |j $ %{} :Leaf (:at 1519367996458) (:by |root) (:text |:pointer)
                  |v $ %{} :Expr (:at 1519368028360) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519368029579) (:by |root) (:text |:color)
                      |j $ %{} :Expr (:at 1519368031142) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519368031562) (:by |root) (:text |hsl)
                          |j $ %{} :Leaf (:at 1519368032307) (:by |root) (:text |240)
                          |r $ %{} :Leaf (:at 1519368032737) (:by |root) (:text |80)
                          |v $ %{} :Leaf (:at 1519368033240) (:by |root) (:text |80)
                  |x $ %{} :Expr (:at 1519368217607) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519368219848) (:by |root) (:text |:font-family)
                      |j $ %{} :Leaf (:at 1519368227853) (:by |root) (:text |ui/font-fancy)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1519367963533) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1519367963533) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1519367963533) (:by |root) (:text |app.style)
            |r $ %{} :Expr (:at 1519368036923) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1519368038192) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1519368038575) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1519368038764) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629914347359) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1519368041713) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519368041918) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519368042785) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1519368043289) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1519368236509) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1519368236979) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1519368258261) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1519368241627) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1519368242073) (:by |root) (:text |ui)
    |app.twig.container $ %{} :FileEntry
      :defs $ {}
        |twig-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913401171) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-container)
              |n $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                  |r $ %{} :Leaf (:at 1507828952210) (:by |root) (:text |records)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |logged-in?)
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |some?)
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |r $ %{} :Expr (:at 1507830626848) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507830630278) (:by |root) (:text |base-data)
                          |j $ %{} :Expr (:at 1507830631302) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507830631896) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1507830632113) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830641027) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1507830639219) (:by |root) (:text |logged-in?)
                              |n $ %{} :Expr (:at 1507830674443) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830677551) (:by |root) (:text |:session)
                                  |j $ %{} :Leaf (:at 1507830679311) (:by |root) (:text |session)
                              |v $ %{} :Expr (:at 1507830649968) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830655148) (:by |root) (:text |:reel-length)
                                  |j $ %{} :Expr (:at 1507830655987) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507830657551) (:by |root) (:text |count)
                                      |j $ %{} :Leaf (:at 1507830658789) (:by |root) (:text |records)
                  |r $ %{} :Expr (:at 1507830661017) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1507830661999) (:by |root) (:text |merge)
                      |L $ %{} :Leaf (:at 1507830664014) (:by |root) (:text |base-data)
                      |T $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |if)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |logged-in?)
                          |r $ %{} :Expr (:at 1521563747303) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521563748075) (:by |root) (:text |let)
                              |L $ %{} :Expr (:at 1521563748645) (:by |root)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1521563752109) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521563753505) (:by |root) (:text |user)
                                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |get-in)
                                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                                          |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:users)
                                              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                              |T $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user)
                                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
                                          |j $ %{} :Leaf (:at 1521563803904) (:by |root) (:text |user)
                                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                      |j $ %{} :Expr (:at 1520962667475) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1520962670606) (:by |root) (:text |assoc)
                                          |L $ %{} :Leaf (:at 1520962672999) (:by |root) (:text |router)
                                          |P $ %{} :Leaf (:at 1520962674110) (:by |root) (:text |:data)
                                          |T $ %{} :Expr (:at 1520962628859) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629913492128) (:by |B1y7Rc-Zz) (:text |case-default)
                                              |T $ %{} :Expr (:at 1520962632373) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1520962634462) (:by |root) (:text |:name)
                                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                                              |b $ %{} :Expr (:at 1629913489824) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629913489824) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1520962635169) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520962637165) (:by |root) (:text |:home)
                                                  |j $ %{} :Expr (:at 1520962681587) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1520962809504) (:by |root) (:text |:working-tasks)
                                                      |j $ %{} :Leaf (:at 1521563808208) (:by |root) (:text |user)
                                              |r $ %{} :Expr (:at 1520962637615) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520962815350) (:by |root) (:text |:pending)
                                                  |j $ %{} :Expr (:at 1520962815696) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1520962820095) (:by |root) (:text |:pending-tasks)
                                                      |j $ %{} :Leaf (:at 1521563809867) (:by |root) (:text |user)
                                              |t $ %{} :Expr (:at 1545759837631) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1545759837631) (:by |root) (:text |:profile)
                                                  |j $ %{} :Expr (:at 1545759837631) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1545759837631) (:by |root) (:text |twig-members)
                                                      |j $ %{} :Expr (:at 1545759837631) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1545759837631) (:by |root) (:text |:sessions)
                                                          |j $ %{} :Leaf (:at 1545759837631) (:by |root) (:text |db)
                                                      |r $ %{} :Expr (:at 1545759837631) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1545759837631) (:by |root) (:text |:users)
                                                          |j $ %{} :Leaf (:at 1545759837631) (:by |root) (:text |db)
                                              |v $ %{} :Expr (:at 1520962654786) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1520962656662) (:by |root) (:text |:done)
                                                  |j $ %{} :Expr (:at 1531641878687) (:by |root)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1531641884818) (:by |root) (:text |twig-done-tasks)
                                                      |T $ %{} :Expr (:at 1520962822697) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1520962825409) (:by |root) (:text |:done-tasks)
                                                          |j $ %{} :Leaf (:at 1521563811813) (:by |root) (:text |user)
                                                      |j $ %{} :Expr (:at 1531641888223) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1531641890243) (:by |root) (:text |:data)
                                                          |j $ %{} :Leaf (:at 1531641890969) (:by |root) (:text |router)
                                  |yT $ %{} :Expr (:at 1521737426802) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521737432593) (:by |root) (:text |:numbers)
                                      |j $ %{} :Expr (:at 1521737433474) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521737433955) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1521737434626) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1521737454715) (:by |root) (:text |:sessions)
                                              |j $ %{} :Expr (:at 1521737455084) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1521737457795) (:by |root) (:text |count)
                                                  |j $ %{} :Expr (:at 1521737458561) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1521737460203) (:by |root) (:text |:sessions)
                                                      |j $ %{} :Leaf (:at 1521737460734) (:by |root) (:text |db)
                                          |r $ %{} :Expr (:at 1521737462261) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1521737470976) (:by |root) (:text |:working)
                                              |j $ %{} :Expr (:at 1521737471634) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1521737474203) (:by |root) (:text |count)
                                                  |j $ %{} :Expr (:at 1521737474508) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1521737479805) (:by |root) (:text |:working-tasks)
                                                      |j $ %{} :Leaf (:at 1521737480427) (:by |root) (:text |user)
                                          |v $ %{} :Expr (:at 1521737462261) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1521737484987) (:by |root) (:text |:pending)
                                              |j $ %{} :Expr (:at 1521737471634) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1521737474203) (:by |root) (:text |count)
                                                  |j $ %{} :Expr (:at 1521737474508) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1521737488211) (:by |root) (:text |:pending-tasks)
                                                      |j $ %{} :Leaf (:at 1521737480427) (:by |root) (:text |user)
                                          |x $ %{} :Expr (:at 1521737462261) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1521737489936) (:by |root) (:text |:done)
                                              |j $ %{} :Expr (:at 1521737471634) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1521737474203) (:by |root) (:text |count)
                                                  |j $ %{} :Expr (:at 1521737474508) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1521737491654) (:by |root) (:text |:done-tasks)
                                                      |j $ %{} :Leaf (:at 1521737480427) (:by |root) (:text |user)
                                  |yj $ %{} :Expr (:at 1524244363271) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524244368230) (:by |root) (:text |:color)
                                      |j $ %{} :Expr (:at 1524244484475) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1636953076569) (:by |B1y7Rc-Zz) (:text |rand-hex-color!)
                          |v $ %{} :Expr (:at 1636953102863) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1636953104605) (:by |B1y7Rc-Zz) (:text |{})
        |twig-done-tasks $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1531641892912) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913441665) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1531641892912) (:by |root) (:text |twig-done-tasks)
              |r $ %{} :Expr (:at 1531641892912) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1531641901206) (:by |root) (:text |done-tasks)
                  |j $ %{} :Leaf (:at 1531641911630) (:by |root) (:text |year-month)
              |t $ %{} :Expr (:at 1531641998967) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1531642000376) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1531642000601) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1531642002195) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1531642005801) (:by |root) (:text |year-months)
                          |j $ %{} :Expr (:at 1531642007645) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629915083175) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Leaf (:at 1531642011167) (:by |root) (:text |done-tasks)
                              |l $ %{} :Expr (:at 1637899698705) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1637899856566) (:by |B1y7Rc-Zz) (:text |&map:map-list)
                                  |j $ %{} :Expr (:at 1637899700746) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1637899701779) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1637899743549) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1637899744847) (:by |B1y7Rc-Zz) (:text |pair)
                                      |r $ %{} :Expr (:at 1637899819104) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1637899819104) (:by |B1y7Rc-Zz) (:text |->)
                                          |j $ %{} :Leaf (:at 1637899819104) (:by |B1y7Rc-Zz) (:text |pair)
                                          |r $ %{} :Expr (:at 1637899819104) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1637899924104) (:by |B1y7Rc-Zz) (:text |&list:nth)
                                              |j $ %{} :Leaf (:at 1637899924905) (:by |B1y7Rc-Zz) (:text |1)
                                          |v $ %{} :Expr (:at 1637899819104) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1637899868241) (:by |B1y7Rc-Zz) (:text |&map:get)
                                              |j $ %{} :Leaf (:at 1637899819104) (:by |B1y7Rc-Zz) (:text |:time)
                                          |x $ %{} :Expr (:at 1637899819104) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1637899819104) (:by |B1y7Rc-Zz) (:text |wrap-format-time)
                                              |j $ %{} :Leaf (:at 1637899819104) (:by |B1y7Rc-Zz) (:text "|\"%Y-%m")
                              |yT $ %{} :Expr (:at 1629913515558) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953557149) (:by |B1y7Rc-Zz) (:text |distinct)
                      |j $ %{} :Expr (:at 1531642306229) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1531642311487) (:by |root) (:text |cursor)
                          |j $ %{} :Expr (:at 1531642312311) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1531642312593) (:by |root) (:text |or)
                              |j $ %{} :Leaf (:at 1531642320869) (:by |root) (:text |year-month)
                              |r $ %{} :Expr (:at 1531642324718) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1636953698933) (:by |B1y7Rc-Zz) (:text |&list:max)
                                  |j $ %{} :Leaf (:at 1531642452708) (:by |root) (:text |year-months)
                      |r $ %{} :Expr (:at 1531642343598) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1531642417788) (:by |root) (:text |reading-tasks)
                          |j $ %{} :Expr (:at 1531642353337) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913447320) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Leaf (:at 1531642358261) (:by |root) (:text |done-tasks)
                              |r $ %{} :Expr (:at 1531642359586) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1637899963829) (:by |B1y7Rc-Zz) (:text |&map:filter-kv)
                                  |j $ %{} :Expr (:at 1531642361481) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1531642362558) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1531642362987) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1637899966327) (:by |B1y7Rc-Zz) (:text |k)
                                          |j $ %{} :Leaf (:at 1637899967151) (:by |B1y7Rc-Zz) (:text |task)
                                      |r $ %{} :Expr (:at 1531642366677) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1637899998200) (:by |B1y7Rc-Zz) (:text |&=)
                                          |j $ %{} :Leaf (:at 1531642369205) (:by |root) (:text |cursor)
                                          |v $ %{} :Expr (:at 1636953650134) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1636953651831) (:by |B1y7Rc-Zz) (:text |->)
                                              |j $ %{} :Expr (:at 1636953654283) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1637899987764) (:by |B1y7Rc-Zz) (:text |&map:get)
                                                  |j $ %{} :Leaf (:at 1636953654283) (:by |B1y7Rc-Zz) (:text |task)
                                                  |r $ %{} :Leaf (:at 1637899990128) (:by |B1y7Rc-Zz) (:text |:time)
                                              |r $ %{} :Expr (:at 1636953657757) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1637899429633) (:by |B1y7Rc-Zz) (:text |wrap-format-time)
                                                  |j $ %{} :Leaf (:at 1636954147168) (:by |B1y7Rc-Zz) (:text "|\"%Y-%m")
                  |r $ %{} :Expr (:at 1531641916741) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1531641917121) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1531642035836) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1531642037271) (:by |root) (:text |:months)
                          |j $ %{} :Leaf (:at 1531642037961) (:by |root) (:text |year-months)
                      |n $ %{} :Expr (:at 1531642425330) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1531642427777) (:by |root) (:text |:cursor)
                          |j $ %{} :Leaf (:at 1531642429405) (:by |root) (:text |cursor)
                      |r $ %{} :Expr (:at 1531642395763) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1531642420163) (:by |root) (:text |:tasks)
                          |j $ %{} :Leaf (:at 1531642423871) (:by |root) (:text |reading-tasks)
        |twig-members $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545759850566) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913434527) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |twig-members)
              |r $ %{} :Expr (:at 1545759850566) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |sessions)
                  |j $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |users)
              |v $ %{} :Expr (:at 1545759850566) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913423781) (:by |B1y7Rc-Zz) (:text |->)
                  |j $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |sessions)
                  |r $ %{} :Expr (:at 1545759850566) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913426565) (:by |B1y7Rc-Zz) (:text |map-kv)
                      |j $ %{} :Expr (:at 1545759850566) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1545759850566) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |k)
                              |j $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |session)
                          |r $ %{} :Expr (:at 1545759850566) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |k)
                              |r $ %{} :Expr (:at 1545759850566) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |get-in)
                                  |j $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |users)
                                  |r $ %{} :Expr (:at 1545759850566) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |[])
                                      |j $ %{} :Expr (:at 1545759850566) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |:user-id)
                                          |j $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |session)
                                      |r $ %{} :Leaf (:at 1545759850566) (:by |root) (:text |:name)
        |wrap-format-time $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1637899430728) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1637899433607) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1637899430728) (:by |B1y7Rc-Zz) (:text |wrap-format-time)
              |r $ %{} :Expr (:at 1637899430728) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1637899437769) (:by |B1y7Rc-Zz) (:text |stamp)
                  |j $ %{} :Leaf (:at 1637899443039) (:by |B1y7Rc-Zz) (:text |format)
              |v $ %{} :Expr (:at 1637899443386) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1637899444898) (:by |B1y7Rc-Zz) (:text |format-time)
                  |j $ %{} :Expr (:at 1637899447882) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1637899448149) (:by |B1y7Rc-Zz) (:text |::)
                      |j $ %{} :Leaf (:at 1637899450119) (:by |B1y7Rc-Zz) (:text |Date)
                      |r $ %{} :Leaf (:at 1637899459152) (:by |B1y7Rc-Zz) (:text |stamp)
                  |r $ %{} :Leaf (:at 1637899462696) (:by |B1y7Rc-Zz) (:text |format)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.container)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.user)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
                |y $ %{} :Expr (:at 1636953094263) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636953094263) (:by |B1y7Rc-Zz) (:text |calcit.std.rand)
                    |j $ %{} :Leaf (:at 1636953094263) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636953094263) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636953094263) (:by |B1y7Rc-Zz) (:text |rand-hex-color!)
                |yT $ %{} :Expr (:at 1636953578539) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636953581150) (:by |B1y7Rc-Zz) (:text |calcit.std.date)
                    |j $ %{} :Leaf (:at 1636953582013) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636953582221) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636953586569) (:by |B1y7Rc-Zz) (:text |extract-time)
                        |j $ %{} :Leaf (:at 1636953625715) (:by |B1y7Rc-Zz) (:text |format-time)
                        |r $ %{} :Leaf (:at 1637899454328) (:by |B1y7Rc-Zz) (:text |Date)
    |app.twig.user $ %{} :FileEntry
      :defs $ {}
        |twig-user $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913415981) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
              |v $ %{} :Expr (:at 1521563771994) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1521563773568) (:by |root) (:text |->)
                  |L $ %{} :Leaf (:at 1521563775112) (:by |root) (:text |user)
                  |T $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |dissoc)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
                  |j $ %{} :Expr (:at 1521563777873) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521563779385) (:by |root) (:text |dissoc)
                      |j $ %{} :Leaf (:at 1521563782008) (:by |root) (:text |:done-tasks)
                  |r $ %{} :Expr (:at 1521563783111) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521563785012) (:by |root) (:text |dissoc)
                      |j $ %{} :Leaf (:at 1521563787677) (:by |root) (:text |:working-tasks)
                  |v $ %{} :Expr (:at 1521563788158) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521563790582) (:by |root) (:text |dissoc)
                      |j $ %{} :Leaf (:at 1521563796215) (:by |root) (:text |:pending-tasks)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.user)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1517930722619) (:by |root) (:text |sid)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |y $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |tag-match)
                  |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op)
                  |h $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |:session/connect)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |session/connect)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |sid)
                          |l $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-id)
                          |o $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-time)
                  |l $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |:session/disconnect)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |session/disconnect)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |sid)
                          |l $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-id)
                          |o $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-time)
                  |o $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |user/log-in)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-time)
                  |q $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |:user/sign-up)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |user/sign-up)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-time)
                  |s $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |:user/log-out)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |user/log-out)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |sid)
                          |l $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-id)
                          |o $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-time)
                  |t $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |:session/remove-message)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |session/remove-message)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-time)
                  |u $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |:router/change)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |router/change)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-time)
                  |v $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |:task/create)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |task/create)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-time)
                  |w $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |:task/move-task)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |task/move-task)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-time)
                  |x $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |:task/update-text)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |task/update-text)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-time)
                  |y $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |:task/remove-done)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |task/remove-done)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-time)
                  |z $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |:task/clear-done)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |task/clear-done)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-time)
                  |zD $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |:task/remove-working)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |task/remove-working)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-time)
                  |zP $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |:task/touch-working)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |task/touch-working)
                          |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-data)
                          |l $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op-time)
                  |zY $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |_)
                      |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |do)
                          |b $ %{} :Expr (:at 1695058570321) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text "||Unknown op:")
                              |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |op)
                          |h $ %{} :Leaf (:at 1695058570321) (:by |B1y7Rc-Zz) (:text |db)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.session)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.user)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.router)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                |x $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1520962611137) (:by |root) (:text |app.updater.task)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1520962612731) (:by |root) (:text |task)
    |app.updater.router $ %{} :FileEntry
      :defs $ {}
        |change $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |change)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session-id)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session-id)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.router)
    |app.updater.session $ %{} :FileEntry
      :defs $ {}
        |connect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |connect)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session-id)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session-id)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |merge)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema/session)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session-id)
        |disconnect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |disconnect)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session-id)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |update)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |dissoc)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                          |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session-id)
        |remove-message $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |remove-message)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1536860000493) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |update-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1536860002477) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1536859998428) (:by |root) (:text |:messages)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536860007920) (:by |root) (:text |messages)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536860017048) (:by |root) (:text |dissoc)
                          |f $ %{} :Leaf (:at 1536860018556) (:by |root) (:text |messages)
                          |r $ %{} :Expr (:at 1536860022918) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536860025094) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1536860027020) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.session)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema)
    |app.updater.task $ %{} :FileEntry
      :defs $ {}
        |clear-done $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521219826589) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521219826589) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1521219826589) (:by |root) (:text |clear-done)
              |r $ %{} :Expr (:at 1521219826589) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1521219828376) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1521219830211) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1521219831054) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1521219835103) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1521219836085) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1521563964611) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1521563965346) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1521563821744) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1521563821902) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521563823189) (:by |root) (:text |user-id)
                          |j $ %{} :Expr (:at 1521563823541) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521563828340) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1521563834294) (:by |root) (:text |db)
                              |r $ %{} :Expr (:at 1521563834883) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521563836216) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1521563837643) (:by |root) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1521563838500) (:by |root) (:text |sid)
                                  |v $ %{} :Leaf (:at 1521563842537) (:by |root) (:text |:user-id)
                  |T $ %{} :Expr (:at 1521219839212) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521563970977) (:by |root) (:text |assoc-in)
                      |j $ %{} :Leaf (:at 1521219842844) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1521563972539) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1521563973198) (:by |root) (:text |[])
                          |L $ %{} :Leaf (:at 1521563975281) (:by |root) (:text |:users)
                          |P $ %{} :Leaf (:at 1521563976262) (:by |root) (:text |user-id)
                          |T $ %{} :Leaf (:at 1521219846405) (:by |root) (:text |:done-tasks)
                      |v $ %{} :Expr (:at 1521219847163) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521219847612) (:by |root) (:text |{})
        |create $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1520962379590) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1520962379590) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1520962379590) (:by |root) (:text |create)
              |r $ %{} :Expr (:at 1520962379590) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1520962386613) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1520962390481) (:by |root) (:text |op-data)
                  |t $ %{} :Leaf (:at 1520962399659) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1520962392119) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1520962397130) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1521563820677) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1521563821494) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1521563821744) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1521563821902) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521563823189) (:by |root) (:text |user-id)
                          |j $ %{} :Expr (:at 1521563823541) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521563828340) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1521563834294) (:by |root) (:text |db)
                              |r $ %{} :Expr (:at 1521563834883) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521563836216) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1521563837643) (:by |root) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1521563838500) (:by |root) (:text |sid)
                                  |v $ %{} :Leaf (:at 1521563842537) (:by |root) (:text |:user-id)
                  |T $ %{} :Expr (:at 1520962421744) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1520962425129) (:by |root) (:text |assoc-in)
                      |j $ %{} :Leaf (:at 1520962425982) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1520962426391) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520962426817) (:by |root) (:text |[])
                          |b $ %{} :Leaf (:at 1521563849128) (:by |root) (:text |:users)
                          |f $ %{} :Leaf (:at 1521563851279) (:by |root) (:text |user-id)
                          |j $ %{} :Leaf (:at 1520962765286) (:by |root) (:text |:working-tasks)
                          |r $ %{} :Leaf (:at 1520962429462) (:by |root) (:text |op-id)
                      |v $ %{} :Expr (:at 1520962430284) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1520962433347) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1520962433677) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520962434497) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1520962436918) (:by |root) (:text |op-id)
                          |r $ %{} :Expr (:at 1520962438366) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520962570013) (:by |root) (:text |:text)
                              |j $ %{} :Leaf (:at 1520962571787) (:by |root) (:text |op-data)
                          |v $ %{} :Expr (:at 1520962573443) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1520962575236) (:by |root) (:text |:mode)
                              |j $ %{} :Leaf (:at 1520962583713) (:by |root) (:text |:working)
                          |x $ %{} :Expr (:at 1521132390040) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521132391552) (:by |root) (:text |:time)
                              |j $ %{} :Leaf (:at 1521132393641) (:by |root) (:text |op-time)
        |move-task $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521044073548) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521044073548) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1521044073548) (:by |root) (:text |move-task)
              |r $ %{} :Expr (:at 1521044073548) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1521044077242) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1521044078246) (:by |root) (:text |op-data)
                  |n $ %{} :Leaf (:at 1521044083638) (:by |root) (:text |sid)
                  |r $ %{} :Leaf (:at 1521044080083) (:by |root) (:text |op-id)
                  |v $ %{} :Leaf (:at 1521044081067) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1521044148184) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1521044148845) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1521044149032) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1521044149180) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521044150206) (:by |root) (:text |task-id)
                          |j $ %{} :Expr (:at 1521044150631) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521044151130) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1521044152150) (:by |root) (:text |op-data)
                      |j $ %{} :Expr (:at 1521563821902) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521563823189) (:by |root) (:text |user-id)
                          |j $ %{} :Expr (:at 1521563823541) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521563828340) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1521563834294) (:by |root) (:text |db)
                              |r $ %{} :Expr (:at 1521563834883) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521563836216) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1521563837643) (:by |root) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1521563838500) (:by |root) (:text |sid)
                                  |v $ %{} :Leaf (:at 1521563842537) (:by |root) (:text |:user-id)
                  |T $ %{} :Expr (:at 1567350229046) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1567350229629) (:by |B1y7Rc-Zz) (:text |if)
                      |L $ %{} :Expr (:at 1567350229873) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1567350230562) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Expr (:at 1567350236425) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1567350236425) (:by |B1y7Rc-Zz) (:text |get-in)
                              |j $ %{} :Leaf (:at 1567350238545) (:by |B1y7Rc-Zz) (:text |db)
                              |r $ %{} :Expr (:at 1567350236425) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1567350236425) (:by |B1y7Rc-Zz) (:text |[])
                                  |b $ %{} :Leaf (:at 1567350241655) (:by |B1y7Rc-Zz) (:text |:users)
                                  |f $ %{} :Leaf (:at 1567350243372) (:by |B1y7Rc-Zz) (:text |user-id)
                                  |j $ %{} :Expr (:at 1567350236425) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1567350236425) (:by |B1y7Rc-Zz) (:text |:from)
                                      |j $ %{} :Leaf (:at 1567350236425) (:by |B1y7Rc-Zz) (:text |op-data)
                                  |r $ %{} :Leaf (:at 1567350236425) (:by |B1y7Rc-Zz) (:text |task-id)
                      |T $ %{} :Expr (:at 1521563884599) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1521563888044) (:by |root) (:text |update-in)
                          |L $ %{} :Leaf (:at 1521563888459) (:by |root) (:text |db)
                          |P $ %{} :Expr (:at 1521563889039) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521563889260) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1521563892031) (:by |root) (:text |:users)
                              |r $ %{} :Leaf (:at 1521563907422) (:by |root) (:text |user-id)
                          |T $ %{} :Expr (:at 1521563908542) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521563909650) (:by |root) (:text |fn)
                              |L $ %{} :Expr (:at 1521563909896) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521563910311) (:by |root) (:text |user)
                              |T $ %{} :Expr (:at 1521044084828) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521044092538) (:by |root) (:text |->)
                                  |j $ %{} :Leaf (:at 1521563914048) (:by |root) (:text |user)
                                  |r $ %{} :Expr (:at 1521044094496) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521044102618) (:by |root) (:text |assoc-in)
                                      |j $ %{} :Expr (:at 1521044103286) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521044103533) (:by |root) (:text |[])
                                          |j $ %{} :Expr (:at 1521044103906) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1521044110094) (:by |root) (:text |:to)
                                              |j $ %{} :Leaf (:at 1521044112713) (:by |root) (:text |op-data)
                                          |r $ %{} :Leaf (:at 1521044155294) (:by |root) (:text |task-id)
                                      |r $ %{} :Expr (:at 1521132645592) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1521132648449) (:by |root) (:text |assoc)
                                          |T $ %{} :Expr (:at 1521044136003) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1521044137971) (:by |root) (:text |get-in)
                                              |j $ %{} :Leaf (:at 1521564393618) (:by |root) (:text |user)
                                              |r $ %{} :Expr (:at 1521044139840) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1521044140913) (:by |root) (:text |[])
                                                  |j $ %{} :Expr (:at 1521044141311) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1521044141961) (:by |root) (:text |:from)
                                                      |j $ %{} :Leaf (:at 1521044144037) (:by |root) (:text |op-data)
                                                  |r $ %{} :Leaf (:at 1521044156697) (:by |root) (:text |task-id)
                                          |j $ %{} :Leaf (:at 1521132650459) (:by |root) (:text |:time)
                                          |r $ %{} :Leaf (:at 1521132651462) (:by |root) (:text |op-time)
                                  |v $ %{} :Expr (:at 1521044158462) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521044160988) (:by |root) (:text |update)
                                      |j $ %{} :Expr (:at 1521044162330) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521044164961) (:by |root) (:text |:from)
                                          |j $ %{} :Leaf (:at 1521044166458) (:by |root) (:text |op-data)
                                      |r $ %{} :Expr (:at 1521044166958) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521044167283) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1521044167523) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1521044168314) (:by |root) (:text |tasks)
                                          |r $ %{} :Expr (:at 1521044168835) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1521044170241) (:by |root) (:text |dissoc)
                                              |j $ %{} :Leaf (:at 1521044174019) (:by |root) (:text |tasks)
                                              |r $ %{} :Leaf (:at 1521044174505) (:by |root) (:text |task-id)
                      |j $ %{} :Expr (:at 1567350246936) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1567350249070) (:by |B1y7Rc-Zz) (:text |assoc-in)
                          |j $ %{} :Leaf (:at 1567350250611) (:by |B1y7Rc-Zz) (:text |db)
                          |r $ %{} :Expr (:at 1567350252085) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1567350251277) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1567350254316) (:by |B1y7Rc-Zz) (:text |:sessions)
                              |r $ %{} :Leaf (:at 1567350255236) (:by |B1y7Rc-Zz) (:text |sid)
                              |v $ %{} :Leaf (:at 1567350263106) (:by |B1y7Rc-Zz) (:text |:messages)
                              |x $ %{} :Leaf (:at 1567350269611) (:by |B1y7Rc-Zz) (:text |op-id)
                          |v $ %{} :Expr (:at 1567350289943) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1567350289943) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1567350289943) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1567350289943) (:by |B1y7Rc-Zz) (:text |:id)
                                  |j $ %{} :Leaf (:at 1567350289943) (:by |B1y7Rc-Zz) (:text |op-id)
                              |r $ %{} :Expr (:at 1567350289943) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1567350289943) (:by |B1y7Rc-Zz) (:text |:text)
                                  |j $ %{} :Leaf (:at 1567350289943) (:by |B1y7Rc-Zz) (:text "|\"No such task")
        |remove-done $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521046163785) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521046163785) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1521046163785) (:by |root) (:text |remove-done)
              |r $ %{} :Expr (:at 1521046163785) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1521046165465) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1521046167262) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1521046169236) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1521046170974) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1521046172590) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1521563956061) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1521563956684) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1521563821744) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1521563821902) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521563823189) (:by |root) (:text |user-id)
                          |j $ %{} :Expr (:at 1521563823541) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521563828340) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1521563834294) (:by |root) (:text |db)
                              |r $ %{} :Expr (:at 1521563834883) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521563836216) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1521563837643) (:by |root) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1521563838500) (:by |root) (:text |sid)
                                  |v $ %{} :Leaf (:at 1521563842537) (:by |root) (:text |:user-id)
                  |T $ %{} :Expr (:at 1521046173248) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1567349424110) (:by |B1y7Rc-Zz) (:text |dissoc-in)
                      |j $ %{} :Leaf (:at 1521046175806) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1521563950582) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1521563951265) (:by |root) (:text |[])
                          |L $ %{} :Leaf (:at 1521563953967) (:by |root) (:text |:users)
                          |P $ %{} :Leaf (:at 1521563954988) (:by |root) (:text |user-id)
                          |T $ %{} :Leaf (:at 1521046181110) (:by |root) (:text |:done-tasks)
                          |j $ %{} :Leaf (:at 1567349428740) (:by |B1y7Rc-Zz) (:text |op-data)
        |remove-working $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521825674863) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521825674863) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1521825674863) (:by |root) (:text |remove-working)
              |r $ %{} :Expr (:at 1520962379590) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1520962386613) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1520962390481) (:by |root) (:text |op-data)
                  |t $ %{} :Leaf (:at 1520962399659) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1520962392119) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1520962397130) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1521825691724) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1521825692316) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1521563821744) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1521563821902) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521563823189) (:by |root) (:text |user-id)
                          |j $ %{} :Expr (:at 1521563823541) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521563828340) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1521563834294) (:by |root) (:text |db)
                              |r $ %{} :Expr (:at 1521563834883) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521563836216) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1521563837643) (:by |root) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1521563838500) (:by |root) (:text |sid)
                                  |v $ %{} :Leaf (:at 1521563842537) (:by |root) (:text |:user-id)
                  |T $ %{} :Expr (:at 1521825689134) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1567349966997) (:by |B1y7Rc-Zz) (:text |dissoc-in)
                      |j $ %{} :Leaf (:at 1521825701858) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1521825702454) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521825702616) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1521825784892) (:by |root) (:text |:users)
                          |r $ %{} :Leaf (:at 1521825786779) (:by |root) (:text |user-id)
                          |v $ %{} :Leaf (:at 1521825792582) (:by |root) (:text |:working-tasks)
                          |x $ %{} :Leaf (:at 1567349971935) (:by |B1y7Rc-Zz) (:text |op-data)
        |touch-working $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521826940068) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521826940068) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1521826940068) (:by |root) (:text |touch-working)
              |r $ %{} :Expr (:at 1520962379590) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1520962386613) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1520962390481) (:by |root) (:text |op-data)
                  |t $ %{} :Leaf (:at 1520962399659) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1520962392119) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1520962397130) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1521825691724) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1521825692316) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1521563821744) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1521563821902) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521563823189) (:by |root) (:text |user-id)
                          |j $ %{} :Expr (:at 1521563823541) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521563828340) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1521563834294) (:by |root) (:text |db)
                              |r $ %{} :Expr (:at 1521563834883) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521563836216) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1521563837643) (:by |root) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1521563838500) (:by |root) (:text |sid)
                                  |v $ %{} :Leaf (:at 1521563842537) (:by |root) (:text |:user-id)
                  |T $ %{} :Expr (:at 1521825689134) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1536687856528) (:by |root) (:text |update-in)
                      |j $ %{} :Leaf (:at 1521825701858) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1521825702454) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521825702616) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1521825784892) (:by |root) (:text |:users)
                          |r $ %{} :Leaf (:at 1521825786779) (:by |root) (:text |user-id)
                          |v $ %{} :Leaf (:at 1521825792582) (:by |root) (:text |:working-tasks)
                      |t $ %{} :Expr (:at 1536687858313) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536687859949) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1536687860282) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536688018641) (:by |root) (:text |tasks)
                          |n $ %{} :Expr (:at 1536688019433) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536688020072) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1536688021151) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1542535839811) (:by |root) (:text |some?)
                                  |j $ %{} :Expr (:at 1542535840677) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1542535841620) (:by |root) (:text |get)
                                      |T $ %{} :Leaf (:at 1536688022825) (:by |root) (:text |tasks)
                                      |j $ %{} :Leaf (:at 1542535845306) (:by |root) (:text |op-data)
                              |r $ %{} :Expr (:at 1536688025147) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536688026681) (:by |root) (:text |assoc-in)
                                  |j $ %{} :Leaf (:at 1536688028160) (:by |root) (:text |tasks)
                                  |r $ %{} :Expr (:at 1536688028503) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536688030382) (:by |root) (:text |[])
                                      |j $ %{} :Leaf (:at 1536688032191) (:by |root) (:text |op-data)
                                      |r $ %{} :Leaf (:at 1536688033190) (:by |root) (:text |:time)
                                  |v $ %{} :Leaf (:at 1536688082353) (:by |root) (:text |op-time)
                              |v $ %{} :Leaf (:at 1536688047422) (:by |root) (:text |tasks)
        |update-text $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521133378111) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521133378111) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1521133378111) (:by |root) (:text |update-text)
              |r $ %{} :Expr (:at 1521133378111) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1521133379686) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1521133381048) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1521133382574) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1521133383626) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1521133385073) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1521563927831) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1521563928484) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1521563928723) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1521563821902) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521563823189) (:by |root) (:text |user-id)
                          |j $ %{} :Expr (:at 1521563823541) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521563828340) (:by |root) (:text |get-in)
                              |j $ %{} :Leaf (:at 1521563834294) (:by |root) (:text |db)
                              |r $ %{} :Expr (:at 1521563834883) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521563836216) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1521563837643) (:by |root) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1521563838500) (:by |root) (:text |sid)
                                  |v $ %{} :Leaf (:at 1521563842537) (:by |root) (:text |:user-id)
                  |T $ %{} :Expr (:at 1521133547526) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1521133550726) (:by |root) (:text |update-in)
                      |L $ %{} :Leaf (:at 1521133551903) (:by |root) (:text |db)
                      |P $ %{} :Expr (:at 1521133558931) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521133559280) (:by |root) (:text |[])
                          |b $ %{} :Leaf (:at 1521563936877) (:by |root) (:text |:users)
                          |f $ %{} :Leaf (:at 1521563938560) (:by |root) (:text |user-id)
                          |j $ %{} :Expr (:at 1521133559718) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521133560858) (:by |root) (:text |:group)
                              |j $ %{} :Leaf (:at 1521133562974) (:by |root) (:text |op-data)
                          |r $ %{} :Expr (:at 1521133564668) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521133565817) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1521133566901) (:by |root) (:text |op-data)
                      |T $ %{} :Expr (:at 1521133553753) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1521133554351) (:by |root) (:text |fn)
                          |L $ %{} :Expr (:at 1521133555298) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521133555882) (:by |root) (:text |task)
                          |j $ %{} :Expr (:at 1521133571030) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1521133571945) (:by |root) (:text |assoc)
                              |j $ %{} :Leaf (:at 1521133574406) (:by |root) (:text |task)
                              |r $ %{} :Leaf (:at 1521133575495) (:by |root) (:text |:text)
                              |v $ %{} :Expr (:at 1521133576278) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521133577211) (:by |root) (:text |:text)
                                  |j $ %{} :Leaf (:at 1521133578268) (:by |root) (:text |op-data)
                              |x $ %{} :Leaf (:at 1521133586820) (:by |root) (:text |:time)
                              |y $ %{} :Expr (:at 1521565735247) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521565737499) (:by |root) (:text |:time)
                                  |j $ %{} :Leaf (:at 1521565742154) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1520962369922) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1520962369922) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1520962369922) (:by |root) (:text |app.updater.task)
            |r $ %{} :Expr (:at 1567349409602) (:by |B1y7Rc-Zz)
              :data $ {}
                |T $ %{} :Leaf (:at 1567349410549) (:by |B1y7Rc-Zz) (:text |:require)
                |j $ %{} :Expr (:at 1567349410834) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1567349411021) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1567349417698) (:by |B1y7Rc-Zz) (:text |medley.core)
                    |r $ %{} :Leaf (:at 1567349418476) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1567349418693) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1567349418907) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1567349420978) (:by |B1y7Rc-Zz) (:text |dissoc-in)
    |app.updater.user $ %{} :FileEntry
      :defs $ {}
        |log-in $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |log-in)
              |r $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |db)
                  |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-data)
                  |r $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |sid)
                  |v $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-id)
                  |x $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-time)
              |v $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |username)
                              |r $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |password)
                          |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-data)
                      |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |maybe-user)
                          |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:users)
                                  |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |db)
                              |r $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |vals)
                              |v $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |x $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |find)
                                  |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |user)
                                      |r $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |and)
                                          |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |=)
                                              |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |username)
                                              |r $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |user)
                  |r $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |update-in)
                      |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |db)
                      |r $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |[])
                          |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:sessions)
                          |r $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |sid)
                      |v $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |fn)
                          |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |session)
                          |r $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |some?)
                                  |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |maybe-user)
                              |r $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |if)
                                  |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |=)
                                      |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |md5)
                                          |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |password)
                                      |r $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:password)
                                          |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |maybe-user)
                                  |r $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |session)
                                      |r $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:user-id)
                                      |v $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:id)
                                          |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |maybe-user)
                                  |v $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |update)
                                      |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |session)
                                      |r $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:messages)
                                      |v $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |fn)
                                          |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |messages)
                                          |r $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |messages)
                                              |r $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-id)
                                              |v $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |{})
                                                  |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-id)
                                                  |r $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:text)
                                                      |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |str)
                                                          |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text "|\"Wrong password for ")
                                                          |r $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |username)
                              |v $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |update)
                                  |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |session)
                                  |r $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:messages)
                                  |v $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |messages)
                                      |r $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |assoc)
                                          |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |messages)
                                          |r $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-id)
                                          |v $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |op-id)
                                              |r $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |:text)
                                                  |j $ %{} :Expr (:at 1629913311290) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |str)
                                                      |j $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text "|\"No user named: ")
                                                      |r $ %{} :Leaf (:at 1629913311290) (:by |B1y7Rc-Zz) (:text |username)
        |log-out $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |log-out)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session-id)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session-id)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |sign-up $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |sign-up)
              |r $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |db)
                  |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-data)
                  |r $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |sid)
                  |v $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-id)
                  |x $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-time)
              |v $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |username)
                              |r $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |password)
                          |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-data)
                      |j $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |maybe-user)
                          |j $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |find)
                              |j $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |vals)
                                  |j $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:users)
                                      |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |db)
                              |r $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |user)
                                  |r $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |=)
                                      |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |username)
                                      |r $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:name)
                                          |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |user)
                  |r $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |maybe-user)
                      |r $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |update-in)
                          |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |db)
                          |r $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:sessions)
                              |r $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |sid)
                              |v $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:messages)
                          |v $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |messages)
                              |r $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |assoc)
                                  |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |messages)
                                  |r $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-id)
                                  |v $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:id)
                                          |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-id)
                                      |r $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:text)
                                          |j $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |str)
                                              |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text "|\"Name is taken: ")
                                              |r $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |username)
                      |v $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |->)
                          |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |db)
                          |r $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |assoc-in)
                              |j $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |[])
                                  |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |sid)
                                  |v $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:user-id)
                              |r $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-id)
                          |v $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |assoc-in)
                              |j $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |[])
                                  |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:users)
                                  |r $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-id)
                              |r $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:id)
                                      |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |op-id)
                                  |r $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:name)
                                      |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |username)
                                  |v $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:nickname)
                                      |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |username)
                                  |x $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:password)
                                      |j $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |md5)
                                          |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |password)
                                  |y $ %{} :Expr (:at 1629913319768) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |:avatar)
                                      |j $ %{} :Leaf (:at 1629913319768) (:by |B1y7Rc-Zz) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.user)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1636953500223) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1636953500223) (:by |B1y7Rc-Zz) (:text |calcit.std.hash)
                    |j $ %{} :Leaf (:at 1636953500223) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1636953500223) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1636953500223) (:by |B1y7Rc-Zz) (:text |md5)
                |v $ %{} :Expr (:at 1521564176287) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1521564176596) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1521564179495) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1521564180578) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1521564182529) (:by |root) (:text |schema)
  :users $ {}
    |B1y7Rc-Zz $ {} (:avatar nil) (:id |B1y7Rc-Zz) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
