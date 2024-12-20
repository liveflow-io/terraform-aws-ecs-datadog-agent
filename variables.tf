variable "env" {
}

variable "name" {
  default = "datadog-agent"
}

variable "app_name" {
  type = string
}

variable "environment" {
  type    = map(string)
  default = {}
}

variable "memory" {
  type    = number
  default = 256
}

variable "cpu" {
  type    = number
  default = 256
}

variable "secret_names" {
  type    = list(string)
  default = []
}

variable "essential" {
  type    = bool
  default = true
}

//variable "ecs_cluster" {
//  type = string
//}

variable "docker_image_name" {
  type    = string
  default = "public.ecr.aws/datadog/agent"
}

variable "docker_image_tag" {
  type    = string
  default = "latest"
}

variable "ecs_launch_type" {

}

variable "cloudwatch_log_group" {
  default = ""
}

variable "resource_requirements" {
  default = []
}

variable "socket_apm_enabled_on_ec2" {
  default = false
}

variable "opentelemetry_grpc_endpoint" {
  default = "0.0.0.0:4317"
}

variable "opentelemetry_http_endpoint" {
  default = "0.0.0.0:4318"
}

variable "enabled" {
  default = true
}

variable "docker_labels" {
  type    = map(string)
  default = {}
}
variable "health_check" {
  description = "The container health check command and associated configuration parameters for the container. See [HealthCheck](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_HealthCheck.html)"
  type        = any
  default     = {}
}
