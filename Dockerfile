#FROM resin/raspberrypi2-alpine:3.4-20160908
FROM resin/$RESIN_MACHINE_NAME-alpine:3.4
MAINTAINER ashmastaflash

RUN apk update && \
    apk add \
    bluez \
    python3 \
    sudo

ADD https://bootstrap.pypa.io/get-pip.py /
RUN python3 /get-pip.py

RUN pip install PyBeacon

ENV BROADCOM_FIRMWARE="https://github.com/OpenELEC/misc-firmware/raw/master/firmware/brcm/BCM43430A1.hcd"

ADD $BROADCOM_FIRMWARE /lib/firmware/brcm/BCM43430A1.hcd

COPY bin/runner.sh /

CMD /runner.sh
