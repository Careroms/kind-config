helm install --namespace jenkins  \
  jenkins jenkins/jenkins \
  --set controller.ingress.enabled=true \
  --set controller.additionalPlugins={"uno-choice:2.8.6","matrix-auth:3.2.4"} 
  # --debug --dry-run 