#!/bin/sh

#set -e
trap "echo Build failed" EXIT

#pwd
#ls
#ls /usr/local/bin
exec /usr/local/bin/zrepl > testt.txt &
exec service ssh start &
exec service rsyslog start &

sleep 100000
child=$!
wait


