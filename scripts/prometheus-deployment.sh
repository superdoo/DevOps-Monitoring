kubectl apply -f prometheus/prometheus-configmap.yaml

kubectl apply -f prometheus/alertmanager-config.yaml

kubectl apply -f prometheus/prometheus-deployment.yaml

kubectl apply -f prometheus/prometheus-service.yaml

kubectl apply -f prometheus/alertmanager-deployment.yaml

kubectl apply -f prometheus/alertmanager-service.yaml
# kubectl apply -f python-app-deployment.yaml
# kubectl apply -f python-app-service.yaml
# kubectl apply -f grafana-deployment.yaml
# kubectl apply -f grafana-service.yaml
