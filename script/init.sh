username="root"
if ! test -z $1;then
    username=$1
fi
mysql -u$username -p$2  -e "DROP database IF EXISTS meta;create database meta;source init.sql;"
