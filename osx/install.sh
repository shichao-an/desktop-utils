#!/bin/bash
# Install script commands to /usr/local/bin

LOCALBIN='/usr/local/bin'
SCRIPT_NAME=$(basename $0)

warning='WARN: Make sure /usr/local/bin is added to PATH'
if ! echo "$PATH" | grep '/usr/local/bin' > /dev/null
then
    echo "$warning" >&2
    exit 1
fi
for cmd in *;
do
    [ "$cmd" != "$SCRIPT_NAME" ] && {
        echo "Copying $cmd ..."
        cp "$cmd" "$LOCALBIN/$cmd"
    }
done
echo 'Done.'
