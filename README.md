# Start Command

## CLIProxyAPI
### Run
cd /workspaces/codespace/CLIProxyAPI
nohup ./cli-proxy-ai

### Build
git clone https://github.com/router-for-me/CLIProxyAPI.git
cd CLIProxyAPI
go build -o cli-proxy-api ./cmd/server

## cc-switch web
### Run
启动服务器：
  cd /home/codespace/cc-switch-web
  ALLOW_HTTP_BASIC_OVER_HTTP=1 HOST=0.0.0.0 PORT=3000 /home/codespace/cc-switch-web/src-tauri/target/release/examples/server

或使用快捷命令：
  /home/codespace/cc-switch-web/scripts/start-web.sh

访问地址：
  http://0.0.0.0:3000

登录凭据：
  用户名: admin
  密码: 首次启动后查看 /home/codespace/.cc-switch/web_password

如需创建 systemd 服务，运行：
  CREATE_SERVICE=1 bash

### Build
curl -fsSL https://raw.githubusercontent.com/Laliet/CC-Switch-Web/main/scripts/deploy-web.sh | bash -s -- --prebuilt

## Claude Code
Claude

## Open Code
opencode