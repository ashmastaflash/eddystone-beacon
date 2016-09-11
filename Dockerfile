FROM resin/raspberrypi2-alpine:3.4-20160908
MAINTAINER ashmastaflash

RUN apk add bluez

ENV BROADCOM_FIRMWARE="https://github.com/OpenELEC/misc-firmware/raw/master/firmware/brcm/BCM43430A1.hcd"

RUN wget $BROADCOM_FIRMWARE -O /lib/firmware/brcm/BCM43430A1.hcd
