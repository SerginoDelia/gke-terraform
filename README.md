# GKE Terraform
Deployment: 

update project ID
Add credentials or run: gcloud auth login

terraform init 
terraform plan
terraform apply --auto-approve

# connect kubernetes
kubectl apply -f yaml

helm repo add ingress-nginx \
  https://kubernetes.github.io/ingress-nginx

helm repo update

helm install my-ing ingress-nginx/ingress-nginx \
  --namespace ingress \
  --version 4.0.17 \
  --values nginx-values.yaml \
  --create-namespace

kubectl get service -o wide

grafana username: admin
Grafana password: admin

Terraform Setup
https://antonputra.com/google/create-gke-cluster-using-terraform/#create-gke-cluster-using-terraform

Grafana Installation
https://docs.google.com/document/d/1whVdpWic21cgoSkyMRdFnS72AZtlHPV8/edit?pli=1

Self Hosted Grafana
https://docs.google.com/document/d/1Bhf5o4lgJKNc3V1W72eeMnChGItycjzxT2G1YftoUBM/

Prometheus Setup
https://grafana.com/docs/grafana-cloud/monitor-infrastructure/kubernetes-monitoring/configuration/config-other-methods/prometheus/remote-write-helm-operator/

https://grafana.com/docs/grafana-cloud/monitor-infrastructure/kubernetes-monitoring/configuration/config-other-methods/prometheus/prometheus-operator/

