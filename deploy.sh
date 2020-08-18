# docker-compose -f nginx-compose.yml up -d
docker exec chainmore_backend_1 flask db migrate
docker exec chainmore_backend_1 flask db upgrade
docker-compose -f deploy-compose.yml pull
docker-compose -f deploy-compose.yml up -d