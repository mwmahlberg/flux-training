Now, we add a [kustomization](https://kustomize.io).

For the sake of simplicity, we will use an already existing repository.

1. Create a resource file for the git repository under `mycluster/clusters/killercoda/nginx`{{}}:

    ```
    apiVersion: source.toolkit.fluxcd.io/v1
    kind: GitRepository
    metadata:
      name: flux-training
      namespace: default
    spec:
      interval: 5m0s
      url: https://github.com/mwmahlberg/flux-training
      ref:
        branch: main
    ```{{copy}}

2. Create a resource file for the kustomization under `mycluster/clusters/killercoda/nginx`{{}}:

    > Do ***not*** name the file `kustomization.yaml`{{}}. This is a reserved name.

    ```yaml
    apiVersion: kustomize.toolkit.fluxcd.io/v1
    kind: Kustomization
    metadata:
      name: web
      namespace: default
    spec:
      interval: 10m
      targetNamespace: default
      sourceRef:
        kind: GitRepository
        name: flux-training
      path: "./kustomize/web/base"
      prune: true
      timeout: 2m
    ```{{copy}}

3. Commit and push the changes.
4. Wait for the deployment to become ready: `kubectl -n default wait deployment -l app=simple-web --for condition=available`{{exec}}
5. Forward the service port: `kubectl port-forward services/simple-web 8080:8080 --address 0.0.0.0`{{exec}}
6. [Watch the web page]({{TRAFFIC_HOST1_8080}})