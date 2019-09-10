# Kube and Helm demo


## Prerequisites

- A Kubernetes cluster (minikube can run locally - https://minikube.sigs.k8s.io/docs/start/)
- Helm
- Docker

After you have those installed you can create a docker registry inside minikube:
 - `helm install stable/docker-registry`

## Helm install

helm upgrade --install --atomic --timeout 200 --wait --namespace kube-demo --set image.tag="latest" kube-demo-1 ./charts/kube-demo
