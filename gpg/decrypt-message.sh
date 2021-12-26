#!/bin/bash

gpg --output output.decrypted --decrypt output.encrypted
printf '\n'
printf '\n'
cat output.decrypted
printf '\n'
printf '\n'
