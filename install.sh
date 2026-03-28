#!/bin/bash

# Install Emscripten SDK
cd /workspaces
git clone https://github.com/emscripten-core/emsdk.git
cd emsdk
./emsdk install latest
./emsdk activate latest

# First build to have wasm
cd $CODESPACE_VSCODE_FOLDER
bash build.sh . 3000
