FROM techops.artifactory.cec.lab.emc.com/techops-docker-virtual/maven:3.9.9-amazoncorretto-8-debian

COPY devdurjpd-certificate.cer /usr/local/share/ca-certificates/

RUN update-ca-certificates