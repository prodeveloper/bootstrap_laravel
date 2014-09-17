echo "Adding base macros"

rm $APPLICATION_NAME/app/start/global.php

cp $ASSETS_PATH/global.php $APPLICATION_NAME/app/start/global.php

mkdir $APPLICATION_NAME/macros

cp  $ASSETS_PATH/bindings.php $APPLICATION_NAME/macros/bindings.php
cp  $ASSETS_PATH/filters.php $APPLICATION_NAME/macros/filters.php
cp  $ASSETS_PATH/listeners.php $APPLICATION_NAME/macros/listeners.php


