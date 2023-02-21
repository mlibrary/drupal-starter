# drupal-starter

## Steps

1. Run the initialization script

  ```
  ./init.sh
  ```

2. Turn on the site

  ```
  docker-compose up -d`
  ```

3. Initialize the site in the browser. Go to http://localhost:3333

4. Run the post install script. This will install drush and will dump the
   database to `./starter.sql`. This will have the uuid. You can load this in
   your production site.

  ```
  ./post_install.sh
  ```

## Notes

The `/themes` folder maps to `/var/www/html/themes/custom` in the drupal container.

The `/modules` folder maps to `/var/www/html/modules/custom` in the drupal container.
