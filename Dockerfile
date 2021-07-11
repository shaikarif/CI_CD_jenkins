FROM jenkins/jenkins:latest

WORKDIR /app

RUN mkdir /app

RUN  yum upgrade
RUN  yum install jenkins java-11-openjdk-devel
RUN  systemctl daemon-reload

CMD ['/bin/sh', '10']
EXPOSE 8080

ENTRYPOINT ["sleep"]
