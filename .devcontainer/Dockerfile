FROM mcr.microsoft.com/vscode/devcontainers/base:focal

ARG BOOTSTRAP_HASKELL_NONINTERACTIVE=true
ARG BOOTSTRAP_HASKELL_INSTALL_HLS=true

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    build-essential \
    curl \
    libffi-dev \
    libffi7 \
    libgmp-dev \
    libgmp10 \
    libncurses-dev \
    libncurses5 \
    libtinfo5 && \
    rm -rf /var/lib/apt/lists/*

USER vscode

RUN curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
