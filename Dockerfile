FROM alpine:latest

ENV TZ=Europe/Berlin
RUN apk --no-cache add \
      docker \
      tzdata && \
    ln -sf /usr/share/zoneinfo/$TZ /etc/localtime

VOLUME ["/var/spool/cron/crontabs"]
CMD ["crond", "-d2", "-f"]
