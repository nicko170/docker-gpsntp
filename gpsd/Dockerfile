FROM alpine:3.17

RUN apk add --no-cache \
    'gpsd=3.24-r0' \
    'gpsd-clients=3.24-r0'

# capture output of gpsd to logging via syslogd
ARG GPS_DEVICE
ENTRYPOINT ["/bin/sh", "-c", "/sbin/syslogd -S -O - -n & exec /usr/sbin/gpsd -N -n -G -D 5 $GPS_DEVICE","--"]
