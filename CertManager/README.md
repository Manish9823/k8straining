# Exercise 2
## Install Cert-manager
- kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.17.0/cert-manager.yaml
- curl https://github.com/cert-manager/cert-manager/releases/download/v1.17.0/cert-manager.yaml and view in notepad for the CRD's




# Exercise 1
## Install Ingress controller
## https://github.com/kubernetes/ingress-nginx
## This is an open source ingress-controller which plugs into the k8s Ingress crd and orchestrates 
- kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.12.0/deploy/static/provider/do/deploy.yaml

