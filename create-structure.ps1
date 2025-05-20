# 设置基础目录名
$base = "mail-system"

# 定义所有子目录（相对于 $base）
$dirs = @(
  'backend/src/main/java/com/example/mailbox/common',
  'backend/src/main/java/com/example/mailbox/config',
  'backend/src/main/java/com/example/mailbox/domain/model',
  'backend/src/main/java/com/example/mailbox/domain/dto',
  'backend/src/main/java/com/example/mailbox/repository',
  'backend/src/main/java/com/example/mailbox/service/impl',
  'backend/src/main/java/com/example/mailbox/service',
  'backend/src/main/java/com/example/mailbox/controller',
  'backend/src/main/java/com/example/mailbox/event',
  'backend/src/main/resources',
  'backend/src/main/resources/sql',
  'frontend/src/assets',
  'frontend/src/components',
  'frontend/src/views',
  'frontend/src/router',
  'frontend/src/store',
  'frontend/src/api',
  'frontend/src/utils',
  'frontend/public',
  'frontend/.eslintrc.js',
  'frontend/vite.config.js',
  'docker/mysql/init',
  'docker/nginx',
  'docs',
  'scripts/db-migration',
  'scripts/deploy',
  '.github/workflows'
)

# 逐一创建目录（包括所有父目录）
foreach ($d in $dirs) {
    [System.IO.Directory]::CreateDirectory((Join-Path $base $d))
}

Write-Host "目录结构创建完毕：$base" -ForegroundColor Green