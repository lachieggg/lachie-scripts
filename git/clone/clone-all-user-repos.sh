#!/bin/bash

curl -s -H "Authorization: token TOKEN" "https://api.github.com/search/repositories?q=user:lachieggg" | jq -r ".items[].clone_url" | xargs -L1 git clone
