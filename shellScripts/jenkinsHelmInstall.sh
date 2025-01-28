helm install --namespace jenkins  \
  jenkins jenkins/jenkins \
  --set controller.ingress.enabled=true \
  --set controller.additionalPlugins={"uno-choice:2.8.6"} 
  # --debug --dry-run 