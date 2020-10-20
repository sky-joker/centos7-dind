#!/bin/bash
process_name=(dockerd)

# start supervisor
/usr/bin/supervisord -n >> /dev/null 2>&1 &

while ! pgrep "$process_name" > /dev/null 2>&1 ; do
    sleep 1
done

/bin/bash
