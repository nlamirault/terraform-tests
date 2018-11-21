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

terraform {
  required_version = ">= 0.11.0"

  backend "s3" {
    bucket                      = "${var.s3_bucket}"
    key                         = "${var.s3_key}"
    region                      = "${var.s3_region}"
    endpoint                    = "${var.S3_endpoint}"
    skip_region_validation      = true
    skip_credentials_validation = true
  }

  # backend "consul" {
  #   address = "${var.consul_address}"
  #   scheme  = "${var.consul_address}"
  #   path    = "${var.consul_path}"
  # }
}
