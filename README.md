# IaC - Brown Bag

This is a git repo that contains some basic examples for deploying an Azure function app using various IaC platforms.

Within each platform folder there is a `.devcontainer` folder that hold a [docker dev environment](https://code.visualstudio.com/learn/develop-cloud/containers), using VS Code and Docker this provides a quick and easy way to have all of the dependencies required to run the examples.

## Terraform

> Terraform is an open-source infrastructure as code software tool that provides a consistent CLI workflow to manage hundreds of cloud services. Terraform codifies cloud APIs into declarative configuration files.

Find more information in the [terraform readme file](./terraform/README.md).

## Pulumi

> Pulumi is an open source infrastructure as code tool for creating, deploying, and managing cloud infrastructure. Pulumi works with traditional infrastructure like VMs, networks, and databases, in addition to modern architectures, including containers, Kubernetes clusters, and serverless functions. Pulumi supports dozens of public, private, and hybrid cloud service providers.

Find more information in the [pulumi readme file](./pulumi/README.md).
