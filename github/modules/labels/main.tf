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

resource "github_issue_label" "KIND_BUG" {
  repository = "${var.repository_name}"
  name       = "kind/bug"
  color      = "FF0040"
}

resource "github_issue_label" "KIND_DISCUSSION" {
  repository = "${var.repository_name}"
  name       = "kind/discussion"
  color      = "fbca04"
}

resource "github_issue_label" "KIND_DOCUMENTATION" {
  repository = "${var.repository_name}"
  name       = "kind/documentation"
  color      = "5319e7"
}

resource "github_issue_label" "KIND_ENHANCEMENT" {
  repository = "${var.repository_name}"
  name       = "kind/enhancement"
  color      = "1d76db"
}

resource "github_issue_label" "KIND_QUESTION" {
  repository = "${var.repository_name}"
  name       = "kind/question"
  color      = "cc317c"
}

resource "github_issue_label" "PRIORITY_CRITICAL" {
  repository = "${var.repository_name}"
  name       = "priority/critical"
  color      = "ee0701"
}

resource "github_issue_label" "PRIORITY_HIGH" {
  repository = "${var.repository_name}"
  name       = "priority/high"
  color      = "d93f0b"
}

resource "github_issue_label" "PRIORITY_MEDIUM" {
  repository = "${var.repository_name}"
  name       = "priority/medium"
  color      = "fbca04"
}

resource "github_issue_label" "PRIORITY_LOW" {
  repository = "${var.repository_name}"
  name       = "priority/low"
  color      = "0e8a16"
}

resource "github_issue_label" "STATUS_ABANDONNED" {
  repository = "${var.repository_name}"
  name       = "status/abandoned"
  color      = "000000"
}

resource "github_issue_label" "STATUS_AVAILABLE" {
  repository = "${var.repository_name}"
  name       = "status/available"
  color      = "c2e0c6"
}

resource "github_issue_label" "STATUS_BLOCKED" {
  repository = "${var.repository_name}"
  name       = "status/blocked"
  color      = "ee0701"
}

resource "github_issue_label" "STATUS_IN_PROGRESS" {
  repository = "${var.repository_name}"
  name       = "status/in_progress"
  color      = "cccccc"
}

resource "github_issue_label" "STATUS_ON_HOLD" {
  repository = "${var.repository_name}"
  name       = "status/on_hold"
  color      = "e99695"
}

resource "github_issue_label" "STATUS_PROPOSAL" {
  repository = "${var.repository_name}"
  name       = "status/proposal"
  color      = "d4c5f9"
}

resource "github_issue_label" "STATUS_REVIEW_NEEDED" {
  repository = "${var.repository_name}"
  name       = "status/review_needed"
  color      = "fbca04"
}
