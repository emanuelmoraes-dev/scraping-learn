#!/bin/sh

if [ ! -d /usr/src/app/env ]; then
    sh /usr/src/sh/install.sh
fi

source /usr/src/app/env/bin/activate
scrapy runspider /usr/src/app/src/scraper.py
deactivate