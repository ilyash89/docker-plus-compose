ARG DOCKER_VERSION=19.03
FROM docker:${DOCKER_VERSION}

ARG COMPOSE_VERSION=1.26.2

RUN apk add --no-cache python3
RUN pip3 install --no-cache-dir docker-compose==${COMPOSE_VERSION}
