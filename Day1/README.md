# Day1 Exercises
## Exercise 1: Run ubuntu container and install apache and create new container
> docker run --name=base-container -it ubuntu
> apt update -y && apt install apache2 -y
> apachectl start
> docker container commit -m "Add Apache2" base-container apache2-container

## Exercise 2: Create container image from dockerfile
> docker build -f .\UbuntuApache2.Dockerfile -t ubuntu-apache2:latest .