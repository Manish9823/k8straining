# Day2 Exercises
## Exercise 1:
### Install chocolatey, kubernetes-cli, kubectx, kubens and minikube 
- Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
- choco install kubernetes-cli kubectx kubens minikube kubernetes-helm
- kubectx
- minikube start

## Exercise 2:
### Discover objects which can be namespaced and objects that cannot be namespaced
- kubectl api-resources --namespaced=false
- kubectl api-resources --namespaced=true
- kubectl get nodes -o wide

## Exercise 3:
### Create Namespace via kubectl
- kubectl create namespace test1
- kubectl get namespaces
- kubectl get namespace test1
- kubens
- kubens test1
- kubectl get namespace test1 -o yaml
- kubectl get namespace test1 -o json
- kubectl delete namespace test1
- kubectl get namespaces

## Exercise 4:
### Namespace creation, retrieval and deletion via yaml file
- kubectl apply -f test2-namespace.yaml
- kubectl get namespaces
- kubens
- kubectl get namespace test2 -o yaml
- kubectl delete -f test2-namespace.yaml
- kubectl get namespaces

## Exercise 5: 
### Create nginx pod in namespace test3 and explore some common operations on the pod
### Including describe, port-forward, exec
- kubectl apply -f nginx-pod.yaml
- kubectl get pods -n test3 -o wide
- kubens test3
- kubectl get pods
- kubectl describe pod nginx-pod
- kubectl port-forward pod/nginx-pod 8080:80
- kubectl exec -it nginx-pod -- /bin/sh
- uname -a
- cat /etc/*release
- Explore other Linux distros in executing the pods (https://hub.docker.com/_/nginx)
- docker pull nginx:latest
- docker pull nginx:alpine
- docker pull nginx:alpine-slim

## Exercise 6:
### Provision Azure Kubernetes Service 
- Resource Group: k8stest0009, Region: South Central US
- AKS Cluster: k8stest0009
- Cluster Node SKU: D2as_v4 (2 vCPU, 8GB), Node Count: 2-5, ACR: k8stest0009, Basic

## Exercise 7:
### Explore Dashboards (minikube dashboard, Azure Portal, Lens)
- minikube start
- minikube dashboard
- Lens

## Exercise 8:
### Explore .net9 api and its CI pipeline

## Exercise 9:
### Deployments, Replica Sets and Pods
- kubectl apply -f nginx-deployment.yaml
- kubectl rollout status deployment/nginx-deployment -n test4
- kubectl get deployments -n test4
- kubectl get pods --show-labels
- kubectl get rs
- kubectl describe rs {{rsname}}
- kubectl logs {{podname}}
- kubectl edit deployment/nginx-deployment
- kubectl get rs
- kubectl rollout history deployment/nginx-deployment
- kubectl rollout undo deployment/nginx-deployment
- kubectl scale deployment nginx-deployment --replicas 10
- kubectl get pods

## Exercise 10:
### Configmaps
- kubectl apply -f nginx-configmap.yaml
- kubens test10
- kubectl get configmaps
- kubectl describe configmap nginx-configmap
- kubectl port-forward pod/{{podname}} 8080:80
- kubectl exec -it nginx-deployment-65984d5b69-2gvxc -- sh
- printenv

## Exercise 11:
### Creating Secrets
- kubectl create namespace test-secrets
- kubens test-secrets
- kubectl create secret generic db-credentials --from-literal=username=admin --from-literal=password='ChangemeNow123!'
- kubectl get secrets db-credentials -o yaml
- kubectl create secret generic db-credentials2 --from-file=username=username.txt --from-file=password=password.txt
- kubectl get secrets db-credentials2 -o yaml

## Exercise 12:
### TLS Secrets
- openssl genpkey -algorithm RSA -out key.pem
- openssl req -new -x509 -key key.pem -out cert.pem -days 365
- openssl x509 -text -noout -in cert.pem
- kubectl create secret tls tls-cert --cert=cert.pem --key=key.pem
- kubectl get secrets tls-cert -o yaml

## Exercise 13:
### Using Secrets in workloads
- kubectl apply -f nginx-secret.yaml
- kubectl get secrets
- kubectl port-forward pod/{{pod_name}} 8080:80

## Exercist 14:
### Services (ClusterIP)
- kubectl apply -f nginx-service-clusterip.yaml
- kunens test5
- kubectl get services
- kubectl run my-shell --rm -i --tty --image ubuntu -- bash
- apt update -y && apt install curl iputils-ping -y
- ping nginx-service.test5.svc.cluster.local
- curl nginx-service.test5.svc.cluster.local
- kubectl port-forward service/nginx-service 8080:80  