# GitOps with FluxCD on Kyma in BTP

This branch is used to showcase a GitOps setup using FluxCD for managing Kubernetes applications on [Kyma](https://kyma-project.io/) in BTP. It includes definitions for applications and cluster infrastructure, and uses Kustomize for configuration management.

The repository structure follows the monorepo approach described in the [fluxcd manual](https://fluxcd.io/flux/guides/repository-structure/#monorepo). includes the [apps](apps/base) directory for application definitions, and the [clusters](clusters) directory for cluster-related resources. Inside the `clusters` directory, there's a `flux-system` namespace with resources for Flux system components, including a couple of Istio VirtualServices for fluxcd.

The repository also includes Kustomizations for deploying and updating these resources within the cluster. The [infrastructure](infrastructure) directory contains additional Kustomizations.
