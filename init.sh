if [ -f ".env" ]; then
  echo "🌎 .env exists. Leaving alone"
else
  echo "🌎 .env does not exist. Copying .env-example to .env"
  cp .env-example .env
fi

echo "📋 copy composer.json and composer.lock from drupal"
docker run --rm drupal:9-apache cat composer.json > ./composer.json
docker run --rm drupal:9-apache cat composer.lock > ./composer.lock

./chgrp_to_www.sh

echo "🚢 Build docker images"
docker-compose build
