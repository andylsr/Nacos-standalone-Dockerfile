#### Build Steps
```bash
wget "https://github.com/alibaba/nacos/releases/download/1.4.0/nacos-server-1.4.0.tar.gz"
tar zxvf nacos-server-1.4.0.tar.gz
rm -rf ./nacos/conf/application.properties ./nacos/bin/startup.sh
docker build -t andylsr/nacos-standalone:1.4.0 .
docker push andylsr/nacos-standalone:1.4.0
```