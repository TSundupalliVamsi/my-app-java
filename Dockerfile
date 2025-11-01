# Use OpenJDK 17
FROM openjdk:17-alpine

# Set working directory
WORKDIR /app

# Copy Java source file
COPY Main.java .

# Compile the Java program
RUN javac Main.java

# Run the Java program
CMD ["java", "Main"]
