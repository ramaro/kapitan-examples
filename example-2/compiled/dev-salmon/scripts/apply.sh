#!/bin/bash -e
kubectl config set-context dev-salmon --cluster minikube --user minikube --namespace dev-salmon
kubectl config use-context dev-salmon

DIR=$(dirname ${BASH_SOURCE[0]})

# Create namespace before anything else
${DIR}/kubectl.sh apply -f ${DIR}/../manifests/namespace.yml

for SECTION in manifests
do
  echo "## run kubectl apply for ${SECTION}"
  ${DIR}/kubectl.sh apply -f ${DIR}/../${SECTION}/ | column -t
done