echo "Creating namespace : devspaces"
oc apply -f namespace.yaml
echo "Creating OperatorGroup: devspaces-operators"
oc apply -f operator-group.yaml
echo "Creating Subscription: devspaces"
oc apply -f devspaces-subs.yaml
echo "Creating CheCluster CR: che-cluster"
while [[ cheClusterOutput=$(oc apply -f che-cluster.yaml 2>&1 > /dev/null) == *"error"* ]]
do
 echo "Waiting until devspaces operator is ready..."
 sleep 5
done
echo "Installation complete!" 
