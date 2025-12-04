FROM n8nio/n8n:latest

USER root

# 安装 ffmpeg + 字体支持
RUN apt-get update && \
    apt-get install -y ffmpeg fontconfig fonts-noto-cjk && \
    rm -rf /var/lib/apt/lists/*

USER node
WORKDIR /home/node
