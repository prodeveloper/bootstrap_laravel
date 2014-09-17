sed -i "s/'database'  => 'homestead'/'database'  => '$APPLICATION_DATABASE'/" $APPLICATION_NAME/app/config/local/database.php
sed -i "s/'password'  => 'secret'/'password'  => '$CREDENTIALS_PASSWORD'/" $APPLICATION_NAME/app/config/local/database.php
sed -i "s/'username'  => 'homestead'/'username'  => '$CREDENTIALS_USER'/" $APPLICATION_NAME/app/config/local/database.php

