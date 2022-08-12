#!/bin/bash


# Creates a new SSH key locally
# Then uploads it to a server of your choice
#
ssh-keygen

ssh-copy-id -p 22 lachie@192.168.0.50

ssh -p 22 -i ~/.ssh/id_rsa lachie@192.168.0.50
