#!/bin/sh

set -ex

exec /usr/local/bin/zrepl &
exec service ssh start
exec service rsyslog start

child=$!
wait


