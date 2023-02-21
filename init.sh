if [ -f ".env" ]; then
  echo "🌎 .env exists. Leaving alone"
else
  echo "🌎 .env does not exist. Copying .env-example to .env"
  cp .env-example .env
fi

if [ -f "composer.json" ]; then
  echo "📄 composer.json exists. Leaving alone."
else
  echo "📋 copy composer.json and composer.lock from drupal"
  docker run --rm drupal:10-apache cat composer.json > ./composer.json
  docker run --rm drupal:10-apache cat composer.lock > ./composer.lock
fi

./chgrp_to_www.sh

echo "🚢 Build docker images"
docker-compose build

echo "📦 Composer install"
docker-compose run --rm web composer install
