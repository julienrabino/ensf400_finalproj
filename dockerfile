#base image is alpine, might need to change this..
FROM openjdk:11-jdk-slim


# copy files into the work directory
COPY . /app

# specifies where future commands will be run abd the directory fileswill be copied inside the container image
WORKDIR /app

#just chose a port (8080)
EXPOSE 8080

RUN chmod +x gradlew


CMD ["./gradlew", "appRun"]




