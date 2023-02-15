echo "🏘️  Changing ownership of files directory to www-data"
sudo chgrp -R 33 files
echo "🏘️  Changing ownership of modules directory to www-data"
sudo chgrp -R 33 modules
echo "🏘️  Changing ownership of config directory to www-data"
sudo chgrp -R 33 config
echo "🏘️  Changing ownership of themes directory to www-data"
sudo chgrp -R 33 themes
