FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    python3 \
    python3-pip \
    fonts-dejavu-core \
    fontconfig \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

USER node

