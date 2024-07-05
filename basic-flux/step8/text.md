Flux can easily be uninstalled:

`flux uninstall --verbose --silent`{{exec}}

However, uninstalling flux will not uninstall resources installed by flux:

`kubectl get all -l app.kubernetes.io/name=podinfo`{{exec}}

You will need to uninstall them manually:

`kubectl delete all -l app.kubernetes.io/name=podinfo`