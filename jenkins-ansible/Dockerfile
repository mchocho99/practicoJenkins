FROM jenkins/jenkins

USER root

RUN apt-get update && apt-get install -y iputils-ping telnet && \
    apt-get install -y python3-pip && apt-get install -y ansible && \
    pip3 install --upgrade pip && pip3 install awscli

USER jenkins