FROM alpine

RUN apk update && apk upgrade && \
    apk add curl py3-pip bash --no-cache && \
    rm -rf /var/cache/apk/*

RUN pip3 install detect-secrets