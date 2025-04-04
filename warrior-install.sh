#!/bin/bash

if ! dpkg-query -Wf'${Status}' zlib1g-dev 2>/dev/null | grep -q '^i'
then
  echo "Installing ghostscript..."
  sudo apt-get update
  sudo apt-get install -y --no-install-recommends zlib1g-dev || exit 1
  sudo rm -rf /var/lib/apt/lists/*
fi

sudo luarocks install lua-zlib

exit 0


