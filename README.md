# EC2-aws

Infrastructure as Code using Terraform for deploying EC2 instances on AWS. Provides production-ready configuration with modular and reusable components.

## ☁️ Infrastructure

![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white)

## 📊 Project Status

[![Stars](https://img.shields.io/github/stars/naninanides/EC2-aws?style=social)](https://github.com/naninanides/EC2-aws)
[![Forks](https://img.shields.io/github/forks/naninanides/EC2-aws?style=social)](https://github.com/naninanides/EC2-aws/fork)
[![Issues](https://img.shields.io/github/issues/naninanides/EC2-aws)](https://github.com/naninanides/EC2-aws/issues)
[![License](https://img.shields.io/github/license/naninanides/EC2-aws)](https://github.com/naninanides/EC2-aws/blob/main/LICENSE)
[![Last Commit](https://img.shields.io/github/last-commit/naninanides/EC2-aws)](https://github.com/naninanides/EC2-aws/commits/main)

## 💻 Languages

- **HCL**: 100.0%

## 🚀 Installation

### Prerequisites

- AWS CLI configured with appropriate credentials
- AWS IAM permissions for the resources being created
- Terraform >= 1.0 installed

### Setup

```# Copy and customize variables
cp terraform.tfvars.example terraform.tfvars
# Edit terraform.tfvars with your specific values
vim terraform.tfvars
```

### Deployment

```# Format and validate configuration
terraform fmt
terraform validate

# Review deployment plan
terraform plan

# Apply configuration
terraform apply

# View outputs
terraform output
```

### Post-Deployment

#### EC2 Instance Access
```
# Get instance information
terraform output instance_ids
terraform output public_ips

# SSH to instance (if configured)
ssh -i <key-pair>.pem ec2-user@<public-ip>
```
## 📖 Usage

### Quick Start

```# 2. Initialize and deploy
terraform init
terraform apply

# 3. View outputs
terraform output
```

## ✨ Features

- 🏗️ **Infrastructure as Code** - Terraform configuration for cloud infrastructure
- 🖥️ **EC2 Instance Management** - Scalable compute instances with security groups
- 🔒 **Security Best Practices** - Secure security groups and IAM policies
- 🔄 **Cross Platform** - Compatible with Linux, macOS, and Windows
- 📋 **Production Ready** - Following infrastructure best practices
- 📦 **Modular Design** - Reusable Terraform modules
- ⚙️ **Configurable** - Easy customization through variables

## 📦 Resources

This Terraform configuration creates the following resources:

- `aws_instance`
- `aws_security_group`

## 📁 Project Structure

```📄 .gitignore
📄 .gitlab-ci.yml
📄 README.md
📄 main.tf
📄 provider.tf
📄 security_group.tf
📄 terraform.tfvars.example
📄 variable.tf
```

## ⚙️ Configuration

Copy `terraform.tfvars.example` to `terraform.tfvars` and customize the values:

``````

See `variables.tf` for all available configuration options.

## 🧹 Cleanup

To destroy the created infrastructure:

terraform destroy

``````

## 👥 Contributors

- [naninanides](https://github.com/naninanides) (18 contributions)

## 🤝 Contributing

1. Fork this repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

⭐ **Please give this repository a star if you found it helpful!**

*Generated with ❤️ by GitHub README Generator* - 2025-09-10 01:56

🧠 Smart Analysis • ☁️ Multi-Cloud Support • 🚀 Production Ready
