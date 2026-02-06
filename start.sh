#!/bin/bash

# Check if CLI Proxy API is already running
if ! lsof -i :8317 > /dev/null 2>&1; then
    echo "Starting CLI Proxy API on port 8317..."
    cd /workspaces/codespace/CLIProxyAPI
    nohup ./cli-proxy-api > /dev/null 2>&1 &
else
    echo "CLI Proxy API already running on port 8317"
fi

# Check if Web server is already running
if ! lsof -i :3000 > /dev/null 2>&1; then
    echo "Starting Web server on port 3000..."
    cd /home/codespace/cc-switch-web
    ALLOW_HTTP_BASIC_OVER_HTTP=1 HOST="${HOST:-0.0.0.0}" PORT="${PORT:-3000}" ./src-tauri/target/release/examples/server > /dev/null 2>&1 &
else
    echo "Web server already running on port 3000"
fi

echo "Services status:"
echo "  CLI Proxy API: http://localhost:8317"
echo "  Web Server: http://localhost:3000"
