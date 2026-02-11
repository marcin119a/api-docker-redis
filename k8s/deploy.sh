#minikube start

kubectl apply -f api-deployment.yaml
kubectl apply -f worker-deployment.yaml
kubectl apply -f redis-deployment.yaml
kubectl apply -f api-service.yaml
kubectl apply -f redis-service.yaml