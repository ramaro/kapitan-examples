#!/bin/bash -e
kubectl config set-context prod-tuna --cluster minikube --user minikube --namespace prod-tuna
kubectl config use-context prod-tuna

DIR=$(dirname ${BASH_SOURCE[0]})

# Create namespace before anything else
${DIR}/kubectl.sh apply -f ${DIR}/../manifests/namespace.yml

for SECTION in manifests
do
  echo "## run kubectl apply for ${SECTION}"
  ${DIR}/kubectl.sh apply -f ${DIR}/../${SECTION}/ | column -t
done