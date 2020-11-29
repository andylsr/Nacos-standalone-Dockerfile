FROM centos:7.5.1804
LABEL author="andylsr@qq.com"
LABEL description="nacos server standalone 1.4.0"

ENV BASE_DIR="/home/nacos" \
    TIME_ZONE="Asia/Shanghai"

WORKDIR $BASE_DIR
COPY ./nacos $BASE_DIR

RUN yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel wget iputils nc vim libcurl
RUN ln -snf /usr/share/zoneinfo/$TIME_ZONE /etc/localtime && echo $TIME_ZONE > /etc/timezone \
    && yum clean all

EXPOSE 8848
VOLUME /home/nacos/conf/application.properties
VOLUME /home/nacos/bin/startup.sh

ENTRYPOINT ["/bin/bash", "bin/startup.sh", "-m", "standalone"]
