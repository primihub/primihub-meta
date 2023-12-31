FROM maven:3.8.1-openjdk as build

WORKDIR /opt

ADD . /opt/

RUN ARCH=`arch | sed s/arm64/aarch_64/ | sed s/aarch64/aarch_64/ | sed s/amd64/x86_64/` \
  && mvn clean install -Dmaven.test.skip=true -Dos.detected.classifier=linux-${ARCH}

FROM openjdk:8-jre

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update \
  && apt -y install tzdata \
  && ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

COPY --from=build /opt/meta-api/target/*-SNAPSHOT.jar /applications/meta.jar
COPY --from=build /opt/meta-simple/target/*-SNAPSHOT.jar /applications/meta-simple.jar

ENTRYPOINT ["/bin/sh","-c","java -jar -Dfile.encoding=UTF-8 /applications/meta.jar --server.port=8080"]