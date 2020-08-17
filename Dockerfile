FROM java:8
LABEL EMAIL="kmraomca@gmail.com"
EXPOSE 8080
-v /var/run/docker.sock:/var/run/docker.sock
ADD  target/usermanagement.jar   usermanagement.jar
ENTRYPOINT ["java", "-jar", "usermanagement.jar"]