#!/usr/bin/env bash
include () {
  [[ -f "$1" ]] && source "$1"
}
