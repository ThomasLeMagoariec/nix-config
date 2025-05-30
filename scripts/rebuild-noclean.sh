#!/usr/bin/env bash

set -e

# Check for host argument
if [ -z "$1" ]; then
  echo "❌ Usage: $0 <hostname>"
  exit 1
fi

HOST=$1
USERNAME=$(whoami)

# update flake
./update.sh

# rebuild nix
./rebuild-nix.sh ${HOST}

# rebuild home-manager
./rebuild-home.sh ${USERNAME}

echo "✅ Done rebuilding for host '$HOST' and user '$USERNAME'"

