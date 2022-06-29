minikube start 
minikube dashboard 

kubectl get nodes 
kubectl describe nodes 

kubectl create -f postgres-sts.json 

kubectl get statefulset 
kubectl get pod 
kubectl logs postgres-0

kubectl describe sts postgres
kubectl describe pod postgres-0

kubectl get svc
kubectl describe service postgres-svc

kubectl get deploy
kubectl describe deploy api-heroes
kubectl get pod 
kubectl describe pod {id_pod}
kubectl logs {id_pod}
kubectl logs -f {id_pod}

kubectl apply -f api-deployment.json

minikube service api-heroes-svc --url 

kubectl delete -f .
kubectl create -f .

minikube delete