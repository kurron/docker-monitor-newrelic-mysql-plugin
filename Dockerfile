# Pre-built JDK 8 image
FROM kurron/docker-oracle-jdk-8:latest

MAINTAINER Ron Kurr <kurr@jvmguy.com>

# copy the application jar file from the build output directory into the image
ADD https://bintray.com/artifact/download/kurron/maven/org/kurron/example/monitor-mongodb/1.1.0.RELEASE/monitor-mongodb-1.1.0.RELEASE.jar /opt/example/application.jar

# expose the port that the application will be listening on
EXPOSE 8100

ENTRYPOINT ["java", "-jar", "/opt/example/application.jar"]
