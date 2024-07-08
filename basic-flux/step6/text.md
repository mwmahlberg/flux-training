Now we have installed flux, we can roll out things.

Create a resource file for a helm repository
--------------------------------------------

Create a file `helm-repo.yaml` in `mycluster/clusters/killercoda/podinfo/`{{}} with the  content below.

> Note: The directory was created automatically for your convenience.
---
> Also note: You need to make sure to use the correct branch.

```
---
apiVersion: source.toolkit.fluxcd.io/v1
kind: HelmRepository
metadata:
  name: podinfo
  namespace: default
spec:
  interval: 5m
  url: https://stefanprodan.github.io/podinfo
```{{copy}}

Next, commit the file and push it:

```
git add clusters/killercoda/podinfo/helm-repo.yaml
git commit -m "feat: Add helm repo for podinfo"
git push origin main
```{{exec}}

Ensure the rollout of the HelmRepository
----------------------------------------

Usually, flux syncs the git repositories every minute automatically.
However, we want to speed up things, so we use the flux CLI to force
a "reconciliation":

`flux reconcile source git flux-system`{{exec}}


Wait for flux to process the HelmRepository ressource
-----------------------------------------------------

We can use conditions to check whether the ressource file was
properly processed. The following command will time out after 30s:

`kubectl wait helmrepositories.source.toolkit.fluxcd.io/podinfo --for condition=Ready=True --for condition=ArtifactInStorage=True`{{exec}}