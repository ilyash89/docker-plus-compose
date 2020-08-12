ARG DOCKER_VERSION=19.03
FROM docker:${DOCKER_VERSION}

ARG COMPOSE_VERSION=1.26.2

RUN apk add --no-cache python3 python3-dev py3-pip gcc musl-dev linux-headers openssl-dev libffi-dev make \
&& pip3 install --no-cache-dir wheel \
&& pip3 install --no-cache-dir docker-compose==${COMPOSE_VERSION} \
&& pip3 cache purge && apk del python3-dev gcc musl-dev linux-headers openssl-dev libffi-dev make
