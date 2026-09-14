#!/bin/bash

dnf update -y

# Docker 설치
dnf install -y docker

# Docker 시작 + 부팅 시 자동 시작
systemctl enable --now docker

# ec2-user Docker 권한
usermod -aG docker ec2-user

# Docker Compose 설치
mkdir -p /usr/local/lib/docker/cli-plugins

curl -SL \
  https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 \
  -o /usr/local/lib/docker/cli-plugins/docker-compose

chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
