Now we have everything in place, we can bootstrap our cluster.

First, let's check the cluster is reachable:

`kubectl get pods -A`{{exec}}

Now, we can bootstrap our cluster:

```
flux bootstrap github \
  --token-auth \
  --owner=${GH_REPO%/*} \
  --repository=${GH_REPO#*/} \
  --branch=main \
  --path=clusters/killercoda
```{{exec}}

and wait for the deployments to finish:

`kubectl -n flux-system wait deployment --all --for condition=available`{{exec}}
