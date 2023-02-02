docker run --rm drupal:9-apache cat composer.json > ./composer.json
docker run --rm drupal:9-apache cat composer.lock > ./composer.lock

docker run --rm drupal:9-apache sh -c 'cd /var/www/html && tar -cf - ./modules 2>/dev/null' | tar xf - -C ./


docker run --rm drupal:9-apache sh -c 'cd /var/www/html && tar -cf - ./themes 2>/dev/null' | tar xf - -C ./

sudo chgrp -R 33 files
sudo chgrp -R 33 themes
sudo chgrp -R 33 modules
sudo chgrp 33 settings.php
sudo chgrp 33 composer.json
sudo chgrp 33 composer.lock

