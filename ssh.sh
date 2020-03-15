#!/bin/bash

<<<<<<< HEAD
servers_file=servers
for var in $(cat $servers_file)
=======
serversfile=servers
for var in $(cat $serversfile)
>>>>>>> 485c1a314ab4a5ed8b2bf22527a6e2946ddafb47
do
ssh-copy-id $var
done
