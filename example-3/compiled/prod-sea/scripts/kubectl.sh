#!/bin/bash -e
KUBECTL="kubectl --context prod-sea"

${KUBECTL} $@
