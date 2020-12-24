FROM gitpod/workspace-full-vnc

USER root

RUN apt-get -q update && \
    apt-get install -yq libnss3 libnspr4 xdg-utils && \
    mkdir -p /tmp/cr/ && \
    wget -q https://github.com/Eloston/ungoogled-chromium-binaries/releases/download/87.0.4280.67-1.unportable1/ungoogled-chromium-driver_87.0.4280.67-1.unportable1_amd64.deb -O /tmp/cr/ungoogled-chromium-driver.deb && \
    wget -q https://github.com/Eloston/ungoogled-chromium-binaries/releases/download/87.0.4280.67-1.unportable1/ungoogled-chromium-l10n_87.0.4280.67-1.unportable1_all.deb -O /tmp/cr/ungoogled-chromium-l10n.deb && \
    wget -q https://github.com/Eloston/ungoogled-chromium-binaries/releases/download/87.0.4280.67-1.unportable1/ungoogled-chromium_87.0.4280.67-1.unportable1_amd64.deb -O /tmp/cr/ungoogled-chromium.deb && \
    wget -q https://github.com/Eloston/ungoogled-chromium-binaries/releases/download/87.0.4280.67-1.unportable1/ungoogled-chromium-common_87.0.4280.67-1.unportable1_amd64.deb -O /tmp/cr/ungoogled-chromium-common.deb && \
    dpkg -i /tmp/cr/ungoogled-chromium-common.deb && \
    dpkg -i /tmp/cr/ungoogled-chromium.deb && \
    dpkg -i /tmp/cr/ungoogled-chromium-l10n.deb && \
    dpkg -i /tmp/cr/ungoogled-chromium-driver.deb && \
    rm  /tmp/cr/*

USER gitpod
