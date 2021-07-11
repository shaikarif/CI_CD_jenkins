FROM jenkins/jenkins:latest

WORKDIR /
COPY test ./
CMD [ 'ping' ]
EXPOSE 8080

ENTRYPOINT [ '/bin/bash', "google.com"]
