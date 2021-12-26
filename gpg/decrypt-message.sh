#!/bin/bash

gpg --output output.decrypted --decrypt output.encrypted
cat output.decrypted
