#!/bin/sh

apk update && apk upgrade && \
    apk add curl py3-pip bash --no-cache && \
    rm -rf /var/cache/apk/*

pip3 install detect-secrets
curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b /usr/local/bin
curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | sh -s -- -b /usr/local/bin