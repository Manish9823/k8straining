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
### Explore ConfigMaps
- kubectl apply -f nginx-configmap.yaml
- kubectl get configmaps
- kubectl describe configmaps
- kubectl get configmaps {{}} -o yaml

## Exercise 10:
### Deployments, Replica Sets and Pods
- kubectl apply -f nginx-deployment.yaml
- kubens test4
- kubectl get pods --watch
- kubectl logs {{podname}}
- kubectl get deployments -o wide
- kubectl get rs -o wide
- kubectl scale deployment nginx-deployment --replicas 10
- kubectl top pod
- kubectl top node
- Update version to roll forward
- kubectl apply -f nginx-deployment.yaml
- kubectl rollout status deployment/nginx-deployment
- kubectl get rs -o wide
- kubectl describe deployments
- kubectl rollout history deployment/nginx-deployment
- kubectl rollout history deployment/nginx-deployment --revision 3
- kubectl rollout undo deployment/nginx-deployment # Undo last deployment (or use --to-revision to a specific revision)

## Exercise 10:
### Services
- kubectl apply -f nginx-service-clusterip.yaml
- kubens test5
- kubectl get services
- kubectl describe service nginx-service