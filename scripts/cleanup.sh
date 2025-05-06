#!/bin/bash

echo "Deleting all resources..."
kubectl delete namespace mymonitoring
kubectl delete namespace prometheus
kubectl delete namespace app-monitoring
