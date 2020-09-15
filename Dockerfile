FROM python:3.7.4-alpine3.10

RUN set -eu

# Add python pip and bash
RUN apk add --no-cache py-pip bash build-base openssl-dev libffi-dev

# Install docker-compose via pip
RUN pip3 install --no-cache-dir docker-compose awscli envsubst
