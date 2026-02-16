#!/usr/bin/env bash
set -e

# Install dependencies
sudo apt-get update
sudo apt-get install -y curl unzip xz-utils git

# Install Flutter
cd /opt
sudo git clone https://github.com/flutter/flutter.git -b stable
sudo chown -R codespace:codespace /opt/flutter

# Add Flutter to PATH permanently
echo 'export PATH="$PATH:/opt/flutter/bin"' >> ~/.bashrc
export PATH="$PATH:/opt/flutter/bin"

# Pre-cache web
flutter precache --web
flutter config --enable-web

flutter doctor 