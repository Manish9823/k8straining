# Day2 Exercises
## Exercise 1:
### Install chocolatey, kubernetes-cli, kubectx, kubens and minikube 
- Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
- choco install kubernetes-cli kubectx kubens minikube
- kubectx
- minikube start

## Exercise 2:
### Discover objects which can be namespaced and objects that cannot be namespaced
- kubectl api-resources --namespaced=false
- kubectl api-resources --namespaced=true

## Exercise 3:
### Create Namespace via kubectl
- kubectl create namespace test1
- kubectl get namespaces
- kubens
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
- kubectl get pods -n test3
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