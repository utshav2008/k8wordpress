# Creating local volumes
kubectl create -f local-volumes.yaml

# Creating the secret
kubectl create secret generic mysql-pass --from-literal=name=‘mysql-pass’ --from-literal=password=‘1qazXSW2’

# MySQL deployment
kubectl create -f ./mysql-deployment.yaml

# WordPress deployment
kubectl create -f ./wordpress-deployment.yaml
