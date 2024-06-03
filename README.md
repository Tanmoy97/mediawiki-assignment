# Mediawiki-assignment
This project contains the necessary files to deploy MediaWiki on a Kubernetes cluster using custom Dockerfiles for the application and database. The project includes a Dockerfile, Kubernetes configuration files, 
MySQL Database, Helm,  Blue green deployment and a README file.

# Prerequisites
1.Creating Kubernetes cluster by the help of AZURE Portal.
2.kubectl configured to interact with the cluster
3. AKS Cluster: Ensure you have an AKS cluster running with both blue and green deployments.
4. Azure CLI: Install the Azure CLI for managing Azure resources.


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


#Blue-green deployment:
1. Created the NodePort and expose the service.
2. Created load balancer for the blue green service.
3. Access application via my domain to ensure traffic is now directed to the green version.

This approach uses Azure Load Balancer and DNS settings to manage traffic between blue and green versions of application. By updating the DNS records, smoothly transition traffic from one version to another, with minimal downtime and a seamless user experience.
