kubectl create secret generic grafana-secret \
  --from-literal=admin-user=admin \
  --from-literal=admin-password=admin \
  --namespace=mymonitoring
# 