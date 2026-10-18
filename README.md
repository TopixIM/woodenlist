
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

当前3/3原生附带测试通过，包括站点配置、任务及扩展字段往返、实际日期FFI下的指定月份/最新月份/
空列表选择。schema全部12/12公开定义通过；当前生成JS另通过Unicode、0时间戳、nil/有值mode和
扩展字段往返。该JS验收只生成纯任务编解码入口到临时目录，不代表完整前端构建或浏览器端到端。
没有将临时脚本、入口或产物纳入仓库。

当前新工具链可达检查为 browser416通过/2失败/5阻塞、native60通过/1失败/9阻塞/2级联；
不把局部测试通过等同于完整类型或业务验收。尚需迁移任务组件/列表、完整数据库、账户、历史回放与
Alerts交互；现存27处unsafe-coerce和198处schema Dynamic（85个定义的组合扫描）仍需逐项处理，
没有放宽基线或声称债务清零。当前服务端失败已推进到twig-container的账户/session类型边界。
正式依赖图还需干净CI核对。生产连接仍是 `wss://wood.topix.im/ws`，不能套用其他应用地址；
存档格式和后端部署目录也不因COS前端迁移而改变。尚未推送、提交PR、合并或部署。

### License

MIT
