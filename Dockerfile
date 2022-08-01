FROM alpine

RUN apk add --update --no-cache docker
COPY install.sh install.sh
RUN ./install.sh