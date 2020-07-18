if [ "$1" == "" ]; then
docker-compose exec db mysql -u root -pmysqlroot -e 'source /config/database/db_schema.sql' corus_com -f
docker-compose exec db mysql -u root -pmysqlroot -e 'source /config/database/db_data.sql' corus_com -f
else
docker-compose exec db mysql -u root -pmysqlroot -e "source /config/database/$1.sql" corus_com -f
fi

