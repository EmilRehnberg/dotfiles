#!/usr/bin/env bash
sourceDirectory () {
	for f in "$1"/*; do source "$f"; done
}
