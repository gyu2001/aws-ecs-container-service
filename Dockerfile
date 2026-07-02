FROM nginx:alpine

# 기본 nginx 정적 페이지를 사용하는 컨테이너
# (Fargate 기반 ECS 서비스로 배포, ECR 리포지토리명: ecs-nginx)

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
