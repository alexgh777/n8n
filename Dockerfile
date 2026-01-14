FROM node:20-bookworm-slim

# Install ffmpeg + fonts
RUN apt-get update && apt-get install -y --no-install-recommends \
    ffmpeg \
    fonts-dejavu-core \
    fontconfig \
    ca-certificates \
  && rm -rf /var/lib/apt/lists/*

# Install n8n
RUN npm install -g n8n

# n8n uses this port
EXPOSE 5678

# Render will set PORT, but n8n listens on 5678 by default
ENV N8N_PORT=5678
ENV NODE_ENV=production

CMD ["n8n"]
