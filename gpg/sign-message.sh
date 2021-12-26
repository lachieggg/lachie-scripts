#!/bin/bash

shasum -a 256 input.raw > message.sha256
gpg --detach-sig --output message.sha256.sig --sign message.sha256
