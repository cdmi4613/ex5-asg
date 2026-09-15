#!/bin/bash

# ECR 로그인
aws ecr get-login-password --region ap-northeast-1 | \
docker login --username AWS --password-stdin 925047940866.dkr.ecr.ap-northeast-1.amazonaws.com

# S3에서 Docker Compose 파일 가져오기
aws s3 cp \
  s3://std01-static-web-0914/docker-compose.yaml \
  /home/ec2-user/docker-compose.yaml

# 최신 ECR 이미지 Pull
docker compose -f /home/ec2-user/docker-compose.yaml pull

# 컨테이너 실행
docker compose -f /home/ec2-user/docker-compose.yaml up -d
