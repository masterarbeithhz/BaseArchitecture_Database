!#/bin/bash
VARHOST=$1
VARUSR=$2
VARPWD=$3
mysql -h $VARHOST -u $VARUSR -p$VARPWD < /opt/tbl_create.sql
#mysql -h mysql-authentication-service -u root -pPhilipp1 testdb < /opt/tbl_create.sql

