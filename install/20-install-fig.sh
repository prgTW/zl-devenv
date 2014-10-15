#!/bin/sh

[ -e /usr/local/bin/fig ] || (
	curl -L https://github.com/docker/fig/releases/download/0.5.2/linux > /usr/local/bin/fig
)

[ -x /usr/local/bin/fig ] || (
	chmod +x /usr/local/bin/fig
)
