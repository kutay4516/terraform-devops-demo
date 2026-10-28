# Terraform DevOps Demo

This project demonstrates how Terraform can be used in a DevOps workflow to provision and manage cloud infrastructure automatically.

## Why DevOps needs Terraform
Manual infrastructure setup is slow, error-prone, and hard to reproduce across environments. Terraform solves this by allowing infrastructure to be defined as code.

## Architecture
- Terraform configuration defines the cloud resources
- AWS provider creates the required infrastructure
- EC2 instance is launched automatically
- Bootstrap script installs a web server
- GitHub Actions can run validation and planning automatically

## Demo flow
1. Initialize Terraform
2. Review the execution plan
3. Apply the infrastructure
4. Access the public IP of the EC2 instance
5. Verify the web server is running

## Prerequisites
- AWS account
- Terraform installed locally
- AWS CLI configured
- EC2 key pair uploaded to AWS, for example `terraform-demo-key`

## Setup
Copy the example variables file and update the key pair name if needed:

```bash
cp terraform.tfvars.example terraform.tfvars
```

Then edit `terraform.tfvars` with your AWS settings.

## Commands
```bash
terraform init
terraform plan
terraform apply
terraform output
```

## Publish to GitHub
```bash
git init
git add .
git commit -m "Initial Terraform DevOps demo"
git remote add origin https://github.com/<your-username>/terraform-devops-demo.git
git push -u origin main
```

## Notes
This is a lightweight demo suitable for coursework and presentations.
