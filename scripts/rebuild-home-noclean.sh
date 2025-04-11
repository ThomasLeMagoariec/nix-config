#!/usr/bin/env bash

set -e


USERNAME=$(whoami)

# update flake
./update.sh

# rebuild home-manager
./build-home.sh ${USERNAME}

echo "✅ Done rebuilding for host '$HOST' and user '$USERNAME'"

