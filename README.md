## Terraform Docker Example
This repository contains a Terraform configuration to provision a local Docker container running NGINX, demonstrating Infrastructure as Code (IaC) principles.

### Prerequisites

- Terraform (version 1.5 or higher recommended)
- Docker installed and running locally
- Basic familiarity with Terraform and Docker

### Project Structure
```
├── main.tf          # Terraform configuration to provision NGINX container
├── terraform.tfstate # (Generated) Terraform state file
└── README.md        # This file

```
### Setup and Usage

1. Clone the Repository
```
git clone <repository-url>
cd <repository-directory>
```

2. Initialize Terraform - Initialize the Terraform working directory to download the Docker provider.
```
terraform init
```

3. Plan the Infrastructure - Generate an execution plan to preview the resources Terraform will create.
```
terraform plan
```

4. Apply the Configuration - Create the NGINX container by applying the Terraform configuration. Confirm with yes when prompted.
```
terraform apply
```

After applying, the NGINX container will be running, accessible at http://localhost:8080.

5. Verify the Container - Check the running container using Docker:
```
docker ps
```

6. Check Terraform State - View the managed resources in the Terraform state:
```
terraform state list
```

7. Destroy the Infrastructure - Tear down the container and clean up resources:
```
terraform destroy
```

Confirm with yes when prompted.


### Configuration Details

- Provider: Uses the kreuzwerker/docker provider to interact with Docker.
- Resources:
    - docker_image.nginx: Pulls the nginx:latest image.
    - docker_container.nginx_container: Runs a container named nginx-terraform-example, mapping port 8080 (external) to 80 (internal).


- State Management: Terraform tracks the state in terraform.tfstate.

### Learning Outcomes

- Understand how to use Terraform to manage Docker containers as IaC.
- Practice Terraform workflow: init, plan, apply, state, and destroy.
- Gain familiarity with declarative infrastructure provisioning.

### Troubleshooting

- Docker not running: Ensure the Docker daemon is active (docker info).
- Port conflicts: If port 8080 is in use, modify the external port in main.tf.
- Provider issues: Re-run terraform init if you encounter provider-related errors.

### Contributing
Feel free to open issues or submit pull requests for improvements or additional features.
### License
This project is licensed under the MIT License.
