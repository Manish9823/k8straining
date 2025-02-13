
# Exercise 1:

`` minikube start ``

Output: 

![image](https://github.com/user-attachments/assets/8bed6829-b0ef-4007-955a-492de7d92258)



# Exercise 2:

### Namespaces
Imagine you're working in a project where you have separate environments like development, staging, and production. You could create namespaces for each environment:
- dev
- staging
- prod
  
This way, the same resources (like Pods or Services) can exist across different namespaces without interfering with each other.

```kubectl api-resources --namespaced=false ```

``` kubectl api-resources --namespaced=true  ```

Output: 
![image](https://github.com/user-attachments/assets/9525930b-0700-4297-899f-0069d38cd28e)


# Exercise 3: 

``kubectl create namespace test1``

``kubectl get namespaces``


#### kubens
Purpose: kubens is a helper tool that's part of the kubectx suite. Its main function is to switch between namespaces in Kubernetes easily. It simplifies the workflow by letting you switch namespaces without needing to add --namespace <namespace> ( e.g. ```kubectl config set-context --current --namespace=<namespace>```) to every kubectl command you run.

``` kubens ```

```kubectl delete namespace test1```

```kubectl get namespaces```

Output: 

![image](https://github.com/user-attachments/assets/be21ec42-ebbd-4a34-ba45-89ef24c39750)



# Exercise 4:

```kubectl apply -f test2-namespace.yaml```

```kubectl get namespaces```

```kubens```

```kubectl get namespace test2 -o yaml```

```kubectl delete -f test2-namespace.yaml```

```kubectl get namespaces```

Output: 

![image](https://github.com/user-attachments/assets/11c75a21-bc45-4bb8-b81a-30d6bc3edae5)


# Exercise 5:

```kubectl apply -f nginx-pod.yaml```

```kubectl get pods -n test3```

```kubens test3```

```kubectl get pods```

Output:
![image](https://github.com/user-attachments/assets/02fca1b8-11cb-4294-ac8d-d93f031ea258)

```kubectl describe pod nginx-pod```
![image](https://github.com/user-attachments/assets/43a90718-033a-4903-a711-9f36f5b8a8b0)

```kubectl port-forward pod/nginx-pod 8080:80```

```kubectl exec -it nginx-pod -- /bin/sh```

```uname -a```

```cat /etc/*release```
![image](https://github.com/user-attachments/assets/49e66967-d048-4ac5-a42b-a8ce3fceb86b)

docker pull nginx:latest
docker pull nginx:alpine
docker pull nginx:alpine-slim

![image](https://github.com/user-attachments/assets/cfa71515-d8e7-4f2a-bf84-bf7854f3ca5d)
![image](https://github.com/user-attachments/assets/bbdde442-e5c1-4458-af79-85b046619b34)


# Exercise 7:

```minikube start```

```minikube dashboard```

![image](https://github.com/user-attachments/assets/9e07a146-7bce-4edb-aeee-6a7de5629090)

![image](https://github.com/user-attachments/assets/fc753f76-70c9-4ab1-a1bd-0167581537a8)


# Exercise 8:

```docker build . -t sampleapi:latest````
![image](https://github.com/user-attachments/assets/c6341f2d-d6f6-4d5e-a349-ab663683ec56)


# Exercise 9:

```kubectl apply -f nginx-deployment.yaml```

```kubectl rollout status deployment/nginx-deployment -n test4```

```kubectl get deployments -n test4```

```kubectl get pods --show-labels```

```kubectl get rs```

![image](https://github.com/user-attachments/assets/73b00bb1-0f9a-48dd-8832-aa1db3b316e3)

```kubectl describe rs nginx-deployment-69d564d994```

![image](https://github.com/user-attachments/assets/a86ba95f-3909-4ac9-85b6-a1d85828acfb)

```kubectl logs nginx-deployment-69d564d994-66pxl```

![image](https://github.com/user-attachments/assets/8a16fb45-b38b-42b9-b163-52cb5d4e8b79)

```kubectl edit deployment/nginx-deployment```

![Screenshot 2025-02-13 192349](https://github.com/user-attachments/assets/a7f633e6-f83c-4791-aec1-52add6d84d34)

```kubectl get rs```

```kubectl get rs -o wide```

```kubectl rollout history deployment/nginx-deployment```

```kubectl rollout undo deployment/nginx-deployment```

![image](https://github.com/user-attachments/assets/dd06b7c2-ea5e-4f87-8332-55365040acc0)

```kubectl get rs -o wide```

![image](https://github.com/user-attachments/assets/933a3c62-5df1-4fda-af21-43fa57047a65)

```kubectl scale deployment nginx-deployment --replicas 10```

```kubectl get pods -o wide```

![image](https://github.com/user-attachments/assets/7d3e68fa-7df0-44eb-99a6-ea47428a0c3a)


# Exercise 10:

```kubectl describe configmap nginx-configmap```

![image](https://github.com/user-attachments/assets/9ffebed7-6031-413b-9b84-89c35e18bd65)

```kubectl get pods```

```kubectl port-forward pod/nginx-deployment-8b475584-ggf9v 8080:80```

![image](https://github.com/user-attachments/assets/158fd37e-7ddd-4f42-a635-f6a6811c7d87)

```kubectl exec -it nginx-deployment-8b475584-ggf9v -- sh```

```printenv```

![image](https://github.com/user-attachments/assets/5742b006-6657-44c8-8cff-d8588c51f264)





