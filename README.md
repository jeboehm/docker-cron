jeboehm/cron
===========

[![Build Status](https://travis-ci.org/jeboehm/docker-cron.svg?branch=master)](https://travis-ci.org/jeboehm/docker-cron)

jeboehm/cron is able to start your existing Docker containers periodically. It
uses docker-gen to create the crontab and reads the container's `CRON_STARTTIME`
environment variable.

Usage
-----

Start jeboehm/cron by using the shell script under ```bin/crond```. Change it according
to your needs.

You can look into your current crontab by running ```bin/crontab -l```.

Example
-------
```
$ docker run --name date -e CRON_STARTTIME="* * * * *" busybox date
$ docker logs date
```

This will start the container named 'date' every minute. After a few minutes you
should see the minutes passing by reading the logs.

```
$ docker run --name backup -e CRON_STARTTIME="00 13 * * *|00 18 * * *" busybox yourbackupscript.sh
```

This fictive example will start your backup container at 1 and 6 pm.
