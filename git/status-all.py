#!/usr/bin/env python3

import os

GIT_FOLDER = os.getcwd() + '/../../'

folders = os.listdir(GIT_FOLDER)

for folder in folders:
	print('\n\n\n' + folder)
	cmd = 'cd ' + GIT_FOLDER + folder + ' && ' + ' git status'
	os.system(cmd)
