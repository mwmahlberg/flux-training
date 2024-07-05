Flux allows you to boostrap a completely configured cluster.

For this, simply redo the bootstrap, but instead of pointing to an empty `cluster`{{}} folder, you point to an existing folder:

```
flux bootstrap github \
  --token-auth \
  --owner=${GH_REPO%/*} \
  --repository=${GH_REPO#*/} \
  --branch=main \
  --path=clusters/killercoda
```{{exec}}

We can now wait for the `podinfo`{{}} deployment to re-emerge:

`kubectl wait deployment/podinfo --timeout=120s --for condition=Available=True --for jsonpath='{.status.availableReplicas}'=2`{{exec}}