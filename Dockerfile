FROM jenkins/jenkins:latest


CMD ['/bin/sh', '10']
EXPOSE 8080

ENTRYPOINT ["sleep"]
