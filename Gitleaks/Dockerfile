FROM node:20-alpine

# Install gitleaks
RUN apk add --no-cache git bash curl wget && \
    wget -qO - https://github.com/gitleaks/gitleaks/releases/download/v8.18.4/gitleaks_8.18.4_linux_x64.tar.gz | tar -xz -C /usr/local/bin gitleaks

# Install sarif-multitool
RUN npm install -g @microsoft/sarif-multitool

WORKDIR /app

