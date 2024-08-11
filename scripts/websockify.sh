#!/bin/sh

websockify 8181 join:6113 &
websockify 8182 blizzard:6114 &

wait
