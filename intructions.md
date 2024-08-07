gcloud auth application-default login
terraform init
terraform workspace new prod
terraform workspace new dev
terraform workspace select prod
terraform apply -var-file=prod.tfvars
terraform apply
kubectl apply -f k8s/1-example.yaml
kubectl apply -f k8s/2-example.yaml
brew install helm
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm install my-ing ingress-nginx/ingress-nginx \
 --namespace ingress \
 --version 4.0.17 \
 --values nginx-values.yaml \
 --create-namespace
kubectl apply -f k8s/3-example.yaml