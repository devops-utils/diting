```shell
sudo yum install redis
sudo systemctl restart redis
redis-cli

sudo yum install python3-devel
pip3 install chardet -i https://pypi.tuna.tsinghua.edu.cn/simple/

sudo docker run -it --rm python:3.6 bash

sudo docker build -t yiluxiangbei/ldap-admin:v1 . 
sudo docker run -it yiluxiangbei/ldap-admin:v1 bash
cd utils
python3 ../apps/manage.py makemigrations common users perms navis likes
bash make_migrations.sh
cd ../apps/
python manage.py loaddata fixtures/init.json
cd ..
./dt start

sudo docker run -it -d --name ldap-admin yiluxiangbei/ldap-admin:v1
sudo docker run -it -d -p 8072:8080 --name ldap-admin yiluxiangbei/ldap-admin:v1
sudo docker logs -f ldap-admin
sudo docker exec -it ldap-admin bash

/ldap-admin/logs/
/ldap-admin/data

http://49.232.6.131:8072/
http://49.232.6.131:8072/users/login
admin
admin

sudo docker stop ldap-admin
sudo docker rm ldap-admin

cd docker
sudo docker-compose up
sudo docker-compose up -d

sudo docker-compose build ldap-admin

sudo docker-compose up ldap-admin
sudo docker-compose up -d ldap-admin
sudo docker-compose stop ldap-admin

sudo docker exec -it ldap-admin-fe bash

sudo docker-compose logs -f

sqlite3 ldap/data/db.sqlite3

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

cat <<EOF > /etc/apt/sources.list
deb http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse

# deb http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse
# deb-src http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
EOF

apt-key list

gpg --keyserver keyserver.ubuntu.com --recv-keys 40976EAF437D05B5
gpg --keyserver keyserver.ubuntu.com --recv-keys 3B4FE6ACC0B21F32
apt-get update

https://developer.aliyun.com/mirror/ubuntu?spm=a2c6h.13651102.0.0.310d1b11sBNEzg
lsb_release -a

https://datatables.net/download
```

```
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
```