# Day2 Exercises
## Exercise 1:
### Install chocolatey, kubernetes-cli, kubectx, kubens and minikube 
- Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
- choco install kubernetes-cli kubectx kubens minikube
- kubectx
- minikube start

## Exercise 2:
###