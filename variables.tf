# terraform-ec2-project/variables.tf

variable "instance_type" {
  description = "The type of EC2 instance launch"
  type = string
  default = "t2.micro" # Free tier eligible
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0a7d80731ae1b2435" # This is a common Amazon Linux 2 AMI for ap-south-1. You might need to find the latest for your region.
}

variable "key_name" {
  description = "The name of the EC2 Key Pair to use"
  type        = string
  default     = "my-ec2-keypair" # IMPORTANT: Change this to an existing key pair name or create one!
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default = {
    Project     = "Terraform EC2 Demo"
    Environment = "Development"
  }
}

