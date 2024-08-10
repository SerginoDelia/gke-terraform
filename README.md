# GKE Terraform

Deployment 

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

