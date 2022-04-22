```shell
sudo yum install redis
sudo systemctl restart redis
redis-cli

sudo yum install python3-devel

sudo docker run -it --rm python:3.6 bash

sudo docker build -t yiluxiangbei/ldap-admin:v1 . 
sudo docker run -it yiluxiangbei/ldap-admin:v1 bash

sudo docker push yiluxiangbei/ldap-admin:v1

docker rmi `docker images | grep none | awk '{print $3}'`
```

```shell
cat <<EOF > /etc/apt/sources.list
deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse
EOF
```