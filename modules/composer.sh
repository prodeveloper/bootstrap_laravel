echo "Updating composer json file"

rm $APPLICATION_NAME/composer.json

cp $ASSETS_PATH/composer.json $APPLICATION_NAME/composer.json

sed -i "s/{application_name}/$APPLICATION_NAME/" $APPLICATION_NAME/composer.json
sed -i "s/{application_description}/$APPLICATION_DESCRIPTION/" $APPLICATION_NAME/composer.json
sed -i "s/{main_class}/$APPLICATION_MAIN_CLASS/" $APPLICATION_NAME/composer.json

echo "Updating composer"

(cd  $APPLICATION_NAME && composer update && php artisan ide-helper:generate)

