#!/bin/sh
set -x
docker run -d \
  --name=minidlna \
  --net=host \
  -v /media/hdd/movies/:/media \
  -e MINIDLNA_MEDIA_DIR=/media \
  -e MINIDLNA_FRIENDLY_NAME=movieshdd \
  --restart=always \
  vladgh/minidlna

