#!/bin/bash

echo $1
gpg --armor --output publickey.gpg --export grant.lachlan.j@gmail.com
cat publickey.gpg
