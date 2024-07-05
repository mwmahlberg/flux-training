Now we have installed flux, we can roll out things.

Create a file in `mycluster/clusters/killercoda/podinfo`{{}} named `helm-repo.yaml` with the following content:

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