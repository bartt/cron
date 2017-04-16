FROM alpine:latest

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.4/community' >> /etc/apk/repositories
RUN apk add --update docker=1.11.2-r1

VOLUME /cron
ENV CRONTAB=/cron/crontab

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["cron"]
