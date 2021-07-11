FROM jenkins/jenkins:latest


CMD ['/bin/sh', 'ping']
EXPOSE 8080

ENTRYPOINT ["google.com"]
