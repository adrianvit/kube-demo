imageRepository=$(bash get_registry_ip.sh):5000/kube-demo
echo "Using image repo: $imageRepository"
cd infrastructure
helm upgrade --install --atomic --timeout 600 --wait --namespace helm-demo --set image.tag="latest" --set image.repository=$imageRepository helm-demo-1 ./charts/helm-demo