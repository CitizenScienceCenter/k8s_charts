#!/bin/sh

export NAME=swaggerui-staging
export NS=c3s-staging
export TAG=latest
export IMG=swagger-ui
export PORT=8080
export HOST=openapi-staging.citizenscience.ch
envsubst < ../env-deploy.yaml > ${NAME}.deploy.yaml