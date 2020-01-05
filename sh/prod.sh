#!/bin/sh

virtualenv env
sh /usr/src/sh/install.sh
source /usr/src/app/env/bin/activate
python /usr/src/app/src/scraper.py
deactivate