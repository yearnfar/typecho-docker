docker-build:
	docker build --rm -t yearnfar/typecho-php .

docker-run:
	docker run --rm --name=typecho-php -p 9000:9000 -v ${CURRENTPATH}:/var/www/html yearnfar/typecho-php

docker-stop:
	docker stop typecho-php

docker-push:
	docker push yearnfar/typecho-php:latest

docker-prune:
	docker images | grep "^<none>" | awk '{print $$3}' | xargs docker rmi

docker-up:
	docker-compose up -d
