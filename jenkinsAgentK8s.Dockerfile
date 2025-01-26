FROM ubuntu:latest

RUN apt-get update && \
    apt-get -y install ca-certificates

COPY ./kubectlFile/kubectl-v1.32.1 /usr/local/bin/kubectl
COPY ./helmFile/helm3 /usr/local/bin/helm