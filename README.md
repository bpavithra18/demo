# cert-manager-gitops
Example GitOps repository that deploys cert-manager and a demo Helm chart (hello-k8s) via ArgoCD.

**Contents**
- argo-apps/: ArgoCD Application manifests
- helm-charts/hello-k8s/: Helm chart for demo app
- k8s/: ClusterIssuer and Certificate manifests
- .github/workflows/ci.yml: GitHub Actions CI validation
- README.md: this file

**Usage**
1. Push this repository to GitHub (or your git server).
2. Install ArgoCD in your cluster.
3. Create an ArgoCD Application that points to this repo (see argo-apps/demo-app-application.yaml).
4. Ensure cert-manager is deployed (we include an ArgoCD app for cert-manager in argo-apps).
5. Create provider-specific secrets (e.g., Cloudflare API token) in the cert-manager namespace (or use SealedSecrets).
6. Sync the ArgoCD applications and watch the cert issuance flow.

**Notes**
- Replace placeholders such as demo.example.com and <CLOUDFLARE_API_TOKEN> before applying in production.
- For development/testing use Let's Encrypt staging endpoint to avoid rate limits.
