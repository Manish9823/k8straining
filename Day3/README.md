# Day3 Exercises
## Exercise 1:
### Statefulset
- kubectl apply -f nginx-statefulset.yaml
- kubectl get pods
- kubectl get statefulset

## Exercise 2:
### Daemonset
- kubectl apply -f nginx-daemonset.yaml
- kubectl get pods
- kubectl get daemonset

## Exercise 3:
### Daemonset
- kubectl apply -f cronjob.yaml
- kubectl get cronjobs
- kubectl get jobs
- kubectl get pods
- kubectl logs {{podname}}

# Exercise 4:
### Install the ingress-nginx Ingress controller
### https://kubernetes.github.io/ingress-nginx/
- kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.12.0/deploy/static/provider/cloud/deploy.yaml
- kubens ingress-nginx
- kubectl get all
