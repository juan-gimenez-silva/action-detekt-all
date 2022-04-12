FROM gradle:4.10.2-jdk8 as builder

USER 0
RUN mkdir /home/gradle/zubale-backend
WORKDIR /home/gradle/zubale-backend
COPY . .
WORKDIR /home/gradle/zubale-backend/
RUN cd /home/gradle/zubale-backend/
RUN chmod +x ./gradlew
RUN ./gradlew :services:user:clean :services:user:detekt

