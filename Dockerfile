FROM jenkins/jenkins:latest

WORKDIR /
COPY test ./

ENTRYPOINT ['/bin/bash', "google.com"]
CMD ['ping']
