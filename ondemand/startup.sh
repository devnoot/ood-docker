#!/bin/bash

# Start ondemand-dex in the background
# config.yaml is default 
runuser -u ondemand-dex -- /usr/sbin/ondemand-dex serve /etc/ood/dex/config.yaml &

# Start httpd in the foreground
exec /usr/sbin/httpd -D FOREGROUND
