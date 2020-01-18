FROM alpine
LABEL maintainer="lwzm@qq.com"

RUN apk add --no-cache dnsmasq

COPY dnsmasq.conf /etc/dnsmasq.conf

EXPOSE 53/udp
ENTRYPOINT [ "dnsmasq" ]
