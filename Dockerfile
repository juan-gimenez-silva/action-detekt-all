FROM gradle:4.10.2-jdk8 as builder

USER 0
RUN cd $GITHUB_WORKSPACE
RUN ./gradlew :services:user:clean :services:user:detekt
