FROM jenkins/jenkins:latest

WORKDIR /
COPY test ./

ENTRYPOINT ['/bin/bash', 'ping']
CMD ["google.com"]
