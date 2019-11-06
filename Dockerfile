ARG BUILD_FROM=homeassistant/amd64-base-ubuntu:latest
FROM $BUILD_FROM

ARG BUILD_ARCH=amd64

ENV LANG C.UTF-8

ARG TELEGRAF_VRSION

RUN \
    apt-get update \
    && apt-get install -y -no-install-recommends iputils-ping snmp procps lm-sensors smartmontools \
#    && ARCH="${BUILD_ARCH}" \
#    && if [ "${BUILD_ARCH}" = "aarch64" ]; then ARCH="arm64"; fi \
#    && if [ "${BUILD_ARCH}" = "armv7" ]; then ARCH="armhf"; fi \
#    \
#    && TELEGRAF="${TELEGRAF_VERSION}" \
#    && curl /tmp/telegraf.deb \
#        "https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF}_${ARCH}.deb" \
#    \
#    && dpkg --install /tmp/telegraf.deb \
#    && rm -rf \
#        /tmp/* \
#        /var/lib/apt/lists/*

#EXPOSE 8092/udp 8094 8125/udp

#COPY run.sh /
#RUN chmod a+x /run.sh
#COPY telegraf.conf /etc/telegraf/
#RUN chmod a+x /etc/telegraf/telegraf.conf

#CMD [ "/run.sh" ]
