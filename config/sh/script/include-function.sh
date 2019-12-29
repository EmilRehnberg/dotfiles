#!/usr/bin/env sh
include () {
  [ -f "$1" ] && . "$1"
}
