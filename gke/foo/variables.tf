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

variable "credentials" {
  type = "string"
  description = "JSON file wich contains credentials"
}

variable "project" {
  type        = "string"
  description = "The project name"
}

variable "region" {
  type        = "string"
  description = ""
  default     = "eu-west1-b"
}

variable "name" {
  type        = "string"
  description = "The cluster name"
}

variable "zone" {
  default = "europe-west1-b"
}

variable "version" {
  default = "1.9.7-gke.3"
}

variable "initial_node_count" {
  default = 2
}

variable "autoscaling_min_node_count" {
  default = 1
}

variable "autoscaling_max_node_count" {
  default = 2
}

variable "disk_size_gb" {
  default = 100
}

variable "disk_type" {
  default = "pd-standard"
}

variable "machine_type" {
  default = "n1-standard-4"
}
