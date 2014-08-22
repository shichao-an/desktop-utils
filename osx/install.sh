#!/bin/bash
# Install script commands to /usr/local/bin

localbin='/usr/local/bin'
script_name=$(basename $0)

echo 'Make sure /usr/local/bin is added to PATH'
for cmd in *;
do
    [ "$cmd" != "$script_name" -a ! -e "$localbin/$cmd" ] && \
        cp "$cmd" "$localbin/$cmd"
done
