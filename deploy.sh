cd infrastructure
helm upgrade --install --atomic --timeout 200 --wait --namespace helm-demo --set image.tag="latest" helm-demo-1 ./charts/helm-demo