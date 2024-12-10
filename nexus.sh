#!/bin/bash

# Check if rust and cargo are installed
if ! command -v rustc &> /dev/null || ! command -v cargo &> /dev/null; then
    echo "Rust or Cargo not found. Installing Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    source "$HOME/.cargo/env"
else
    echo "Rust and Cargo are already installed."
fi

# Install protobuf compiler
echo "Installing protobuf compiler..."
sudo apt update
sudo apt install -y protobuf-compiler
sudo apt install libssl-dev
sudo apt install pkg-config

# Install Nexus CLI
echo "Installing Nexus CLI..."
curl https://cli.nexus.xyz/ | sh
