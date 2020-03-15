#!/bin/bash

servers_file=servers
for var in $(cat $servers_file)
do
ssh-copy-id $var
done
