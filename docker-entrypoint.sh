#!/bin/bash
set -e

export DOCKER_IP=`ip addr show eth0 | grep inet | head -1 | cut -d/ -f 1 | awk '{print $2}'`

if [ "$1" = 'redis-server' ]; then
	chown -R redis .
	exec gosu redis "$@"
fi

exec "$@"
