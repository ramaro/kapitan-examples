#!/bin/bash
kubectl config set-context dev-sea --cluster minikube --user minikube --namespace dev-sea
kubectl config use-context dev-sea