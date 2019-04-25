#!/bin/sh

kubectl create ns c3s-prod c3s-staging c3s-test c3s-play
kubectl create ns external
kubectl create ns cert-manager
kubectl label namespace cert-manager certmanager.k8s.io/disable-validation=true
