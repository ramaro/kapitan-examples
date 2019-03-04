#!/bin/bash -e
DIR=$(dirname ${BASH_SOURCE[0]})

# Create namespace before anything else
${DIR}/kubectl.sh apply -f ${DIR}/../manifests/namespace.yml

for SECTION in manifests
do
  echo "## run kubectl apply for ${SECTION}"
  kapitan secrets --reveal -f ${DIR}/../${SECTION}/ | ${DIR}/kubectl.sh apply -f - | column -t
done
