# Day1 Exercises
## Exercise 1: Run ubuntu container and install apache and create new container
- docker run --name=base-container -it ubuntu
- apt update -y && apt install apache2 -y
- apachectl start
- docker container commit -m "Add Apache2" base-container apache2-container

## Exercise 2: Create container image from dockerfile
- docker build -f .\UbuntuApache2.Dockerfile -t ubuntu-apache2:latest .

## Exercise 3: Docker overlay network
- docker network create -d bridge my-net
- docker network ls
- docker run -itd --name=c1 --network=my-net -p 8081:80 ubuntu-apache2 
- docker run -itd --name=c2 --network=my-net -p 8082:80 ubuntu-apache2 
- docker run -it --network=my-net  ubuntu
- apt update -y && apt install net-tools iputils-ping curl dnsutils -y
- ping c1
- ping c2

## Exercise 4: Volumes
- docker volume create myvolume
- docker volume ls
- docker run -it --mount source=myvolume,target=/myvolume ubuntu
- docker run -it --mount type=bind,source=c:\Repos,target=/repos ubuntu

## Exercise 5: Docker Compose
- docker-compose up &
- docker-compose down &