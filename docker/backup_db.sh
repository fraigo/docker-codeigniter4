FILE=db_schema.sql
docker-compose exec db mysqldump -u root -pmysqlroot corus_com --no-data --skip-add-drop-table -r /config/database/$FILE
docker-compose exec db sed -i 's/MariaDB dump.*//g' /config/database/$FILE
docker-compose exec db sed -i 's/MySQL dump.*//g' /config/database/$FILE
docker-compose exec db sed -i 's/Dump completed.*//g' /config/database/$FILE
docker-compose exec db sed -i 's/ AUTO_INCREMENT=[0-9]*//g' /config/database/$FILE
FILE=db_data.sql
TABLES="radio_station region sales_cs_region setting user media_type user_media_type"
if [ "$1" == "all" ]; then
  TABLES=""
fi
docker-compose exec db mysqldump -u root -pmysqlroot corus_com --no-create-info  --skip-extended-insert -r /config/database/$FILE $TABLES
docker-compose exec db sed -i 's/MariaDB dump.*//g' /config/database/$FILE
docker-compose exec db sed -i 's/MySQL dump.*//g' /config/database/$FILE
docker-compose exec db sed -i 's/Dump completed.*//g' /config/database/$FILE
docker-compose exec db sed -i 's/UNLOCK TABLES.*//g' /config/database/$FILE
docker-compose exec db sed -i 's/LOCK TABLES.*//g' /config/database/$FILE

mkdir -p /config/database/bak
docker-compose exec db mysqldump -u root -pmysqlroot corus_com --opt -r /config/database/bak/full_backup.sql
