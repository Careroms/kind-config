if ! docker container inspect cloud-provider-kind > /dev/null 2>&1; then
  GET_IMAGE=$(docker images --filter=reference=cloud-provider-kind --format "{{.Repository}}")

  if [ -z "$GET_IMAGE" ]; then
    git clone https://github.com/kubernetes-sigs/cloud-provider-kind.git &&
    docker build -t cloud-provider-kind ./cloud-provider-kind 
  else
    echo "$GET_IMAGE existed"
  fi

 if ! docker network inspect kind > /dev/null 2>&1; then
    SELECT_NETWORK="host"
  else
    SELECT_NETWORK="kind"
  fi
  echo "Select network is $SELECT_NETWORK"
  
  docker run -d --restart unless-stopped --privileged --name cloud-provider-kind --network $SELECT_NETWORK -v /var/run/docker.sock:/var/run/docker.sock cloud-provider-kind

else
  echo "Loadbalancer existed"
fi