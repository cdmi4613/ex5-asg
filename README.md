# ex5-asg

GitHub Actions와 Amazon ECR, AWS Systems Manager(SSM)를 이용한 Docker 자동 배포 실습

## 프로젝트 구조

```text
ex5-asg/
├── .github/
│   └── workflows/
│       └── docker.yml
├── images/
├── nginx/
│   ├── Dockerfile
│   └── index.html
└── README.md