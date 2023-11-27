#!/usr/bin/env bash
set -x
set -e

set +e  # disabled
bash -c "exit 1"

set -e  # enabled

# bash -c "exit 1" 

echo "alive"
echo "without x"
set +x
echo "without x"