#!/usr/bin/env sh
# 1. look-up brew base with `brew --prefix`
# 2. look-up version with `brew list go | head -n 1 | cut -d '/' -f 6`
# these are too slow though :)
BREW_PREFIX=$(brew --prefix)
GOBASEVER=$(find -d ${BREW_PREFIX}/Cellar/go/* | tail -n1)
export GOROOT="${GOBASEVER}/libexec"
export GOPATH="$HOME/code/go"
export GOBIN="${GOPATH}/bin"
