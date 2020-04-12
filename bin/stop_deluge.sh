#!/bin/sh

set -x

sudo systemctl daemon-reload
sudo systemctl stop deluged
sudo systemctl stop deluge-web
