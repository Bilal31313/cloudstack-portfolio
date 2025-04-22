# CloudStack Portfolio: Infrastructure as Code on AWS

This project demonstrates a complete Infrastructure-as-Code (IaC) setup on AWS using Terraform.

## 📋 Project Overview

We build a production-style infrastructure for a simple web application, fully automated:

- Custom VPC (`10.0.0.0/16`)
- Two public subnets across different AZs
- Internet Gateway + public route table
- EC2 instance deployed in a public subnet
- Security group allowing HTTP and SSH
- EC2 instance automatically installs Docker on boot

> **Note:**  
> In a production environment, it would be best practice to place a Load Balancer (e.g., AWS ALB) in front of the EC2 instance(s) for better scalability, availability, and security.  
> I am aware of this, and have worked with Load Balancers previously- see https://github.com/Bilal31313/terraform-aws-3tier-flask-rds-project , but chose to keep this project simple to focus on core Terraform and AWS networking fundamentals.


## 🛠️ Tools & Technologies

- Terraform
- AWS (VPC, EC2, IGW, Route Tables, Security Groups)
- Linux (Ubuntu)
- Git + GitHub

## 📂 Project Structure

```plaintext
cloudstack-portfolio/
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── modules/
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   ├── compute/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
├── README.md


🚀 How to Deploy
Clone this repo.

Ensure Terraform is installed and AWS credentials are configured.

Initialize Terraform:

terraform init
terraform plan
terraform apply

SSH into your EC2 instance and verify Docker is installed:
ssh ubuntu@<EC2_PUBLIC_IP>
docker --version

📢 Notes
.terraform/ and .tfstate files are gitignored for security and performance.

This infrastructure is intended for portfolio/demo purposes.

Future improvements: CI/CD pipeline, monitoring, autoscaling.

🏆 What I Learned
Terraform modules for reusable code

AWS VPC and networking fundamentals

EC2 bootstrapping and security groups

GitHub project management and repo hygiene

📜 License
This project is open-sourced for demonstration and educational purposes.

👨‍💻 Author
Bilal Khawaja
**Cloud Engineer | AWS Certified Solutions Architect Associate**  
🔗 [LinkedIn Profile](https://linkedin.com/in/bilal-khawaja-65b883243) 


