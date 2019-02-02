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
}

module "pilotariak-team" {
  source             = "../modules/team"
  name               = "Main"
  maintainer_members = ["nlamirault"]
}

module "kanban-project" {
  source = "../modules/project"
  name   = "Kanban Project"
}

module "trinquet-repository" {
  source      = "../modules/repository"
  name        = "trinquet"
  description = "Manage Pelota leagues, tournaments"
  topics      = ["pelota", "tournament", "galactus"]
}

module "paleta-repository" {
  source      = "../modules/repository"
  name        = "paleta"
  description = "Pelota competitions for the terminal"
  topics      = ["pelota", "terminal", "galactus"]
}


module "berriz-repository" {
  source      = "../modules/repository"
  name        = "berriz"
  description = ""
  topics      = ["pelota", "galactus"]
}


module "xare-repository" {
  source      = "../modules/repository"
  name        = "xare"
  description = "CLI to manage Pelota tournaments"
  topics      = ["pelota", "galactus"]
}


module "jo-repository" {
  source      = "../modules/repository"
  name        = "jo"
  description = "Devstack"
  topics      = ["pelota", "galactus"]
}




#module "pilotari-repository" {
#  source      = "../modules/repository"
#  name        = "pilotari"
#  description = "Mobile application for Android and iOS to follow all the sports news of the Basque pelota"
#  topics      = ["pelota", "mobile", "galactus"]
#}


#module "pilotariak-webapp-repository" {
#  source      = "../modules/repository"
#  name        = "pilotariak-webapp"
#  description = "Pilotariak web frontend"
#  topics      = ["pelota", "galactus"]
#}

