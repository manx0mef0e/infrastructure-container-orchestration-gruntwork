## Test the Kubernetes cluster

The Kubernetes tools can be used to verify the newly created cluster.

1. Get the Kubernetes configuration from the Terraform state and store it in a file that kubectl can read.

   ```bash
   echo "$(terraform output kube_config)" > ~/azurek8s
   ```

1. Set an environment variable so that kubectl picks up the correct config.

   ```bash
   export KUBECONFIG=~/azurek8s
   ```

1. Verify the health of the cluster.

   ```bash
   kubectl get nodes
   ```
