FROM maven:3.8.3-openjdk-17-slim

WORKDIR /app

COPY . /app

RUN mvn clean package

EXPOSE 8080

ENTRYPOINT ["java","-jar","target/bankapp-0.0.1-SNAPSHOT.jar"]
