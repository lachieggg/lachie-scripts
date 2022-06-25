#!/usr/bin/env python3

import os

def merge_master_all():
    command = "git branch -r | grep -v '\->' | sed \"s,\x1B\[[0-9;]*[a-zA-Z],,g\""

    branches = os.popen(command).read()

    for branch in branches:
        command = "git checkout {} && git merge master".format(branch)
        print("Calling {}".format(command))
        os.system(command)

if(__name__ == "__main__"):
    pass