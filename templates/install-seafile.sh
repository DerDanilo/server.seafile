
cd /opt/seafile/seafile-server-{{seafile_version}}

export SERVER_NAME=seafile
export SERVER_IP={{ip}}
export FILESERVER_PORT=8082
export SEAFILE_DIR=/opt/seafile/data
export USE_EXISTING_DB=0
export MYSQL_HOST=127.0.0.1
export MYSQL_PORT=3306
export MYSQL_ROOT_PASSWD=''
export MYSQL_USER={{mysql_user}}
export MYSQL_USER_PASSWD={{mysql_passwd}}
export MYSQL_USER_HOST='%'
export CCNET_DB=ccnet-db
export SEAFILE_DB=seafile-db
export SEAHUB_DB=seahub-db

./setup-seafile-mysql.sh auto -n $SERVER_NAME
# bug in seafile install: at least on parameter (like '-n') needed
