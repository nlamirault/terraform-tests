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

resource "github_organization_project" "project" {
  name = "${title(var.name)}"
}

resource "github_project_column" "project_backlog_column" {
  count      = "${length(var.columns)}"
  project_id = "${github_organization_project.project.id}"
  name       = "${var.columns[count.index]}"
}
