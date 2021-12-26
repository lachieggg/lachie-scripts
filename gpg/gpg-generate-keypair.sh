#!/bin/bash

gpg --full-generate-key
gpg --list-secret-keys --keyid-format=long
gpg --armor --export <key-id>
