helm upgrade prometheus prometheus-community/kube-prometheus-stack --install 
helm upgrade  loki --namespace=loki-stack grafana/loki-stack --install --create-namespace