FROM gitpod/workspace-full-vnc

USER root

RUN apt-get -q update && \
    apt-get install -yq libnss3 libnspr4 x11-utils xdg-utils libasound2 libatk-bridge2.0-0 libatk1.0-0 libatomic1 libatspi2.0-0 libc6 libcairo-gobject2 libcairo2 libcups2 libdbus-1-3 libexpat1 libgcc1 libgdk-pixbuf2.0-0 libglib2.0-0 libgtk-3-0 libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libpci3 libpulse0 libuuid1 libva2 libwayland-client0 libx11-6 libx11-xcb libxcb1 libxcomposite1 libxdamage1 libxext libxfixes libxi libxkbcommon0 libxrandr libxrender libxtst zlib1g libatomic1 libc6 libdbus-1-3 libexpat1 libgcc1 libglib2.0-0 libnspr4 libnss3 libuuid1 libx11- libx11-xcb libxcb1 libxcomposite1 libxdamage1 libxext libxfixes libxkbcommon0 libxrandr libxrender libxtst zlib1g && \
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
