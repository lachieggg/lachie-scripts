#!/usr/bin/env python3

import requests
import time

DELAY = 5
EXPECTED_CODE = 200
SITE = "http://lachiegrant.io"

def check_site(running=True):
	"""Check that the site is accessible, print out the status code"""
	while(running):
		session = requests.Session()
		session.verify = False
		r = session.get(url=SITE)
		if(r.status_code == EXPECTED_CODE): print("200 OK")
		else: print(r.status_code)
		time.sleep(DELAY)


if(__name__ == "__main__"):
	requests.packages.urllib3.disable_warnings()
	try: check_site()
	except KeyboardInterrupt as e: exit('\nBye')
