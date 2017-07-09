.SILENT :
.PHONY : test

test:
	docker build -t jeboehm/cron:latest .
	bin/crond
	docker run --name tst -e CRON_STARTTIME="* * * * *" busybox
	sh -x ./test.sh
	docker rm -f crond tst
