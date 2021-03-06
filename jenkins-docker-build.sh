#!/bin/bash
#set -xv

# ------------------------------------------------------------------------------------------ #
# ------------------------------------------------------------------------------------------ #
# Sourcing
# ------------------------------------------------------------------------------------------ #
# ------------------------------------------------------------------------------------------ #
. src/main/scripts/common.sh

# ------------------------------------------------------------------------------------------ #
# ------------------------------------------------------------------------------------------ #
# Main 
# ------------------------------------------------------------------------------------------ #
# ------------------------------------------------------------------------------------------ #

# Build image
version=1.0.0

log "Building image for jenkins > v${version}"
docker build -t jenkins:${version} .
