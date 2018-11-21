# Copyright (C) 2018 Nicolas Lamirault <nicolas.lamirault@gmail.com>

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

variable "github_token" {
  type        = "string"
  description = "(Optional) This is the GitHub personal access token."
}

variable "github_organization" {
  type        = "string"
  description = "(Optional) This is the target GitHub organization to manage."
}

variable "s3_bucket" {
  type        = "string"
  description = "(Optional) The name of the S3 bucket."
  default     = "galactus"
}

variable "s3_key" {
  type        = "string"
  description = "(Optional) The path to the state file inside the bucket."
}

variable "s3_region" {
  type        = "string"
  description = "(Optional) The region of the S3 bucket."
}

variable "s3_endpoint" {
  type        = "string"
  description = "(Optional) A custom endpoint for the S3 API."
}

variable "consul_scheme" {
  type        = "string"
  description = "(Optional) Specifies what protocol to use when talking to the given address"
  default     = "https"
}

variable "consul_address" {
  type        = "string"
  description = "DNS name and port of your Consul endpoint."
}

variable "consul_path" {
  type        = "string"
  description = "Path in the Consul KV store."
}
