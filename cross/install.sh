#!/bin/bash
# Install script commands to /usr/local/bin

LOCALBIN='/usr/local/bin'
SCRIPT_NAME=$(basename $0)

echo 'Make sure /usr/local/bin is added to PATH'
for cmd in *;
do
    [ "$cmd" != "$SCRIPT_NAME" ] && cp "$cmd" "$LOCALBIN/$cmd"
done
