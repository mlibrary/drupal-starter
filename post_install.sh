docker-compose exec drupal composer config allow-plugins true
docker-compose exec drupal composer require drush/drush

docker-compose exec database mysqldump -u user -ppassword drupal > db/starter.sql
