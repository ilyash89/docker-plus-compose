ARG DOCKER_VERSION=17.09
FROM docker:${DOCKER_VERSION}

ARG COMPOSE_VERSION=1.17.1

RUN apk add --no-cache py2-pip
RUN pip install --no-cache-dir docker-compose==${COMPOSE_VERSION}
