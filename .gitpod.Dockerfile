FROM gitpod/workspace-full-vnc

USER root

RUN apt-get -q update && \
    apt-get install -yq libnss3 libnspr4 x11-utils xdg-utils libatomic1 libc6 libdbus-1-3 libexpat1 libgcc1 libglib2.0-0 libnspr4 libnss3 libuuid1 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxdamage1 libxext6 libxfixes3 libxkbcommon0 libxrandr2 libxrender1 libxtst6 zlib1g ungoogled-chromium libasound2 libatk-bridge2 libatk1 libatomic1 libatspi2 libc6 libcairo-gobject2 libcairo2 libcups2 libdbus-1-3 libexpat1 libgcc1 libgdk-pixbuf2 libglib2 libgtk-3-0 libnspr4 libnss3 libpango-1 libpangocairo-1 libpci3 libpulse0 libuuid1 libva2 libwayland-client0 libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxdamage1 libxext6 libxfixes3 libxi6 libxkbcommon0 libxrandr2 libxrender1 libxtst6 && \
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
