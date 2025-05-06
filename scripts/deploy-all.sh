#!/bin/bash

# echo "Creating namespaces..."
# kubectl apply -f namespaces/mymonitoring-namespace.yaml
# kubectl apply -f namespaces/prometheus-namespace.yaml
 kubectl apply -f namespaces/app-namespace.yaml

# echo "Deploying Grafana..."
# #kubectl apply -f grafana/grafana-configmap.yaml
# kubectl apply -f grafana/standard-grafana-deployment.yaml
# kubectl apply -f grafana/standard-grafana-service.yaml


echo "Restarting Grafana..."

kubectl rollout restart deployment grafana-n mymonitoring
kubectl rollout restart service grafana -n mymonitoring
# echo "Deploying Prometheus and Alertmanager..."
# kubectl apply -f prometheus/prometheus-configmap.yaml
# kubectl apply -f prometheus/prometheus-deployment.yaml
# kubectl apply -f prometheus/prometheus-service.yaml
# kubectl apply -f prometheus/alertmanager-config.yaml
# kubectl apply -f prometheus/alertmanager-deployment.yaml

# echo "Deploying Python metrics app..."
# kubectl apply -f app/app-deployment.yaml
