#!/bin/bash

# Determines whether the script should run
#
run=false

if [ "$run" = true ] ; then
    gpg --full-generate-key
    gpg --list-secret-keys --keyid-format=long
fi
