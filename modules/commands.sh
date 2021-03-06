echo "Update app file laravel"

rm $APPLICATION_NAME/app/config/app.php

cp $ASSETS_PATH/app.php $APPLICATION_NAME/app/config/app.php

echo "Adding command folders"
mkdir $APPLICATION_NAME/app/$APPLICATION_MAIN_CLASS
mkdir $APPLICATION_NAME/app/$APPLICATION_MAIN_CLASS/Commands
mkdir $APPLICATION_NAME/app/$APPLICATION_MAIN_CLASS/Handlers
mkdir $APPLICATION_NAME/app/$APPLICATION_MAIN_CLASS/Listeners
mkdir $APPLICATION_NAME/app/$APPLICATION_MAIN_CLASS/Validations
mkdir $APPLICATION_NAME/app/$APPLICATION_MAIN_CLASS/Exceptions
mkdir $APPLICATION_NAME/app/$APPLICATION_MAIN_CLASS/Core

echo "Creating custom command translator"


cp $ASSETS_PATH/CommandTranslator.php $APPLICATION_NAME/app/$APPLICATION_MAIN_CLASS/Core/CommandTranslator.php

sed -i "s/{main_class}/$APPLICATION_MAIN_CLASS/g" $APPLICATION_NAME/app/$APPLICATION_MAIN_CLASS/Core/CommandTranslator.php
