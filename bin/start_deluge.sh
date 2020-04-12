#!/bin/sh

set -x

sudo systemctl daemon-reload
sudo systemctl start deluged
sudo systemctl start deluge-web
