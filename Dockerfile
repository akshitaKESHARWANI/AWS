FROM openjdk:8
EXPOSE 8080
ADD target/book.jar book.jar
ENTRYPOINT ["java" "-jar" ,"/book.jar"]
