FROM alpine:latest

RUN apk --no-cache add docker

VOLUME ["/var/spool/cron/crontabs"]
CMD ["crond", "-d2", "-f"]
