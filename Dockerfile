FROM java:8
LABEL EMAIL="kmraomca@gmail.com"
USER root
RUN curl -sSL https://get.docker.com/ | sh
RUN usermod -a -g docker jenkins
USER jenkins
EXPOSE 8080
ADD  target/usermanagement.jar   usermanagement.jar
ENTRYPOINT ["java", "-jar", "usermanagement.jar"]