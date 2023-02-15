docker-compose exec web composer config allow-plugins true
docker-compose exec web composer require drush/drush

docker-compose exec database mysqldump -u user -ppassword drupal > ./starter.sql
