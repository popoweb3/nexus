#!/bin/bash

# 检测是否安装了Rust和Cargo
if ! command -v rustc &> /dev/null || ! command -v cargo &> /dev/null; then
    echo "未找到Rust或Cargo。正在安装Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source "$HOME/.cargo/env"
else
    echo "Rust和Cargo已经安装。"
fi

# 安装protobuf编译器
echo "正在安装protobuf编译器..."
sudo apt update
sudo apt install -y protobuf-compiler
sudo apt install -y libssl-dev
sudo apt install -y pkg-config

# 安装Nexus CLI
echo "正在安装Nexus CLI..."
curl https://cli.nexus.xyz/ | sh
