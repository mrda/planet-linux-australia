planet-linux-australia
======================

Planet Linux Australia venus configuration

Installation
~~~~~~~~~~~~

By default, a default directory structure is assumed.  Your p.l.o.a.
installation should be in /srv/linux.org.au/planet

You should do the following:
* mkdir -p /srv/linux.org.au/planet/cache
* mkdir -p /srv/linux.org.au/planet/html
* cd /srv/linux.org.au/planet

Now grab the venus source code.  You can grab it from the source (rubys)
or my fork.
* git clone https://github.com/mrda/venus

Now get the p.l.o.a. configuration
* git clone https://github.com/mrda/planet-linux-australia config

Besides installing apache2 and configuring it to serve up
/srv/linux.org.au/planet/html as DocumentRoot, all you need to do is
to get a cronjob going to update the planet install (please don't change the
update frequency to be more regular than 2 hourly.  We should be kind to
other people's websites, and we don't want to get robot.txt'd)
* crontab /srv/linux.org.au/planet/config/crontab.ploa

