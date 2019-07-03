include conf.sh

run-stack:
	docker stack deploy -c docker-stack.yml --with-registry-auth --prune --resolve-image always overpass-api

build:
	docker build -t overpass-api .
	docker tag overpass-api docker-registry.inventi.cz/overpass-api
	docker push docker-registry.inventi.cz/overpass-api
