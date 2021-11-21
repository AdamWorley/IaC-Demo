# [Pulumi](https://www.pulumi.com)

> Pulumi is an open source infrastructure as code tool for creating, deploying, and managing cloud infrastructure. Pulumi works with traditional infrastructure like VMs, networks, and databases, in addition to modern architectures, including containers, Kubernetes clusters, and serverless functions. Pulumi supports dozens of public, private, and hybrid cloud service providers.

## How To Run

The Pulumi CLI is simple yet powerful. For testing and running locally the quickest way to get started is to create a pulumi account and use the `pulumi login` command. When running in a CI/CD environment it is advised to use service principle accounts for access to the respective platforms resources (e.g. AWS IAM account), the keys and secrets for the service users can be securely stored encrypted in the pulumi cloud backend.

### Basic Commands

- `pulumi`: You can use this command to display the help page for pulumi and displays most of the commands with a short description for each
- `pulumi login `: This will provide a link to sign into your pulumi account to be able to run your pulumi infrastructure commands
- `pulumi config`: Configure variables such as keys, regions, and so on (saved to a pulumi.yaml file locally)
- `pulumi new`: Creates a new project template
- `pulumi up`: Running this will initiate a deployment plan which will be displayed with the resources that will be created, updated or deleted. This command is interactive and will ask what *stack* you would like to run the command against and for confirmation to run the plan provided there are no issues
- `pulumi destroy`: This command will delete all your resources