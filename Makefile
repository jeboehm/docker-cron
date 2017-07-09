.SILENT :
.PHONY : test

test:
	docker build -t jeboehm/cron:latest .
	bin/crond
  docker run --name test -e CRON_STARTTIME="* * * * *" busybox
	sleep 5
	sh -x ./test.sh
	docker rm -f crond test
