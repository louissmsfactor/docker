#! /bin/sh

if docker ps | grep -c 'tcp' ;then
    docker-compose -f /home/louis/dev/docker/mariadb/docker-compose.yml stop
    docker-compose -f /home/louis/dev/docker/mysql/docker-compose.yml stop
    docker-compose -f /home/louis/dev/www/ui_design/docker/docker-compose-dev.yml stop    
    # docker-compose -f /home/louis/dev/www/wordpress/stack.yml stop
    docker-compose -f /home/louis/dev/www/reminder-api/docker-compose-dev.yml stop
    docker-compose -f /home/louis/dev/www/authentication-api/docker-compose-dev.yml stop
    docker-compose -f /home/louis/dev/www/billing-api/docker-compose-dev.yml stop

else
    echo "Command failed"
fi
