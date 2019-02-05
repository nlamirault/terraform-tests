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

# resource "gitlab_group" "group" {
#   name             = "${var.group_name}"
#   path             = "${var.group_path}"
#   description      = "${var.group_description}"
#   visibility_level = "${var.group_visibility}"
# }

resource "gitlab_project" "project" {
  name             = "${var.project_name}"
  namespace_id     = "${var.namespace_id}"
  description      = "${var.project_description}"
  visibility_level = "${var.project_visibility}"
  default_branch   = "master"

  lifecycle {
    prevent_destroy = true
  }
}

resource "gitlab_label" "KIND_BUG" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "kind/bug"
  color   = "#FF0040"
}

resource "gitlab_label" "KIND_DISCUSSION" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "kind/discussion"
  color   = "#fbca04"
}

resource "gitlab_label" "KIND_DOCUMENTATION" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "kind/documentation"
  color   = "#5319e7"
}

resource "gitlab_label" "KIND_ENHANCEMENT" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "kind/enhancement"
  color   = "#1d76db"
}

resource "gitlab_label" "KIND_QUESTION" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "kind/question"
  color   = "#cc317c"
}

resource "gitlab_label" "PRIORITY_CRITICAL" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "priority/critical"
  color   = "#ee0701"
}

resource "gitlab_label" "PRIORITY_HIGH" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "priority/high"
  color   = "#d93f0b"
}

resource "gitlab_label" "PRIORITY_MEDIUM" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "priority/medium"
  color   = "#fbca04"
}

resource "gitlab_label" "PRIORITY_LOW" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "priority/low"
  color   = "#0e8a16"
}

resource "gitlab_label" "STATUS_ABANDONNED" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "status/abandoned"
  color   = "#000000"
}

resource "gitlab_label" "STATUS_AVAILABLE" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "status/available"
  color   = "#c2e0c6"
}

resource "gitlab_label" "STATUS_BLOCKED" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "status/blocked"
  color   = "#ee0701"
}

resource "gitlab_label" "STATUS_IN_PROGRESS" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "status/in_progress"
  color   = "#cccccc"
}

resource "gitlab_label" "STATUS_ON_HOLD" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "status/on_hold"
  color   = "#e99695"
}

resource "gitlab_label" "STATUS_PROPOSAL" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "status/proposal"
  color   = "#d4c5f9"
}

resource "gitlab_label" "STATUS_REVIEW_NEEDED" {
  project = "${var.group_name}/${gitlab_project.project.name}"
  name    = "status/review_needed"
  color   = "#fbca04"
}
