#!/bin/sh

set -e

log () {
	printf '\033[35m%s\033[0m\n' "$*"
}

log Cloning GitHub repository with configuration
git clone https://github.com/UniIRC/servers

log Executing setup script
cd servers/arctic
./base
