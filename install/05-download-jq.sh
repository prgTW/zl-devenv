#!/bin/sh

[ -e /tmp/zl-devenv-jq ] || (
	curl -Ss http://stedolan.github.io/jq/download/linux64/jq > /tmp/zl-devenv-jq
)

[ -x /tmp/zl-devenv-jq ] || (
	chmod +x /tmp/zl-devenv-jq
)
