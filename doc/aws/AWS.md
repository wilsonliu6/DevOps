[Return](../README.md)

# AWS
## Summary
* `Terraform` command to create, update, and destroy EMR and Redshift instances

## Structure
* AWS secret and access key file: `aws.tf`
* AWS instance template files: `emr.tf`, `redshift.tf`
* Variables file: `terraform_variables.tf`

## Create and destroy instance(s)
All aws related variables are defined in the `terraform_variables.tf` file, before you create an infrastructure, __you should modify it base on your requirements__.

When you want to create some instance(s), you should put `aws.tf`, `terraform_variables.tf`, and one or more template files (such as `emr.tf`, `redshift.tf`) in an empty folder, then use `terraform` command to create.

For example, create and destroy a `EMR` instance:
  * Create a folder (such as `EMR`)
  * Go to `EMR` folder
  * Copy `aws.tf`, `emr.tf`, `terraform_variables.tf` to the folder
  * Run the following commands:
    * `terraform plan`
    Create an execution plan
    * `terraform apply`
    Execute the plan, and create real resources
    * `terraform plan -destroy`
    Plan a destroy, show which resource(s) will be destroyed.
    __*Notice*__: When you want to destroy the resource(s), you can use this command to have a look firstly.
    * `terraform destroy`
    Destroy the instance(s)
    __*Notice*__: When you confirm to delete the instance(s), you can use this command.