# mediawiki-assignment
This project contains the necessary files to deploy MediaWiki on a Kubernetes cluster using custom Dockerfiles for the application and database. The project includes a Dockerfile, Kubernetes configuration files, 
MySQL Database, Helm,  Blue green deployment and a README file.

# Prerequisites
1.Creating Kubernetes cluster by the help of AZURE Portal.
2.kubectl configured to interact with the cluster

#Deployment
1.Build the Docker image
2.Push the Docker image to a container registry accessible by your Kubernetes cluster.
3. Create the required Kubernetes resources:
 main-deployment.yaml
 blue-deployment.yaml
 blue-service.yaml
 green-deployment.yaml
 green-service.yaml
 blue-service-lb.yaml
 green-service-lb.yaml

# Congigure the MySQL Datbase:
 1. Create Mysql database on azure portal.
 2. creatE DNS zone.

#Deployment Output:

![MediaWiki_Install Complete status](https://github.com/Tanmoy97/mediawiki-assignment/assets/53449205/71bf852c-6179-4d67-954a-08bf7d748535)


