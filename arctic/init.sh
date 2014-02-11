#!/bin/sh

set -e

log () {
	printf '\033[35m%s\033[0m\n' "$*"
}

log Updating package lists
apt-get -qq update

log Installing git
apt-get -qq install git

log Cloning GitHub repository with configuration
git clone https://github.com/UniIRC/servers

log Executing setup script
cd servers/arctic
./base
