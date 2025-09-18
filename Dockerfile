# JDK 17 기반 이미지
FROM eclipse-temurin:17-jdk-alpine

# 작업 디렉토리 설정
WORKDIR /app

# Gradle 빌드 결과 jar 복사
COPY build/libs/*.jar app.jar

# 컨테이너 실행 시
ENTRYPOINT ["java","-jar","app.jar"]
