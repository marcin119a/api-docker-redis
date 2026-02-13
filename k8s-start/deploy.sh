#minikube start

kubectl apply -f api-configmap.yaml
kubectl apply -f api-deployment.yaml
kubectl apply -f worker-deployment.yaml
kubectl apply -f redis-pod.yaml
kubectl apply -f api-service.yaml
kubectl apply -f redis-service.yaml