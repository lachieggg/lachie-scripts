#!/usr/bin/env python3

import os

def push_all():
    branches = os.popen("git branch -r | grep -v '\->' | sed \"s,\x1B\[[0-9;]*[a-zA-Z],,g\"").read()
    print(branches)
