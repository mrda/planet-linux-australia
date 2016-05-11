#!/bin/bash
cd /srv/linux.org.au/planet/venus/
touch ../start-time.flag ../running.flag
echo -n "Start time: " > ../html/errors.log
TZ=UTC-9:30; date >> ../html/errors.log
python planet.py ../config/ploa-config.ini \
     >> ../html/errors.log 2>&1
echo -n "Stop time: " >> ../html/errors.log
TZ=UTC-9:30; date >> ../html/errors.log
rm -f ../running.flag
touch ../stop-time.flag
