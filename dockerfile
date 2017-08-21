FROM resin/rpi-raspbian

# commands run so far
#    apt-get update
#    apt-get install apache2
#    apt-get install mysql-server
#    mysql_secure_installation
#    apt-get install php5 php-pear php5-mysql
#    apt-get install -y git
#    apt-get install -y python
#    apt-get install -y python-pip
#    apt-get install -y python-mysqldb
#    pip install pynmea2
#    new user: admin/password



RUN    apt-get update && apt-get install -y \
        apache2 \
        mysql-server \
        php5 \ 
        php-pear php5-mysql \
        git \
        net-tools \
        openssh-server \
        python \ 
        python-pip \
        python-mysqldb

RUN    pip install pynmea2

        #RUN    mysql_secure_installation

# MySql Password: Admin2015


COPY ./init.sh ./init.sh
# RUN ./init.sh

# expose SSH
EXPOSE 22

# expose MySQL Port
EXPOSE 3306

# expose Apache port
EXPOSE 80

ENTRYPOINT /bin/bash
#ENTRYPOINT /dockerinit.sh && /bin/bash