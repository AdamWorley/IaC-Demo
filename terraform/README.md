# [Terraform](https://www.terraform.io)

> Terraform is an open-source infrastructure as code software tool that provides a consistent CLI workflow to manage hundreds of cloud services. Terraform codifies cloud APIs into declarative configuration files.

## How To Run

The terraform CLI is simple yet powerful. When running in a CI/CD environment it is advised to use service principle accounts for access to the respective platforms resources (e.g. AWS IAM account), the keys and secrets for the service users can be securely stored encrypted in the terraform cloud backend.

### Basic Commands

- `terraform`: You can use this command to display the help page for terraform and displays most of the commands with a short description for each
- `terraform init `: This command initialises the project by fetching the providers and creating the terraform state file
- `terraform plan`: Using the plan command will display any resources that will be created, updated or destroyed. The `-out` flag can be used to save the plan to a file
- `terraform deploy`: The deploy command will run a plan (if one has not been provided) and will request confirmation to action the changes
- `terraform destroy`: Terraform destroy will delete all of the resources that are described in the tf manifest files

### Hints & Tips

- Create an alias for the terraform command by using `alias tf="terraform"`, you will be typing 'terraform' a lot otherwise and 'tf' has become a semi-official alias