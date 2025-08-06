#!/bin/bash
MATERVIM_SOURCE="$(dirname "$(readlink -f "$0")")"

rm -rf "${MATERVIM_SOURCE}/lua"
rm -rf "${MATERVIM_SOURCE}/init.lua"
rm -rf "${MATERVIM_SOURCE}/lazy-lock.json"

cp -r ~/.config/nvim/* $MATERVIM_SOURCE
echo "Done."
