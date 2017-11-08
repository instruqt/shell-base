#!/usr/local/bin/dumb-init /bin/sh
set -e

# Start gotty
/usr/local/bin/gotty /bin/bash -l &

# Start Dropbear SSH server
dropbear -s -g -R -E &>/dropbear.log

# Start the startup script
/start.sh
