docker-oracle
===============
> And don't worry about the vase.

This image start a fresh Oracle 11 Express Edition database and add a default tablespace and Schema/User in the database.

See init.sql for user creation and rights.

This image is based on [wnameless/oracle-xe-11g:latest](https://hub.docker.com/r/wnameless/oracle-xe-11g/)

## Oracle credentials
- System :
  - sid: `xe`
  - username: `system`
  - password: `oracle`


- You user:
  - sid: `xe`
  - username: `${ORACLE_USER}`
  - password: `${ORACLE_PASSWORD}`
 
## Usage
``` bash
docker run -ti --rm -p 1521:1521 -e "ORACLE_ALLOW_REMOTE=true" -e "ORACLE_USER=myuser" -e "ORACLE_PASSWORD=mypassword" digitallumberjack/oracle:xe-11g-1.0.0
```
