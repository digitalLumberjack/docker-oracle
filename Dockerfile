FROM wnameless/oracle-xe-11g:latest

ENV ORACLE_USER ''

ENV ORACLE_PASSWORD ''

RUN apt-get update && apt-get install -y gettext

ADD init.sql /opt/

CMD mkdir /docker-entrypoint-initdb.d && envsubst < /opt/init.sql > /docker-entrypoint-initdb.d/init.sql && /usr/sbin/startup.sh && /usr/sbin/sshd -D
