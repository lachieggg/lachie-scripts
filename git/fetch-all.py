#!/usr/bin/env python3

import os

GIT_FOLDER = os.getcwd() + '/../../'

for folder in os.listdir(GIT_FOLDER):
	print('\n\n\n' + folder)
	cmd = 'cd ' + GIT_FOLDER + '/' + folder + ' && ' + ' git fetch'
	os.system(cmd)
