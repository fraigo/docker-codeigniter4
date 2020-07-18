docker-compose exec db mysql -u root -pmysqlroot -e 'source /config/database/bak/full_backup.sql' corus_com
