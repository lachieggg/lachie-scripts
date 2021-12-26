#!/bin/bash

# 1.) Create the private key
bash generate-keypair.sh

# 2.) Create the test messsage

echo "My secret message" > input.raw

# 3.) Sign the message

bash sign-message.sh

