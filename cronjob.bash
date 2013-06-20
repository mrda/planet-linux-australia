#!/bin/bash
cd /srv/linux.org.au/planet/venus/
#testing cd /home/mrda/src/www/planet/ploa/venus
touch ../start-time.flag ../running.flag
echo -n "Start time: " > ../html/errors.log
TZ=UTC-9:30; date >> ../html/errors.log
python2.4 planet.py ../config/ploa-config.ini \
     >> ../html/errors.log 2>&1
echo -n "Stop time: " >> ../html/errors.log
TZ=UTC-9:30; date >> ../html/errors.log
rm -f ../running.flag
touch ../stop-time.flag
