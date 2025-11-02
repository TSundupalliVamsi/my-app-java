# Stage 1: Build
FROM openjdk:17 AS build
WORKDIR /app
COPY src /app/src
RUN javac src/Main.java -d /app/out

# Stage 2: Runtime
FROM openjdk:17
WORKDIR /app
COPY --from=build /app/out /app
CMD ["java", "Main"]
