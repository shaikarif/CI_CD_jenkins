FROM jenkins/jenkins:latest

WORKDIR /

COPY test ./
CMD ['/bin/sh', '10']
EXPOSE 8080

ENTRYPOINT ["sleep"]
