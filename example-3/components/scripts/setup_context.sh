#!/bin/bash
{% set i = inventory.parameters %}
{% set cluster = i.cluster %}
kubectl config set-context {{i.target}} --cluster {{cluster.id}} --user {{cluster.user}} --namespace {{i.namespace}}
kubectl config use-context {{i.target}}
