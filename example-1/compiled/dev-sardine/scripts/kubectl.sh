#!/bin/bash -e
KUBECTL="kubectl --context dev-sardine"

${KUBECTL} $@
