FROM postgres:11.3-alpine
ENV LANG ja_JP.utf8

# DB情報
ARG POSTGRES_DB
ARG POSTGRES_USER
ARG POSTGRES_PASSWORD
ENV POSTGRES_DB $POSTGRES_DB
ENV POSTGRES_USER $POSTGRES_USER
ENV POSTGRES_PASSWORD $POSTGRES_PASSWORD

WORKDIR /app

RUN apk --no-cache update && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
