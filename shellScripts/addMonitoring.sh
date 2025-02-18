helm upgrade prometheus prometheus-community/kube-prometheus-stack --install 
helm upgrade loki --namespace=loki-stack grafana/loki-stack \
  --set loki.url="http://loki.loki-stack.svc.cluster.local:3100" \
  --set loki.image.tag="2.9.0" \
  --install --create-namespace