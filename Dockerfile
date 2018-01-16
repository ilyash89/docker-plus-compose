ARG DOCKER_VERSION=17.12
FROM docker:${DOCKER_VERSION}

ARG COMPOSE_VERSION=1.18.0

RUN apk add --no-cache py2-pip
RUN pip install --no-cache-dir docker-compose==${COMPOSE_VERSION}
