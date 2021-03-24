FROM openjdk:11-jdk
COPY ./target/ticketing-0.0.1-SNAPSHOT.jar  /usr/app/
WORKDIR /usr/app
RUN sh -c 'touch ticketing-0.0.1-SNAPSHOT.jar'
EXPOSE 8080
ENTRYPOINT ["java","-jar","ticketing-0.0.1-SNAPSHOT.jar"]