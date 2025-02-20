helm install --namespace jenkins --create-namespace \
  jenkins jenkins/jenkins \
  --set controller.ingress.enabled=true \
  --set controller.additionalPlugins={"uno-choice:2.8.6","matrix-auth:3.2.4", "kubernetes-cli:1.12.1"} 
  # --debug --dry-run 