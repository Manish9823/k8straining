# Exercise 1
## Install Cert-manager
- kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.17.0/cert-manager.yaml
- curl https://github.com/cert-manager/cert-manager/releases/download/v1.17.0/cert-manager.yaml and view in notepad for the CRD's

# Exercise 2 
## Create self-signed certificate with DNS name of apps.mehmood.us
- kubectl apply -f self-signed.yaml
- kubens test121
- kubectl get issuers
- kubectl describe issuer selfsigned-issuer
- kubectl get certificates
- kubectl describe certificate selfsigned-cert
- kubectl get secrets
- kubectl get secrets selfsigned-cert-tls -o yaml
- base64 -d
- https://tools.keycdn.com/ssl (to view both ca.crt and tls.crt)

# Exercise 3
## Create letsencrypt certificate with DNS name of apps.mehmood.us
- kubectl apply -f letsencrypt-cert.yaml
- kubectl get issuers
- kubectl describe issuer selfsigned-issuer
- kubectl get certificates
- kubectl describe certificate letsencrypt-cert
- kubectl get secrets
- kubectl get secret letsencrypt-cert-tls -o yaml
- base64 -d
- https://tools.keycdn.com/ssl (to view both ca.crt and tls.crt)

# Exercise 1
## Install Ingress controller
## https://github.com/kubernetes/ingress-nginx
## This is an open source ingress-controller which plugs into the k8s Ingress crd and orchestrates 
- kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.12.0/deploy/static/provider/do/deploy.yaml

