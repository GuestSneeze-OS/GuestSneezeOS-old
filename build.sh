#!/bin/bash
set -e

# Clean previous builds
rm -r -f out && rm -r -f work

# Create build directory
mkdir -p out

# Build the Arch Linux ISO
mkarchiso -v -w /build/work -o /build/out .
