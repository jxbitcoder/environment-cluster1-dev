kubectl create -f postgres-configmap.yaml 
kubectl create -f postgres-storage.yaml 
kubectl create -f postgres-deployment.yaml 
kubectl create -f postgres-service.yaml 
kubectl get svc postgres
kubectl get pod
pgpod=$(kubectl get pod| grep post| cut -d " " -f 1)
kubectl port-forward $pgpod 50000:5432 &

sleep 1
echo " psql -h localhost -U postgresadmin --password -p 50000 postgresdb"
