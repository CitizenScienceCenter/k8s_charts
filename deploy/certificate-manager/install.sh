#!/bin/sh

helm install --name cert-manager --namespace cert-manager jetstack/cert-manager --values cert-manager.yaml
kubectl apply -f issuer.yaml
kubectl apply -f cert.yaml
