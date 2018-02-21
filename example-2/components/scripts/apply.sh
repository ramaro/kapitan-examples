#!/bin/bash -e
{% set i = inventory.parameters %}
{% set cluster = i.cluster %}
kubectl config set-context {{i.target}} --cluster {{cluster.name}} --user {{cluster.user}} --namespace {{i.namespace}}
kubectl config use-context {{i.target}}

DIR=$(dirname ${BASH_SOURCE[0]})

# Create namespace before anything else
${DIR}/kubectl.sh apply -f ${DIR}/../manifests/namespace.yml

for SECTION in manifests
do
  echo "## run kubectl apply for ${SECTION}"
  ${DIR}/kubectl.sh apply -f ${DIR}/../${SECTION}/ | column -t
done
