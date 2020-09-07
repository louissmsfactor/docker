#! /bin/sh

docker-compose -f /home/louis/dev/docker/mariadb/docker-compose.yml up -d
docker-compose -f /home/louis/dev/docker/mysql/docker-compose.yml up -d
# docker run -d -p 8000:8000 -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
#docker-compose -f /home/louis/dev/www/ui_design/docker/docker-compose.yml up -d
docker-compose -f /home/louis/dev/www/reminder-api/docker-compose-dev.yml up -d
docker-compose -f /home/louis/dev/www/billing-api/docker-compose-dev.yml up -d
docker-compose -f /home/louis/dev/www/authentication-api/docker-compose-dev.yml up -d
