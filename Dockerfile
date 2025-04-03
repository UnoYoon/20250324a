FROM eclipse-temurin:17-jre-alpine

# 현재 디렉토리에서 JAR 파일을 컨테이너의 /app 디렉토리로 복사
COPY /var/lib/jenkins/workspace/my-ce-32-eks/step07_cicd1/build/libs/step07_cicd1-0.0.1-SNAPSHOT.jar /app/test.jar

# 컨테이너 실행 시 JAR 파일을 실행
CMD ["java", "-jar", "/app/test.jar"]

