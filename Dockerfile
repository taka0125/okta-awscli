FROM python:alpine

ARG CLI_VERSION=0.4.0

RUN apk -uv add --no-cache groff jq less && \
    pip install --no-cache-dir okta-awscli==$CLI_VERSION

WORKDIR /data
