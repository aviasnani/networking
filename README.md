# Automated container deployment and Administration in the cloud

This project automates the docker containerization process by pushing and pulling docker images from a public docker repo into EC2 instance AWS.

Code being pushed to the main GitHub repo branch > Docker image being built and pushed > Public Repository > Image being pulled by Ansible > EC2.

## Project Features:

1.  Infrastructure as Code (IaC) using Terraform
2.  Docker containerized application.
3.  Security Groups and Networking configurations.
4.  Hosted on EC2 instance (t2.micro)

Following is the file system (5 directories and 14 files) of the project:

```bash

── ansible-setup
│   ├── install-docker.yml
│   └── inventory.ini
├── app
│   ├── Dockerfile
│   ├── app.py
│   ├── requirements.txt
│   └── templates
│       └── index.html
└── terraform
   ├── ec2.tf
   ├── key_pair.tf
   ├── main.tf
   ├── outputs.tf
   ├── sg.tf
   ├── terraform.tfstate
   └── vpc.tf

```

## Technologies and Tools used:

1.  Terraform: for infratructure provisioning, launching EC2 instance, and configuring security groups and other networking components.

2.  Ansible: Used for Docker installation and setup inside EC2.
3.  Flask and HTML : A flask app created using HTML as the frontend language.
4.  Docker: Used for Containerizing apps and deploying on EC2 instance.
5.  GitHub Actions: Used for creating CI/CD pipelines that automates the whole process.

## Setup and Installation

### Prerequisites

Install the following tools:

1.  Terraform
2.  Ansible
3.  AWS CLI
4.  Create an AWS account with proper permissions for IAM user.
5.  Docker

## Steps to Deploy:

1.  Clone the repository

```bash
git clone https://github.com/aviasnani/networking.git
cd your-repo-name
```

2.  Set up AWS credentials by running the following command:

```bash
aws configure
```

3.  Initialize and apply terraform

```bash
cd terraform
terraform init
terraform apply
```

4.  Login to your docker account

```bash
docker login
```

5.  Create a new docker public repository on which the image can be pushed after being created.

6.  Configure GitHub secrets for the following things

    AWS credentials
    SSH keys
    Docker credentials

7.  Configure ansible playbooks and CI/CD pipeline for building, pushing and pulling docker image.

## Future Improvements

1.  Add auto-scaling to EC2 instance.
2.  Add S3 bucket for durable storage logs such as backups, logs or static assets.
3.  Implementing a database layer.

Feel Free to clone and use my repository :D

## Contributors:

1.  Avinash Asnani
2.  Pushpak Patil
3.  Aditya Jadhav
4.  Gargee Kadam

## License and Acknowledgement

This project has no licensing and was created for educational purposes as an assignment for Networks and Systems Administration module (B9IS121).
