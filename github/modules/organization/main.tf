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

resource "github_repository" "repository" {
  name               = "${var.name}"
  description        = "${var.description}"
  private            = "${var.private}"
  auto_init          = "${var.auto_init}"
  topics             = "${var.topics}"
  has_issues         = true
  has_wiki           = true
  allow_merge_commit = false

  lifecycle {
    prevent_destroy = true
  }
}

resource "github_branch_protection" "repository_protection" {
  repository     = "${github_repository.repository.name}"
  branch         = "master"
  enforce_admins = true

  # required_status_checks {
  #   strict = false
  #   contexts = ["ci/travis"]
  # }

  # required_pull_request_reviews {
  #   dismiss_stale_reviews = true
  #   dismissal_users = [ "${data.github_user.push_access_users.*.login}" ]
  #   dismissal_teams = [ "${data.github_team.push_access_teams.*.slug}" ]
  # }

  # restrictions {
  #   users = [ "${data.github_user.push_access_users.*.login}" ]
  #   teams = [ "${data.github_team.push_access_teams.*.slug}" ]
  # }
}
