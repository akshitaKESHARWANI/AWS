FROM openjdk:8
EXPOSE 8080
ADD target/myapp.jar myapp.jar
ENTRYPOINT ["java" "-jar" ,"/my-app.jar"]
