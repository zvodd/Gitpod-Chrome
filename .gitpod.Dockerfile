FROM gitpod/workspace-full-vnc

USER gitpod

RUN sudo apt-get -q update && \
    sudo apt-get install -yq chromium-browser && \
    sudo snap install chromium && \
    sudo rm -rf /var/lib/apt/lists/*
