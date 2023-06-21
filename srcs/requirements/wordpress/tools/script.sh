#!/bin/bash

wp core download --allow-root

cp wp-config-sample.php wp-config.php

sed -i "s/database_name_here/$DB_NAME/g" wp-config.php
sed -i "s/username_here/$DB_USER/g" wp-config.php
sed -i "s/password_here/$DB_PASS/g" wp-config.php
sed -i "s/localhost/$DB_HOST/g" wp-config.php

wp core install --url=localhost --title=Your_Blog_Title --admin_user=ael-bekk --admin_password=123 --admin_email=user@user.com --allow-root

wp user create test example@coolexample.com --user_pass=mypassword --role=author --porcelain --allow-root

php-fpm7.3 -F 