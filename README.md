kubernetes-gcp-ingress
-------------------

An all in one example of how to make kubernetes ingress work with nginx/L7 k8s in GCP

## Dependencies

`go get github.com/AlexsJones/vortex`


## Run commands

```
gcloud container clusters create temp --num-nodes=1 --machine-type=n1-standard-1 --zone=us-east4-a --scopes https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/trace.append              

./build_environment.sh default

kubectl apply -f deployment/
```

