FROM eclipse-temurin:17-jdk-jammy as builder
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline -B
COPY ./src ./src
RUN ./mvnw clean install
EXPOSE 1337
RUN ./mvnw dependency:go-offline -B
RUN ./mvnw install -DskipTests=true
