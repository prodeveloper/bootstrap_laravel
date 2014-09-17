ASSETS_PATH="/var/www/projects/bootstrap_laravel/assets"

echo "Starting bootstrap for laravel"

echo -n "What is the name of your application?: "

read -e APPLICATION_NAME

echo -n "Short description of your application: "

read -e APPLICATION_DESCRIPTION

echo -n "What is the domain: " 

read -e APPLICATION_MAIN_CLASS

echo -n "What is your database name: "

read -e APPLICATION_DATABASE
