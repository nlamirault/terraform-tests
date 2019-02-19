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

resource "gitea_user" "user" {
  username = "${var.username}"
  password = "${var.password}"
  login    = "${var.login}"
  fullname = "${var.full_name}"
  email    = "${var.email}"

  # lifecycle {
  #   prevent_destroy = true
  # }
}

# resource "gitea_organization" "org" {
#   username    = "${var.org_name}"
#   fullname    = "${var.org_fullname}"
#   owner       = "${var.org_owner}"
#   description = "${var.org_description}"
#   website     = "${var.org_website}"

#   # lifecycle {
#   #   prevent_destroy = true
#   # }

#   depends_on = ["gitea_user.user"]
# }

resource "gitea_repository" "repo" {
  name        = "${var.repo_name}"
  owner       = "${var.repo_username}"
  description = "${var.repo_description}"

  # lifecycle {
  #   prevent_destroy = true
  # }

  depends_on = ["gitea_user.user"]
}

resource "gitea_milestone" "v1_0_0" {
  owner       = "${var.repo_username}"
  repository  = "${var.repo_name}"
  title       = "v1.0.0"
  description = "Release v1.0.0"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "KIND_BUG" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "kind/bug"
  color      = "#FF0040"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "KIND_DISCUSSION" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "kind/discussion"
  color      = "#fbca04"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "KIND_DOCUMENTATION" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "kind/documentation"
  color      = "#5319e7"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "KIND_ENHANCEMENT" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "kind/enhancement"
  color      = "#1d76db"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "KIND_QUESTION" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "kind/question"
  color      = "#cc317c"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "PRIORITY_CRITICAL" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "priority/critical"
  color      = "#ee0701"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "PRIORITY_HIGH" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "priority/high"
  color      = "#d93f0b"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "PRIORITY_MEDIUM" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "priority/medium"
  color      = "#fbca04"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "PRIORITY_LOW" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "priority/low"
  color      = "#0e8a16"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "STATUS_ABANDONNED" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "status/abandoned"
  color      = "#000000"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "STATUS_AVAILABLE" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "status/available"
  color      = "#c2e0c6"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "STATUS_BLOCKED" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "status/blocked"
  color      = "#ee0701"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "STATUS_IN_PROGRESS" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "status/in_progress"
  color      = "#cccccc"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "STATUS_ON_HOLD" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "status/on_hold"
  color      = "#e99695"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "STATUS_PROPOSAL" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "status/proposal"
  color      = "#d4c5f9"


  depends_on = ["gitea_repository.repo"]
}


resource "gitea_label" "STATUS_REVIEW_NEEDED" {
  owner      = "${var.repo_username}"
  repository = "${var.repo_name}"
  name       = "status/review_needed"
  color      = "#fbca04"


  depends_on = ["gitea_repository.repo"]
}


# ------------------------------------------------


# data "gitea_user" "the_user" {
#   username = "${var.username}"
# }


# output "the_user" {
#   value = "${data.gitea_user.the_user.email}"
# }


# data "gitea_repo" "the_repo" {
#   name = "${var.repo_name}"
#   username = "${var.repo_username}"
# }


# output "the_repo" {
#   value = "${data.gitea_repository.the_repo.username}/${data.gitea_repository.the_repo.name}"
# }

