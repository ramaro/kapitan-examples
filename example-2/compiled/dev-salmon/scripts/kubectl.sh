#!/bin/bash -e
KUBECTL="kubectl --context dev-salmon"

${KUBECTL} $@
