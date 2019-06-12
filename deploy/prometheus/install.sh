#!/bin/sh

helm delete --purge prom
helm install --name prom --namespace monitoring -f values.yaml stable/prometheus-operator
