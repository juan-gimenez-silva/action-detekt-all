FROM openjdk:jre-slim

ADD https://github.com/detekt/detekt/releases/download/1.0.0-RC12/detekt-cli-1.0.0-RC12-all.jar /usr/local/bin/detekt-cli-all.jar
RUN chmod +x /usr/local/bin/detekt-cli-all.jar
RUN cd $GITHUB_WORKSPACE/services/user

ENTRYPOINT ["java","-jar","/usr/local/bin/detekt-cli-all.jar"]
