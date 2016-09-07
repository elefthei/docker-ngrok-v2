#!/bin/sh
echo "Starting ngrok to $HTTP_SERVER:$HTTP_PORT"
cat /etc/hosts
/bin/ngrok http $HTTP_SERVER:$HTTP_PORT

