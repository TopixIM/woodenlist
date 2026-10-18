
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

当前新工具链可达检查为 browser413通过/3失败/7阻塞、native59通过/1失败/11阻塞/2级联；
不把局部配置测试通过等同于完整类型或业务验收。尚需迁移Respo状态游标、具体任务/列表及日期接口，
再检查完整数据库、账户、历史回放与Alerts交互；现存强转不能作为最终完成状态保留。
正式依赖图还需干净CI核对。生产连接仍是 `wss://wood.topix.im/ws`，不能套用其他应用地址；
存档格式和后端部署目录也不因COS前端迁移而改变。尚未推送、提交PR、合并或部署。

### License

MIT
