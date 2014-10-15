#!/bin/sh

[ -e /usr/bin/docker ] || (
	curl -sSL https://get.docker.io/ubuntu/ | sudo sh
)
