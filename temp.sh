#!/bin/sh
#
docker build -t localrdp:latest -f Dockerfile-localrdp .
docker run --name localrdp -dit --restart unless-stopped --network="guacamoledockercompose_guacnetwork_compose" localrdp
