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

Boostrapping a cluster does several things:

* The [various flux-Controllers][flux:components] are installed and configured.
* The configured git-repo is checked out to a temporary folder.
* If not already present, the cluster configuration is added within the git-repo to the configured `path`{{}}, commited and pushed back to origin.
* The flux `source-controller`{{}} pulls the cluster configuration from the repository and applies it.


Wait for the deployments to finish:

`kubectl -n flux-system wait deployment --all --for condition=available`{{exec}}

[flux:components]: "https://fluxcd.io/flux/components/"