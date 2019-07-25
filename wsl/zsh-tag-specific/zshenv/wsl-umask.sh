#!/usr/bin/env bash
if [ "$(umask)" = "000" ]; then
	umask 0022
fi
