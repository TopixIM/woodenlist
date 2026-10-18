
Woodenlist: a personal todolist
------

> It's hosted on server and syncs among clients in realtime.

Site http://wood.topix.im/

### develop

https://github.com/Cumulo/calcium-workflow

### 构建与部署

当前迁移候选配对已发布 Calcit / `@calcit/procs` **0.30.1-alpha.5（预发布，不是正式0.30.1）**、
Caps 0.1.1、Node.js 24、Yarn 4.18.0，保留原 browser/native 入口目标。所有模块改为精确正式版本，
不使用 hash、浮动 main 或模块 alpha。没有消费者的 Lilac 已移除。
**源码迁移尚未完成，当前候选不能部署或视为CI通过。**

CI 保留 strict workflow 和工具链门禁，使用当前 `--check-only --ns` 检查两种目标的所有应用定义，
以及定义附带的原生回归测试；不维护额外统计脚本或测试框架。本地不运行 Caps，干净模块安装与
新 native 构建仍需未来 PR Actions 验证。

COS 只上传前端 `dist/`。生产 CDN 路径仍为 `https://cos-sh.tiye.me/TopixIM/woodenlist/`，同仓库 PR 使用 `pr/<编号>/<run-id>/<attempt>/` 隔离资源；fork PR 只构建。`worktools/cos-upload-action@v1.2.0` 用 `public-base-url` 和内置 `verify-*` 默认配置校验，无额外脚本。

生产运行排队且不取消进行中的上传，一次 main SHA 预检跳过旧提交，不保证原子发布。原 web rsync 及 `/servers/woodenlist/` 服务端部署目录保持不变，`dist-server/` 不上传 COS。不启动服务或改变持久化数据；生成目录和旧 Snapshot 不入库。

### 迁移证据与尚未完成的部分

未改源码的0.27.0基线使用原有只读缓存模块图，通过 browser376/376、native53/53、配对JS生成和
CDN base的Vite构建；原项目附带测试为0，不能当作回归通过，也不将旧缓存称为干净依赖安装证明。

SiteConfig已使用真实七字段Struct，保留11000端口、标题、图标、server-folder、主题、存储key和文件名；
删除五处原配置Map读取/Option包装，定义附带测试逐一核对原值。六个namespace的冗余import标记
经官方结构化事务移除，名称与别名不变。npm runtime经原有保护正常安装，无隔离例外。

Task现在是具体Struct：id/text为String、time为Number、mode为Option<Tag>，额外Tag字段保留；
完成记录分组在入口真正解码任务，使用当前Date0 Struct及Option<String>日期格式接口，再编码回原Map
页面数据。旧的两处 `&map:get` 和无消费者的 `as-string-list` 强转helper已移除。缺失mode会规范化
为nil，错误的必要字段类型明确拒绝。前端分发入口检查Enum，并真正解码混合键状态游标为List，
不将它伪装成纯Tag路径；分发/渲染回调按实际副作用返回Unit。

当前6/6原生附带测试通过，包括站点配置、任务及扩展字段往返、实际日期FFI下的指定月份/最新月份/
空列表选择，以及按时间计算位置后按id稳定渲染。任务相关三个视图namespace与schema合计38/38
公开定义通过；当前生成JS另通过Unicode、0时间戳、nil/有值mode和
扩展字段往返。该JS验收只生成纯任务编解码入口到临时目录，不代表完整前端构建或浏览器端到端。
没有将临时脚本、入口或产物纳入仓库。

工作中、待办、已完成视图均消费真实Task；工作位置和渲染次序分开保留，待办的原Map key仍作为
渲染键，不假定它必定等于任务id。任务卡和已完成页本地状态使用具体Struct，写回Respo时仍是原Map。
三种视图内的事件改为单Enum dispatch、Confirm零参数成功任务、Prompt String任务；不再把Prompt
提交文字强转为Option。删除已无消费者的as-list/as-map helper，不增加兼容包装或维护额外runner。

当前生成JS的合成VDOM回放通过新建、工作/待办编辑、菜单Clear、拦截的Confirm操作、完成分组、
编辑开关与移回工作。所有业务dispatch均被测试截获，没有连接服务或删除数据库；不是浏览器端到端
验收。日期标签仍用原dayjs本地日期行为，不为清零计数改成UTC；对应外部对象边界尚保留待审阅。
Prompt公开合同仍擦除回调类型的缺口已用错误Number回调可通过门禁的最小形状报告到
[Alerts #104](https://github.com/Respo/alerts.calcit/issues/104)，不增加编译器迁移规则。

容器、导航、账户视图和登录状态已使用实际类型，访客缺失字段用Option表达，不猜测零值。原始
Recollect补丁和缓存仍保留原Map协议。修复个人页按钮被文本表达式吞掉的布局，密码输入改为遮罩；
原凭据localStorage和认证协议未重新设计，不能将输入遮罩视为存储安全升级。连接、刷新和存储改用
现有共享接口，删除无消费者的三个定义和url-parse依赖；正常查询参数对比9例通过，但畸形百分号
编码采用URL标准处理，与旧库并非完全相同，读取存储异常现在按共享接口返回缺失值。

当前前端全部80/80公开定义及419/419可达定义通过，配对JS生成、CDN构建和immutable安装通过。
实际生成JS另通过访客/账户/路由/登录表单/退出的VDOM回放，以及真实补丁处理函数的初始、增量补丁
和pong回放。存储只使用内存mock，分发被截获，没有注册账户或启动服务，不是浏览器端到端验收。
原有大包构建警告仍保留，没有额外维护runner或放宽门禁。

新增任务回归暴露原业务代码把get-in的Option直接作为用户Map key；现已解包并真正解码String，
测试确认任务写入当前会话用户，而不是影子key。这里只修复候选代码，未审计或修复生产历史数据。
原生入口仍为60通过/1失败/9阻塞/2级联；完整服务端namespace检查71项中59通过、12未通过、
18条诊断。数据库、session、updater和历史回放仍需迁移，完整strict尚未通过。组合扫描仍有
6处unsafe-coerce和171处schema Dynamic（84个定义），没有放宽基线或声称债务清零。
正式依赖图还需干净CI核对。生产连接仍是 `wss://wood.topix.im/ws`，不能套用其他应用地址；
存档格式和后端部署目录也不因COS前端迁移而改变。尚未推送、提交PR、合并或部署。

### License

MIT
