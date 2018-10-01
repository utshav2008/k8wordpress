# k8wordpress

<img width="427" alt="k8wordpress" src="https://user-images.githubusercontent.com/16876746/46309090-03600680-c5d9-11e8-8077-9d5873dd495a.png">

This is a custom built setup for Wordpress in Kubernetes. When I say custom built, it means that I am not using Wordpress images available in Docker hub. I have written a docker file to install LAMP stack and Wordpress in it.

Below are the components those are being used:
- Docker image for Wordpress. This is being built locally.
- Docker image for MySQL. I am pulling it from Docker hub.
- Kubernetes cluster. For testing use Minikube. 
- Kubectl to access and manage your resources. 

Optional:
- CI/CD Pipleline using Jenkins

I will discuss below one by one:
- Docker file for Wordpress
- Deployment of Wordpress and Mysql in Kubernetes Cluster
- CI/CD Pipeline (Optional)

## Wordpress:

In order to install Wordpress, we need a LAMP stack. So, the docker file inside wordpress directory takes care of all the setup and gives you an image for Wordpress. This image can be used in the kubernetes cluster. 

Two ways to import this image in Kuberenets Cluster:
- Build the docker image in the Kubernetes node. This will make the image locally available inside Kubernetes. You can pass below in the deployment.yml file
```sh
- image: wordpress-utshav-demo:latest
  imagePullPolicy: IfNotPresent  # This will not pull the image from docker hub if the image is present locally.
  name: wordpress
```
- Other way is to build the docker image in your local machine and push it to the docker hub repository. You can then refer it in the deployment.yml and the image will be pulled.

How to build the image:
```sh
$ cd wordpress
$ docker build -t wordpress-custom .
$ docker images | grep wordpress-custom # This is to verify if the image was built successfully
```
It takes DB_HOST, DB_PASSWORD, DB_NAME and DB_USER as environment variables. This is for connecting to MySQL server.
