```shell
sudo yum install redis
sudo systemctl restart redis
redis-cli

sudo yum install python3-devel

sudo docker build -t yiluxiangbei/ldap-admin:v1 . 
sudo docker run -it yiluxiangbei/ldap-admin:v1 bash

sudo docker push yiluxiangbei/ldap-admin:v1

docker rmi `docker images | grep none | awk '{print $3}'`
```