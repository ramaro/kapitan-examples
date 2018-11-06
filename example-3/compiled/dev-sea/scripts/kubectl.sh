#!/bin/bash -e
KUBECTL="kubectl --context dev-sea"

${KUBECTL} $@
