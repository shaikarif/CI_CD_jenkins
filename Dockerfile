FROM jenkins/jenkins:latest

WORKDIR /
COPY test ./

ENTRYPOINT ['ping']
CMD ['google.com']
