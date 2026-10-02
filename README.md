
Woodenlist: a personal todolist
------

> It's hosted on server and syncs among clients in realtime.

Site http://wood.topix.im/

### develop

https://github.com/Cumulo/calcium-workflow

### 构建与部署

正式 Calcit / `@calcit/procs` 0.27.0、caps 0.1.1、Node.js 24、Yarn 4.18.0，保留原 browser/native 入口目标。CI 保留 strict workflow、入口和工具链门禁，以全部应用 namespace 的两项公开定义检查替代重复类型统计。

COS 只上传前端 `dist/`。生产 CDN 路径仍为 `https://cos-sh.tiye.me/TopixIM/woodenlist/`，同仓库 PR 使用 `pr/<编号>/<run-id>/<attempt>/` 隔离资源；fork PR 只构建。`worktools/cos-upload-action@v1.2.0` 用 `public-base-url` 和内置 `verify-*` 默认配置校验，无额外脚本。

生产运行排队且不取消进行中的上传，一次 main SHA 预检跳过旧提交，不保证原子发布。原 web rsync 及 `/servers/woodenlist/` 服务端部署目录保持不变，`dist-server/` 不上传 COS。不启动服务或改变持久化数据；生成目录和旧 Snapshot 不入库。现有模块发布图 warning 保留，不声称 strict 依赖图通过，也不用 hash/main 绕过。

### License

MIT
