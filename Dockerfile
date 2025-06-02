FROM techops.artifactory.cec.lab.emc.com/techops-docker-virtual/maven:3.9.9-amazoncorretto-8-debian

COPY devdurjpd-certificate.cer /usr/local/share/ca-certificates/

RUN update-ca-certificates

RUN  keytool -import -alias mycert -keystore /usr/lib/jvm/java-1.8.0-amazon-corretto/jre/lib/security/cacerts -file /usr/local/share/ca-certificates/devdurjpd-certificate.cer -storepass changeit 