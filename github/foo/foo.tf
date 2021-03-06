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

module "foo-team" {
  source             = "../modules/team"
  name               = "The Foo Team"
  maintainer_members = ["nlamirault"]
}

module "kanban-project" {
  source = "../modules/project"
  name   = "Kanban Project"
}

module "foo-repo" {
  source      = "../modules/repository"
  name        = "foo"
  description = "A Foo project"
  topics      = ["foo", "bar"]
}
