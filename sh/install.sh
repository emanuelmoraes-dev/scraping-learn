#!/bin/sh

if [ ! -d /usr/src/app/env ]; then
    virtualenv env
fi

source /usr/src/app/env/bin/activate
pip install --no-cache-dir -r requirements
deactivate