FROM python:3.6
RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak
COPY doc/sources.list /etc/apt/sources.list
RUN apt-get update
# RUN sudo apt-get install aptitude -y
# RUN sudo aptitude install python-dev -y
RUN apt-get install python3-dev -y
RUN apt-get install systemd -y
RUN apt-get install libtiff5-dev zlib1g-dev libfreetype6-dev \
    liblcms2-dev libwebp-dev python-tk python-dev \
    openssl libssl-dev libldap2-dev libsasl2-dev sqlite3 gcc automake -y
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' > /etc/timezone
WORKDIR /ldap-admin
COPY . .
RUN pip3 install -r requirements/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/
RUN pip3 install chardet -i https://pypi.tuna.tsinghua.edu.cn/simple/
RUN cd utils \
    && python3 ../apps/manage.py makemigrations common users perms navis likes \
    && bash make_migrations.sh \
    && cd ../apps/ \
    && python manage.py loaddata fixtures/init.json
RUN chmod +x dt
#CMD ["bash"]
#CMD ["tail", "-f", "/dev/null"]
ENTRYPOINT ["/ldap-admin/dt", "start"]
