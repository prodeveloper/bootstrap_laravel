(cd  $APPLICATION_NAME &&  php artisan migrate --package=rydurham/sentinel && php artisan db:seed --class="SentinelDatabaseSeeder" && php artisan asset:publish rydurham/sentinel)
