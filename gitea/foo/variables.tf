# Copyright (C) 2018-2019 Nicolas Lamirault <nicolas.lamirault@gmail.com>

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

variable "gitea_token" {
  description = "This is the Gitea personal access token."
}

variable "gitea_url" {
  description = "This is the target Gitea base API endpoint."
}

# Organization

variable "org_name" {
  type        = "string"
  description = "The organization name."
}

variable "org_fullname" {
  type        = "string"
  description = "The organization full name."
}

variable "org_owner" {
  type        = "string"
  description = "The organization owner."
}

variable "org_description" {
  type        = "string"
  description = "The organization description"
}

variable "org_website" {
  type        = "string"
  description = "The organization website"
}

# User

variable "username" {
  type        = "string"
  description = "The username of this user."
}

variable "password" {
  type        = "string"
  description = "The user's password."
}

variable "full_name" {
  type        = "string"
  description = "The user's full name."
}

variable "email" {
  type        = "string"
  description = "The user's email."
}

variable "login" {
  type        = "string"
  description = "The user's login."
}

# Repository

variable "repo_name" {
  type        = "string"
  description = "The repository name"
}

variable "repo_username" {
  type        = "string"
  description = "The repository's owner"
}

variable "repo_description" {
  type        = "string"
  description = "The repository's description"
}
