#!/bin/bash -e
{% set i = inventory.parameters %}
KUBECTL="kubectl --context {{i.target}}"

${KUBECTL} $@

