FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app

# app 모듈에서 생성된 JAR 파일 복사
COPY app/build/libs/*.jar app.jar

ENTRYPOINT ["java","-jar","app.jar"]