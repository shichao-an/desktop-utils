#!/bin/bash
# Install script commands to /usr/local/bin

localbin='/usr/local/bin'
script_name=$(basename $0)

warning='WARN: Make sure /usr/local/bin is added to PATH'
if ! echo "$PATH" | grep '/usr/local/bin' > /dev/null
then
    echo "$warning" >&2
    exit 1
fi
for cmd in *;
do
    [ "$cmd" != "$script_name" ] && { echo "Copying $cmd ..."; cp "$cmd" "$localbin/$cmd"; }
done
echo 'Done.'
