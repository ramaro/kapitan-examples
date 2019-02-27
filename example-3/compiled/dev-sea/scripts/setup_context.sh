#!/bin/bash
kubectl config set-context dev-sea --cluster kubernetes --user kubernetes-admin --namespace dev-sea
kubectl config use-context dev-sea