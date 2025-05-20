# Email-SCUT

| 项目结构我已经创建好了，每个人写具体代码的时候把`.gitkeep`文件删了就行

```
mail-system/
├── backend/              # 后端（Spring Boot）
│   ├── src/main/
│   │   ├── java/com/example/mailbox/  # 根包（严格遵循规范）
│   │   │   ├── common/       # 通用工具类、响应包装（如 ApiResponse）
│   │   │   ├── config/       # Spring 配置（Security/Swagger/WebSocket）
│   │   │   ├── domain/       # 数据模型与 DTO
│   │   │   │   ├── model/    # Entity（User、Mail、Attachment 等）
│   │   │   │   └── dto/      # 请求/响应 DTO（AuthRequest、MailSendRequest 等）
│   │   │   ├── repository/   # MyBatis/JPA 数据访问层
│   │   │   ├── service/      # 业务接口（AuthService、MailService）
│   │   │   │   └── impl/     # 服务实现类（AuthServiceImpl）
│   │   │   ├── controller/   # REST + WebSocket 控制器
│   │   │   └── event/        # Spring 事件（如邮件到达事件）
│   │   └── resources/
│   │       ├── application.yml    # 配置文件（数据库、MinIO 等）
│   │       ├── logback-spring.xml # 日志配置
│   │       └── sql/               # 数据库初始化脚本（schema.sql）
├── frontend/             # 前端（Vue 3 + Vite）
│   ├── src/
│   │   ├── assets/       # 静态资源（图片、样式）
│   │   ├── components/   # 公共组件（如邮件列表组件）
│   │   ├── views/        # 页面组件（Login.vue、Inbox.vue）
│   │   ├── router/       # 路由配置（定义 /login、/inbox 等路径）
│   │   ├── store/        # Vuex/Pinia 状态管理（用户 Token、草稿缓存）
│   │   ├── api/          # Axios 请求封装（如 auth.js、mail.js）
│   │   └── utils/        # 工具类（WebSocket 客户端、本地缓存逻辑）
│   ├── public/           # 公共 HTML
│   ├── .eslintrc.js      # ESLint 配置
│   └── vite.config.js    # Vite 构建配置
├── docker/               # Docker 部署配置
│   ├── docker-compose.yml       # 整合 MySQL、Redis、MinIO
│   ├── mysql/init/             # 数据库初始化脚本（参考 backend/resources/sql）
│   └── nginx/                  # Nginx 反向代理配置（HTTPS）
├── docs/                 # 项目文档
│   ├── 需求规格说明书.md       # 组长负责
│   ├── 接口设计说明书.md       # 组员2（接口设计）
│   ├── 详细设计说明书.md       # 组员3、4
│   └── Test_Report.pdf         # 组员6（测试报告）
├── scripts/              # 辅助脚本
│   ├── db-migration/     # Flyway/Liquibase 数据库迁移脚本（可选）
│   └── deploy/           # 部署脚本（Docker 镜像推送）
└── .github/workflows/    # CI/CD 流水线（GitHub Actions）
    └── ci.yml            # 自动化构建与测试
```
