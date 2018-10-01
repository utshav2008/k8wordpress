# k8wordpress

This is a custom built setup for Wordpress in Kuberenetes. When I say custom built, it means that I am not using Wordpress images available in Docker hub. I have written a docker file to install LAMP stack and Wordpress on top of it.

Below are the components those are being used:
- Docker image for Wordpress. This is being built locally.
- Docker image for MySQL. I am pulling it from Docker hub.
- Kuberenetes cluster. For testing use Minikube. 
- Kubectl to access and manage your resources. 

