# Kube and Helm demo


## Prerequisites

- A Kubernetes cluster (minikube can run locally - https://minikube.sigs.k8s.io/docs/start/)
- Helm
- Docker
- Java JDK(8)

### Start minikube
  - minikube start (it will take a while)

### Docker registry
After you have those installed you can create a docker registry inside minikube:
 - `helm install stable/docker-registry`
 - run fw_docker_registry.sh (this will make the docker registry available at localhost:5000)
 
## Build the application 
 - Run build.sh (this will build the jar and docker container, and push that to the registry inside minikube)

## Deploy it in Kubernetes
 - Run deploy.sh (this will run the helm command to install the service)
 - To try it out run get_health_link.sh to retrive the healthcheck url for the application

## Checking the dashboard
 - minikube dashboard
 - This will allow you to see the pods/services/configmaps and other objects in  kubernetes. Make sure you're looking at the right namespace though :)


