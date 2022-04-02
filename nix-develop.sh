#!/bin/sh
cd src || exit 1
KERNELDIR="$(nix-build -E '(import <nur-xddxdd> {}).linux-xanmod-lantian.dev' --no-out-link)/lib/modules/*/build"
export KERNELDIR
nix-shell '<nur-xddxdd>' -A linux-xanmod-lantian
