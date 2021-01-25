FROM openjdk:11-jdk

RUN apt-get update && apt-get install --assume-yes --allow-unauthenticated ant && apt-get clean

COPY build.xml .

ENTRYPOINT ["ant"]
