#!/usr/bin/env sh
sourceDirectory () {
	for f in "$1"/*; do . "$f"; done
}
