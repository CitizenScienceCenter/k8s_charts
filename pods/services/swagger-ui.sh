#!/bin/sh

export NAME=swaggerui-prod
export NS=c3s-prod
export TAG=latest
export IMG=swagger-ui
export PORT=8080
export HOST=openapi.citizenscience.ch
envsubst < ../env-deploy.yaml > ${NAME}.deploy.yaml