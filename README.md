# 🌐 Multi-Cloud GitOps Platform Infrastructure with Terraform

Automate provisioning infrastructure on **Google Cloud Platform (GCP)** and **Amazon Web Services (AWS)** using **Terraform**, leveraging free-tier cloud resources to create foundational virtual machines (VMs) in a multi-cloud setup with Infrastructure as Code (IaC).

---

## 🚀 Project Overview

- Provision Debian-based VM on **Google Cloud Platform**  
- Provision **t2.micro EC2 instance** on **Amazon Web Services**  
- Secure authentication via environment variables & service accounts  
- Manage IAM roles and permissions for access control  
- Maintain Terraform state for consistent, idempotent deployments  
- Tag and label resources for better organization in cloud consoles  
- Stay within free-tier usage limits to avoid charges  
- Foundation for Kubernetes clusters and GitOps automation

---

## 🗂 Repository Structure
# multi-cloud-gitops-platform

multi-cloud-gitops-platform/
├── terraform/
│   ├── aws/
│   ├── gcp/
│   └── modules/
├── k8s/
│   ├── base/
│   └── overlays/
│       ├── prod/
│       └── staging/
├── ansible/
│   ├── playbooks/
│   └── roles/
├── ci-cd/
│   ├── github-actions/
│   └── jenkins/
├── monitoring/
│   ├── prometheus/
│   ├── grafana/
│   └── alertmanager/
├── secrets/
└── README.md

---

## ⚙️ Prerequisites

- Terraform CLI installed: https://www.terraform.io/downloads.html  
- AWS CLI installed and configured (or AWS access keys ready)  
- Google Cloud SDK installed and authenticated  
- Basic Terraform experience (`terraform init`, `plan`, `apply`)

---

## ☁️ AWS Setup

1. Set your AWS credentials in PowerShell (replace with your keys):
$setx AWS_ACCESS_KEY_ID "your-access-key-id"
$setx AWS_SECRET_ACCESS_KEY "your-secret-access-key"

2. Navigate to the AWS Terraform directory:
$cd terraform/aws

3. Initialize and apply Terraform:
$terraform init
$terraform apply --auto-approve

4. Verify your EC2 instance in AWS Console (ensure region matches the Terraform provider config)

---

## ☁️ GCP Setup

1. Authenticate your Google Cloud SDK:
$gcloud auth application-default login

2. Set your service account credentials (if applicable):
$setx GOOGLE_APPLICATION_CREDENTIALS "C:\path\to\your\service-account-key.json"

3. Navigate to the GCP Terraform directory:
$cd terraform/gcp

4. Initialize and apply Terraform:
$terraform init
$terraform apply --auto-approve

5. Verify your VM instance in the Google Cloud Console (check project and zone settings)

---

## 🏷 Resource Tagging

- AWS EC2 instances use a `tags` block with `Name` to identify them easily in the console  
- GCP instances use `labels` for organization  
- Tags and labels can be customized in Terraform resource blocks

---

## ⚠️ Important Notes

- Terraform state manages existing resources; no duplicates created  
- Use `terraform destroy` to clean up and avoid unnecessary charges  
- Monitor cloud billing and configure alerts to prevent surprises  
- Keep credential files secure; never commit secrets to version control  
- Adjust region values in provider files to deploy to your desired locations

---

## 🔜 Future Enhancements

- Automate Kubernetes cluster provisioning across clouds  
- Integrate GitOps with Flux or Argo CD pipelines  
- Add monitoring with Prometheus & Grafana  
- Implement CI/CD workflows with Jenkins or GitHub Actions

---

## 🤝 Contributing & Support

- Contributions welcome via pull requests  
- File issues for bugs and feature requests  
- Please follow the project’s code of conduct

---

## 📄 License

MIT License © Surendra123A
---

> _Happy Terraforming!_ 🌟
