#!/bin/sh

export NAME=graphql-prod
export NS=c3s-prod
export TAG=latest
export IMG=postgraphile
export PORT=5000
export HOST=graph.citizenscience.ch
envsubst < ../env-deploy.yaml > ${NAME}.deploy.yaml