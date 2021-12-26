#!/bin/bash

# Cleanup
bash cleanup.sh

# 1.) Create the private key
bash generate-keypair.sh

# 2.) List the keys
bash list-keys.sh

# 3.) Get the public key
bash get-pubkey.sh

# 4.) Create the test messsage
echo "My secret message" > input.raw

# 5.) Sign the message
bash sign-message.sh

# 6.) Encrypt the message
bash encrypt-message.sh

# 7.) Decrypt the message
bash decrypt-message.sh

# 8.) Verify signature
bash verify-signature.sh

# Cleanup
bash cleanup.sh
