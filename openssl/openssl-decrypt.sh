#!/bin/bash

# This script decrypts a message from the environment variable
# It is used for demonstration purposes, to show the correct
# Commands and syntax for encrypting and decrypting messages
# Using OpenSSL
#
# After running ./openssl-generate-pair.sh you can paste public.pem
# On your website to allow for encrypted messaging and message
# Authenticity verification from peers
#
# This can only be used for short messages
#
# For longer messages, use the GPG scripts
#

# Environment
source ../.env

# Create
echo $ENCRYPT_MESSAGE > msg

# Encrypt
openssl rsautl -encrypt -inkey public.pem -pubin -in msg -out msg.dat

# Decrypt
openssl rsautl -decrypt -inkey private.pem -in msg.dat -out msg

# Output
cat msg.dat

# Cleanup
rm msg && rm msg.dat
