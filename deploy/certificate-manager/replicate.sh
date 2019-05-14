#!/bin/zsh

secret=tls-certificate-secret
echo $secret

sed "s/auxsecret/$secret/g" replicated_secret.yaml > replicated_secret-$secret.yaml

NS=$(kubectl get ns | grep -v kube-system | awk '{ print $1 }' | tail -n +2)

#Get NS - kube-system
for i in $NS; do
  echo $i
  kubectl apply -f replicated_secret-$secret.yaml -n $i
done
