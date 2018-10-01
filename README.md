# k8wordpress

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
