#!/bin/bash -e
KUBECTL="kubectl --context prod-tuna"

${KUBECTL} $@
