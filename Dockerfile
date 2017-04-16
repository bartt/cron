FROM alpine:latest

RUN apk add --update docker

VOLUME /cron
ENV CRONTAB=/cron/crontab

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["cron"]
