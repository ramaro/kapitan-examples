#!/bin/bash
kubectl config set-context prod-sea --cluster gke_kapitan-demo_us-central1-a_standard-cluster-1 --user gke_kapitan-demo_us-central1-a_standard-cluster-1 --namespace prod-sea
kubectl config use-context prod-sea