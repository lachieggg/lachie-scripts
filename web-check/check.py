#!/usr/bin/env python3

import requests
import time

SITE = "http://lachiegrant.io"

def check_site(running=True):
	"""Check that the site is accessible, print out the status code"""
	while(running):
		session = requests.Session()
		session.verify = False
		r = session.get(url=SITE)
		if(r.status_code == 200): print("200 OK")
		else: print(r.status_code)
		time.sleep(5)


if(__name__ == "__main__"):
	requests.packages.urllib3.disable_warnings()
	try: check_site()
	except KeyboardInterrupt as e: exit('\nBye')
