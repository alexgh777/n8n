FROM docker.n8n.io/n8nio/n8n:latest

USER root

RUN apk add --no-cache ffmpeg python3 py3-pip \
  ttf-dejavu fontconfig

USER node
