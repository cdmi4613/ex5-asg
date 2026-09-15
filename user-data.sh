#!/bin/bash

dnf update -y
dnf install -y docker

systemctl enable --now docker
usermod -aG docker ec2-user

# Docker Compose 설치
mkdir -p /usr/local/lib/docker/cli-plugins
curl -SL \
  https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 \
  -o /usr/local/lib/docker/cli-plugins/docker-compose

chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
