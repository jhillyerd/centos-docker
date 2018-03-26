#!/bin/sh

docker run --cap-add SYS_ADMIN --tmpfs /run -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
  -d -p 9000:9000 -p 2500:2500 -v "$HOME:$HOME" c7-systemd
