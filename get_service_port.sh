ip=$(minikube ip)
port=$(kubectl -n helm-demo get service -o jsonpath="{.items[0].spec.ports[0].nodePort}")
echo http://$ip:$port/kube-demo/actuator/health