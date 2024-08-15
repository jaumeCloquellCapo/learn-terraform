
# 01-tf-build-images

This repository provides a basic Terraform configuration for building a Docker image and deploying a Docker container based on that image.

## Objective

The aim of this project is to demonstrate and explain how to use Terraform to build Docker images. This approach is valuable not only for building Docker images but also for managing the underlying infrastructure of end-to-end systems using Terraform for both setup and deployment.

## Requirements

To use this configuration, you need to have the following components installed:

- [Terraform](https://www.terraform.io/downloads.html)
- [Docker](https://www.docker.com/products/docker-desktop)

## Configuration

1. **Initialize Terraform**
 
Before applying the configuration, you need to initialize the Terraform project. This step downloads the required provider plugins and sets up the working directory. Run the following command in the root directory of the project:


```bash
   terraform init
```