#!/bin/sh

websockify ${WS_JOIN_PORT} join:${JOIN_PORT} &
websockify ${WS_BLIZZARD_PORT} blizzard:${BLIZZARD_PORT} &

wait
