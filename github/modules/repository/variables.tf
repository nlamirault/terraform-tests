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

variable "name" {
  type        = "string"
  description = "The name of the repository."
}

variable "description" {
  type        = "string"
  description = "A description of the repository."
}

variable "private" {
  type        = "string"
  description = "(Optional) Visibility of the project."
  default     = false
}

variable "auto_init" {
  type        = "string"
  description = "(Optional) Produce an initial commit or not."
  default     = true
}

variable "topics" {
  type        = "list"
  description = "(Optional) The list of topics of the repository."
  default     = []
}
