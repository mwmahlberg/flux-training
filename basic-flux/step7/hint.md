In order to make sure that all replicas of the deployment are ready
you need to check the deployment:

`kubectl wait deployment/podinfo --for condition=Available=True --for jsonpath='{.status.availableReplicas}'=2`{{copy}}