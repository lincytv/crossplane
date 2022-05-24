#!/bin/bash
echo "Creating a namespace"
kubectl create namespace crossplane-system
echo "installing crossplane"
helm repo add crossplane-stable https://charts.crossplane.io/stable
helm repo update
helm install crossplane --namespace crossplane-system crossplane-stable/crossplane
sleep 10
echo "checking crosspane"
helm list -n crossplane-system
kubectl get all -n crossplane-system
echo "installing cli"
curl -sL https://raw.githubusercontent.com/crossplane/crossplane/master/install.sh | sh

