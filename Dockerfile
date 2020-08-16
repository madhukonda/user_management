FROM jenkins/jenkins:2.112
LABEL EMAIL="rao.konda@gmail.com"
USER sandhya
RUN mkdir /var/log/jenkins
RUN chown -R  jenkins:jenkins /var/log/jenkins
ENV JAVA_OPTS="-Xmx2148m"
ENV JENKINS_OPTS="--handlerCountMax=300  --logfile=/var/log/jenkins/jenkins.log"