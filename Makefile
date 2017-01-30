DOCKER_TAG=polster/docker-tika
DOCKER_NAME=tika-server
TIKA_SERVER_HOST=127.0.0.1
TIKA_SERVER_PORT=9998

docker-build:
	docker build --tag ${DOCKER_TAG} .

docker-run-foreground:
	docker run --name ${DOCKER_NAME} -p ${TIKA_SERVER_HOST}:9998:${TIKA_SERVER_PORT} ${DOCKER_TAG}:latest

docker-run-background:
	docker run -d --name ${DOCKER_NAME} -p ${TIKA_SERVER_HOST}:9998:${TIKA_SERVER_PORT} ${DOCKER_TAG}:latest

docker-destroy-env:
	docker stop ${DOCKER_NAME}
	docker rm ${DOCKER_NAME}

tika-server-status:
	curl -X GET http://localhost:9998/tika

.PHONY: docker-build docker-run-foreground \
	docker-run-background docker-destroy-env \
	tika-server-status
