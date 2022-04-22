FROM python:3.6
RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak
RUN echo "">/etc/apt/sources.list
RUN echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster main">>/etc/apt/sources.list
RUN apt-get update
# RUN sudo apt-get install aptitude -y
# RUN sudo aptitude install python-dev -y
RUN apt-get install python3-dev -y
RUN apt-get install systemd -y
RUN apt-get install libtiff5-dev libjpeg8-dev zlib1g-dev libfreetype6-dev liblcms2-dev libwebp-dev tcl8.5-dev tk8.5-dev python-tk python-dev openssl libssl-dev libldap2-dev libsasl2-dev sqlite gcc automake -y
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
RUN echo 'Asia/Shanghai' > /etc/timezone
WORKDIR /ldap-admin
COPY . .
RUN pip3 install -r requirements/requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/
#CMD ["bash"]
CMD ["tail", "-f", "/dev/null"]
