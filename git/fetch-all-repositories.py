#!/usr/bin/env python3

import os

folder = os.getenv('GIT')
projects = os.listdir(folder)

for proj in projects:
	command = "cd $GIT && cd {} && git fetch".format(proj)
	print("Calling {}".format(command))
	os.system(command)
