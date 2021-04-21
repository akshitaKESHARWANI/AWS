#FROM openjdk:8

#LABEL maintainer="akshita961225@gmail.com"

# Add a volume pointing to /tmp
#VOLUME /tmp

# Make port 8080 available to the world outside this container
#EXPOSE 8080

# The application's jar file
#ARG JAR_FILE=target/spring-boot-crud-operation-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
#ADD ${JAR_FILE} spring-boot-crud-operation.jar

# Run the jar file 
#ENTRYPOINT ["java","spring-boot-crud-operation.jar"]
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-cp","/opt/app7:/opt/app7/lib/*","-Droot.dir=/opt/app7","com.bswen.app7.Main"]

FROM openjdk:8-jdk
VOLUME /tmp
#COPY target/*.jar my-app.jar
 COPY target/a/*.jar my-app1.jar
ENTRYPOINT ["java","-jar","/my-app1.jar"]
