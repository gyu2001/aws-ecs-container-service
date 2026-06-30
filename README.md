# AWS ECS 기반 컨테이너 서비스 구축

가상 서버(EC2) 관리 부담을 최소화하고 애플리케이션의 고가용성을 확보하기 위한 Fargate 기반 서버리스 컨테이너 배포 환경 구축

---

## 🏗 Architecture

[ Route53 ]
                         │
                    [   ALB   ]
                         │
                [ ECS Service ]
                (AWS Fargate)
                /            \
        [ Task ]          [ Task ]
      (Container)       (Container)
                \            /
                [ Amazon ECR ]
              (Image Repository)

---

## 🛠 Tech Stack

`AWS Console` `Docker` `Amazon ECR` `Amazon ECS` `AWS Fargate` `ALB` `Route53`

---

## 📌 주요 구현 내용

### 1. 컨테이너 빌드 및 이미지 관리
- 애플리케이션 컨테이너화를 위한 Dockerfile 작성 및 빌드
- Amazon ECR 리포지토리 생성 후 빌드된 이미지 푸시 및 버전 관리

### 2. ECS 태스크 정의 및 보안 규칙 수립
- AWS Fargate 시작 유형의 ECS 태스크 정의 작성
- 컨테이너 전용 보안그룹 생성 및 포트 80 트래픽만 허용하도록 인바운드 규칙 제한

### 3. 고가용성 구성
- ALB 타겟 그룹 연동으로 컨테이너 레벨 로드 밸런싱 구축
- 오토스케일링 설정으로 트래픽 변동에 따른 컨테이너 수 자동 조정

---

## 👤 담당 역할

| 구분 | 내용 |
|---|---|
| 팀 프로젝트 | Dockerfile 작성 및 ECR 이미지 관리, ECS 태스크 정의 및 보안그룹 규칙 수립 담당 |
| 독립 재구현 | 프로젝트 완료 후 동일한 컨테이너 배포 프로세스를 혼자 처음부터 재구현하며 ECR 자격증명 설정 및 ECS 서비스-ALB 타겟 그룹 연동 전 과정 직접 확인 |

---

## 📄 발표 자료
[프로젝트 발표 자료 보기](./docs/aws ecs 기반 컨테이너 구축.pdf)
