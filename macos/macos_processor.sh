#!/bin/bash

# the goal of this script is to check if your laptop
# uses an Intel or Apple Silicon chip

# this script runs on macOS only ⚠️

arch_name="$(uname -m)"

if [ "${arch_name}" = "x86_64" ]; then
    if [ "$(sysctl -in sysctl.proc_translated)" = "1" ]; then
        echo "Your computer uses Apple Silicon (Rosetta) 🌟"
    else
        echo "Your computer has an Intel processor 🤖"
    fi
elif [ "${arch_name}" = "arm64" ]; then
    echo "Your computer uses Apple Silicon 🌟"
else
    echo "Unknown processor"
fi

