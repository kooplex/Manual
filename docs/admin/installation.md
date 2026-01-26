# Installation using Jsonnet files

This document describes a minimal workflow to manage Kubernetes manifests with Jsonnet.

## Prerequisites
- jsonnet (CLI)
- jsonnet-bundler (jb) — optional for dependencies
- kubectl
- (optional) yq for YAML processing

Install examples:
- macOS: `brew install jsonnet` and `brew install jsonnet-bundler` (or `go install github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb@latest`)
- Linux: use your package manager or `go install` for jb.

## Repository layout (recommended)
- manifests/
    - main.jsonnet
    - vendor/        ← jb-managed libs (if any)
    - params.jsonnet ← optional parameter file

## Basic workflow

1. Initialize jsonnet-bundler (optional)
     ```
     cd manifests
     jb init
     jb install <github.com/...>  # if pulling libs
     ```

2. Write a simple `main.jsonnet`
     ```jsonnet
     // manifests/main.jsonnet
     [
         {
             apiVersion: "apps/v1",
             kind: "Deployment",
             metadata: { name: "my-app" },
             spec: {
                 replicas: 2,
                 selector: { matchLabels: { app: "my-app" } },
                 template: {
                     metadata: { labels: { app: "my-app" } },
                     spec: {
                         containers: [
                             {
                                 name: "my-app",
                                 image: std.extVar("image"),
                                 ports: [{ containerPort: 80 }],
                             }
                         ],
                     },
                 },
             },
         },
         {
             apiVersion: "v1",
             kind: "Service",
             metadata: { name: "my-app" },
             spec: {
                 selector: { app: "my-app" },
                 ports: [{ port: 80, targetPort: 80 }],
                 type: "ClusterIP",
             },
         }
     ]
     ```

3. Render to YAML and apply
     - If your jsonnet supports YAML output:
         ```
         jsonnet -J vendor --ext-str image=nginx:1.23 -y main.jsonnet | kubectl apply -f -
         ```
     - If not, render JSON and convert to YAML (using yq)
         ```
         jsonnet -J vendor --ext-str image=nginx:1.23 main.jsonnet | yq -P eval - | kubectl apply -f -
         ```

4. Format & lint
     ```
     jsonnetfmt -i main.jsonnet
     ```

## Passing parameters
- Use `--ext-str name=value` for string external variables:
    ```
    jsonnet --ext-str image=myrepo/myimage:tag main.jsonnet
    ```

## Tips & troubleshooting
- Imports require `-J vendor` when using jb-managed libs.
- Validate output before applying:
    ```
    jsonnet -J vendor --ext-str image=nginx:1.23 -y main.jsonnet > rendered.yaml
    kubectl apply --dry-run=client -f rendered.yaml
    ```
- If you see import errors, check vendor paths and `jb install`.
- Keep logic in small helper files and compose in `main.jsonnet` for clarity.

This is a minimal, reproducible pattern for installing resources using Jsonnet files. Adjust structure and parameters to fit your project.