FROM gitpod/workspace-full-vnc

USER gitpod

# RUN sudo apt-get -q update && \
#     sudo apt-get install -yq chromium-browser && \
#     sudo snap install chromium && \
#     sudo rm -rf /var/lib/apt/lists/*

#sudo apt remove chromium-browser chromium-browser-l10n chromium-codecs-ffmpeg-extra && \
#sudo apt install libgcc1 libmpx2 gcc-8-base && \
RUN sudo apt-get -q update && \
    sudo apt-get install -yq libnss3 libnspr4 && \
    sudo mkdir -p /tmp/cr/ && \
    sudo wget -q https://github.com/Eloston/ungoogled-chromium-binaries/releases/download/87.0.4280.67-1.unportable1/ungoogled-chromium-driver_87.0.4280.67-1.unportable1_amd64.deb -O /tmp/cr/ungoogled-chromium-driver.deb && \
    sudo wget -q https://github.com/Eloston/ungoogled-chromium-binaries/releases/download/87.0.4280.67-1.unportable1/ungoogled-chromium-l10n_87.0.4280.67-1.unportable1_all.deb -O /tmp/cr/ungoogled-chromium-l10n.deb && \
    sudo wget -q https://github.com/Eloston/ungoogled-chromium-binaries/releases/download/87.0.4280.67-1.unportable1/ungoogled-chromium_87.0.4280.67-1.unportable1_amd64.deb -O /tmp/cr/ungoogled-chromium.deb && \
    sudo dpkg -i /tmp/cr/ungoogled-chromium.deb && \
    sudo dpkg -i /tmp/cr/ungoogled-chromium-l10n.deb && \
    sudo dpkg -i /tmp/cr/ungoogled-chromium-driver.deb && \
    sudo rm  /tmp/cr/*
