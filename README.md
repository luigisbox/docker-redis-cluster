## Redis cluster node

**NB: Redis cluster cannot be currently deployed with docker's bridge networking mode. See here for status: https://github.com/antirez/redis/issues/2527. You can run this with `--net=host` as a temporary workaround.**

Run with

    redis-server /usr/local/etc/redis/redis.conf

Or

    redis-server /usr/local/etc/redis/redis.conf --port 8000
