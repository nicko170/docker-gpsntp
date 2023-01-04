FROM alpine:3.17

RUN apk add --no-cache \
    'ntpsec=1.2.1-r6'

COPY ntp.conf /etc/ntpsec/ntp.conf

VOLUME [ "/var/log/ntpsec" ]

RUN mkdir /var/log/ntpsec && chown ntp:ntp /var/log/ntpsec

CMD [ "/usr/sbin/ntpd", "-g", "-N", "-G", "-n", "-c", "/etc/ntpsec/ntp.conf" ]
