*AWS High-Availability Nginx Infrastructure with Terraform (IaC)*

## Project Overview
This project provisions a highly available Nginx infrastructure on AWS using Terraform. It includes:

- ✅ **VPC**: A custom Virtual Private Cloud with CIDR block `192.168.0.0/16`.  
- ✅ **Subnets**: Two public subnets in different availability zones.  
- ✅ **Internet Gateway**: For public internet access.  
- ✅ **Application Load Balancer (ALB)**: Distributes traffic across Nginx instances.  
- ✅ **Auto Scaling Group (ASG)**: Ensures high availability with a minimum of two Nginx instances.  
- ✅ **Security Groups**: Configured for HTTP traffic.  
- ✅ **Amazon S3 Bucket**: Used for storage.  

# Requirements
### Terraform  
- ✅ **Run the following command to check your version**:  
  ```bash
  terraform version
### AWS Credentials  
- ✅ **Obtain your AWS Access Key ID and Secret Access Key.**
### Git  
- ✅ **Ensure Git is installed** to clone the repository.

# Quick Start

 ## Step 1 :Clone the Repository  

- ✅ **Clone the repository**:  
  ```bash
  git clone https://github.com/haggui11/test1.git

 ## Step 2: Review and Customize Variables  
 Edit the `variables.tf` file to customize the configuration as needed.  

- ✅ **Region**: Update `aws_region` to your desired AWS region.  
- ✅ **AMI ID**: Replace `ami_id` with the latest Ubuntu AMI ID for your region.  
- ✅ **S3 Bucket Name**: Ensure `bucket_name` is globally unique.  

### ⚠️ Important Notes  
- 🚀 Use a **unique name** for the S3 bucket to avoid naming conflicts.  

## Step 3: Export AWS Credentials  
### Configure your AWS credentials  

- ✅ **Set AWS environment variables**:  
  ```bash
  export AWS_ACCESS_KEY_ID="your-access-key-id"
  export AWS_SECRET_ACCESS_KEY="your-secret-access-key"
### ⚠️ Important Notes  
- 🚀 Ensure your **AWS credentials** have sufficient permissions to create resources.

 ## step 4: Initialize Terraform  
- ✅ **Initialize the Terraform working directory**:  
  ```bash
  terraform init

 ##  Step 5: Plan the Infrastructure
- ✅ **Plan the Infrastructure Review the execution plan to confirm the resources to be created:**  
  ```bash
  terraform plan

 ## Step 6: Apply the Configuration  
- ✅ **Deploy the infrastructure**:  
  ```bash
  terraform apply
### ⚠️ Type yes when prompted to confirm
 ## Step 7:Verify Outputs  
- ✅ **Upon successful execution, Terraform will output important details such as**:  
  - VPC ID  
  - Public Subnet IDs  
  - Load Balancer DNS Name  
  - S3 Bucket Name  
  - Security Group ID
 ## Architecture Diagram
 ```bash
AWS Cloud  
├── VPC (192.168.0.0/16)  
│   ├── Public Subnet 1 (192.168.0.0/24)  
│   │   └── Nginx Instance  
│   ├── Public Subnet 2 (192.168.1.0/24)  
│   │   └── Nginx Instance  
│   └── Internet Gateway  
│  
├── Application Load Balancer  
├── Auto Scaling Group (Min: 2, Max: 4)  
└── S3 Bucket  




# Components
 
- ✅ **VPC**: A custom Virtual Private Cloud with CIDR block `172.16.0.0/16`.
              DNS Support: Enabled  
- ✅ **Subnets**: Two public subnets in different availability zones.  
- ✅ **Internet Gateway**: Enables outbound internet access for resources within the VPC.
- ✅ **Application Load Balancer (ALB)**: Distributes traffic across Nginx instances.  
- ✅ **Auto Scaling Group (ASG)**: Ensures high availability with a minimum of two Nginx instances.  
- ✅ **Security Groups**: Configured for HTTP traffic on port 80  
- ✅ **Amazon S3 Bucket**: Used for storage.  

## Clean Up  
- ✅ **To destroy the infrastructure and avoid unnecessary charges**:  
  ```bash
  terraform destroy

### ⚠️ Type yes when prompted to confirm
## Troubleshooting  
- ✅ **If Terraform commands fail, check the following**:  
  - AWS credentials are correctly exported.  
  - The selected region supports all resources in the configuration.  
  - The AMI ID is valid for the selected region.  

## License  
- ✅ **This project is licensed under the MIT License**, which allows you to use, modify, and distribute the code for personal or commercial purposes as long as proper attribution is given.  
 - For more details, see the LICENSE file. 
