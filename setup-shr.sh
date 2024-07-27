#!/bin/bash

# Download
# shellcheck disable=SC2164
mkdir actions-runner && cd actions-runner
curl -o actions-runner-linux-x64-2.317.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.317.0/actions-runner-linux-x64-2.317.0.tar.gz
echo "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx actions-runner-linux-x64-2.317.0.tar.gz" | shasum -a 256 -c
tar xzf ./actions-runner-linux-x64-2.317.0.tar.gz

# Configure
./config.sh --url https://github.com/melanmeg/sample-self-hosted-runner --token xxxxxxxxxxxxxxxxxxxxxxx
./run.sh

# Using your self-hosted runner
# runs-on: self-hosted
