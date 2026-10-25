
Woodenlist: a personal todolist
------

> It's hosted on server and syncs among clients in realtime.

Site http://wood.topix.im/

### develop

https://github.com/Cumulo/calcium-workflow

### 构建与部署

当前迁移候选精确配对正式 Calcit / `@calcit/procs` **0.30.1**、
Caps 0.1.1、Node.js 24、Yarn 4.18.0，保留原 browser/native 入口目标。所有模块改为精确正式版本，
不使用 hash、浮动 main 或模块 alpha。没有消费者的 Lilac 已移除。
**本地迁移门禁已通过，但未验收生产后端环境，不能仅凭本地或PR绿灯直接合并部署。**

CI 保留 strict workflow 和工具链门禁，使用当前 `--check-only --ns` 检查两种目标的所有应用定义，
以及定义附带的原生回归测试；不维护额外统计脚本或测试框架。本地不运行 Caps，干净模块安装与
新 native 构建由独立 Linux CI 验证。

COS 只上传前端 `dist/`。生产 CDN 路径仍为 `https://cos-sh.tiye.me/TopixIM/woodenlist/`，同仓库 PR 使用 `pr/<编号>/<run-id>/<attempt>/` 隔离资源；fork PR 只构建。`worktools/cos-upload-action@v1.2.0` 用 `public-base-url` 和内置 `verify-*` 默认配置校验，无额外脚本。

生产运行排队且不取消进行中的上传，一次 main SHA 预检跳过旧提交，不保证原子发布。原 web rsync 及 `/servers/woodenlist/` 服务端部署目录保持不变，`dist-server/` 不上传 COS。不启动生产服务或改变生产持久化数据；生成目录和旧 Snapshot 不入库。

### 本轮标准方法与宿主边界清理

保留任务次序、端口默认值、协议、存档和 HUD。15 处集合 `count` 改为 `.len`
（含原附带测试中的 5 处），一处 Result 默认值读取改为 `.unwrap-or`，参数与默认值不变。
RegExp 和 dayjs 的实际对象改用现有 `js-cast` 检查 `.test` / `.format` 方法形状，
`unsafe` 从 3 降到 1；剩余 primitive String 的 `.match` 边界没有伪装为对象转换。
方法形状检查不验证参数、返回值或深层数据；缺失方法现在更早报错，不承诺异常时序完全不变。

官方 Linux 正式 0.30.1 准备 CI [40237846260](https://github.com/TopixIM/woodenlist/actions/runs/40237846260)
通过原完整 strict、浏览器/服务端定义检查、原生 8/8，以及现有合同 native/JS 各 5/5。
成功产物经 ZIP SHA256、Snapshot blob 和全部 140 个定义/20 namespace 的独立结构化对照核验。
220 个浏览器生成模块中 218 个字节相同，另两个仅增加上述方法形状检查。
实际生成函数另通过 6 个字符串的首个 URL 匹配、非法正则、4 个时间戳的原 dayjs 本地日期行为，
以及隔离 Node 进程中缺失方法的负例；不是浏览器或真实服务验收。
临时事务、回放脚本、准备工作流和生成目录均不入库，不改依赖、安全 lock 或类型预算。
原 CI 保留全部门禁，规范化检查改用 blob 哈希相等判断，不输出 Snapshot 文本差异。
不合并、不启动或部署生产服务，也不以这些证据替代生产后端准备和协同上线。

### 前次正式版迁移

四处 `option:unwrap-or` 改为 `.unwrap-or`，四处 Tag `case-default` 改为字面量 `match`，
保留原参数、默认值、分支顺序和未知值处理。不改业务协议、存档格式、公开 schema、原测试或 HUD。
十二个模块配对兼容的精确正式 tag；Memof 没有本仓库直接调用，不冒称其新 API 已有业务验收。
移除过期的 procs 0.27.0 npm 豁免，不降低默认依赖隔离。当时未改原 workflow。

已用官方 Linux 正式工具链通过完整 strict（0 诊断）、原 browser/native 定义检查、原生 8/8、
现有站点/数据合同 native 5/5 和 JS 5/5（无排除）、immutable 安装及完整前端构建。
成功产物经 SHA256、原/新 blob 与 140 个定义/20 namespace 的完整结构化视图核验后才导入；
临时事务、回放 runner 和准备 CI 不进入最终 PR，不新增维护脚本或放宽基线。

本次没有重跑真实服务、账户存储、任务 UI、退出保存或冷启动；下面 alpha 阶段的运行验收
是历史证据，不代表正式图已覆盖这些路径。生产后端准备、备份/回滚和协同上线限制继续保留。
Alerts Prompt 的类型问题已在上游 #104 修复于较新正式版；本兼容依赖图仍使用 0.10.57，
不冒称采用了新 Prompt 合同，也不为已知问题重复增加编译器规则。

### 先前 alpha 迁移证据与尚未完成的部分

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

当前8/8原生附带测试通过，包括站点配置、任务及扩展字段往返、实际日期FFI下的指定月份/最新月份/
空列表选择、按时间计算位置后按id稳定渲染、用户/会话/数据库往返、当前会话用户创建任务，以及
有八条实际操作记录的账户/任务生命周期和Reel历史重放。当前生成JS另通过Unicode、0时间戳、nil/有值mode和
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

当前前端全部98/98公开定义及419/419可达定义、服务端全部96/96公开定义及68/68可达定义通过，
完整strict为0诊断、0迁移建议。配对JS生成、CDN构建和immutable安装通过。
实际生成JS另通过访客/账户/路由/登录表单/退出的VDOM回放，以及真实补丁处理函数的初始、增量补丁
和pong回放。存储只使用内存mock，分发被截获，没有注册账户或启动服务，不是浏览器端到端验收。
原有大包构建警告仍保留，没有额外维护runner或放宽门禁。

服务端现在使用真实User、Session、Database、Credentials及ServerOp，任务组仅接受三类已知组，
移动/编辑操作有具体字段合同。Reel按Database实例化，历史回放重新检查操作和sid/id/time，兼容旧
匿名枚举及已解码的凭据/任务操作Struct。读入旧Map存档，写出仍是旧Map；任务、用户、会话和根
扩展字段保留。旧注册用户缺少的任务集合规范化为空Map，可选昵称/头像缺失规范化为nil；显式错误
类型不静默修补。新建和清空任务不再把Option作为用户Map key；编辑不存在的任务现在明确失败，
不再生成id=nil的伪任务。任务移动保留原mode和刷新时间行为，编辑沿用客户端提供的时间。
这里只修复候选代码，未审计、删除或修复生产中的旧影子key、无效任务或错误存档。

删除无消费者的旧user/task/router/notification模板和as-tag-map。RegExp方法按实际外部对象方法
声明，match返回JsNullish再转Option，删除结果强转；真实生成JS通过无匹配、空串、Unicode和多个URL
的首个链接选择。当时保留三个局部外部宿主信任边界；本轮仅为 RegExp/dayjs 对象加入方法形状检查，
String 匹配能力仍是显式信任边界，不把它称为已检查的数据转换。该阶段组合扫描有76处schema Dynamic（69个定义），包括扩展字段、
异构UI/样式、网络Map和历史边界；unresolved type slot为0，没有放宽基线或声称债务清零。

另在专用临时目录、空存档和仅回环绑定的实际native服务上，通过浏览器访客页面及使用配对JS
runtime解码的匿名session补丁/ping/pong。没有注册账户或创建业务任务，不等于账户/任务浏览器
端到端验收。测试服务已停止，生成JS已恢复主候选配置，隔离数据和证据保留。
该阶段尚待的正式依赖图干净 CI 已由后续正式版迁移补齐。生产连接仍是 `wss://wood.topix.im/ws`，不能套用其他应用地址；
存档格式和后端部署目录也不因COS前端迁移而改变。未合并或部署。

### License

MIT
