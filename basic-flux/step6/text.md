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