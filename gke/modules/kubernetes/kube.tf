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

resource "google_container_cluster" "cluster" {
  name               = "${var.name}"
  description        = "${var.description}"
  zone               = "${var.zone}"
  min_master_version = "${var.version}"

  enable_kubernetes_alpha = "true"
  enable_legacy_abac      = "true"

  # master_auth {
  #     username = "${var.master_username}"
  #     password = "${var.master_password}"
  #   }

  addons_config {
    network_policy_config {
      disabled = true
    }

    http_load_balancing {
      disabled = false
    }

    kubernetes_dashboard {
      disabled = false
    }
  }
  node_pool {
    name               = "default-pool"
    initial_node_count = "${var.initial_node_count}"

    # management {
      # auto_repair = true
    # }

    autoscaling {
      min_node_count = "${var.autoscaling_min_node_count}"
      max_node_count = "${var.autoscaling_max_node_count}"
    }

    node_config {
      preemptible  = false
      disk_size_gb = "${var.disk_size_gb}"
      disk_type    = "${var.disk_type}"

      machine_type = "${var.machine_type}"

      oauth_scopes = [
        "https://www.googleapis.com/auth/devstorage.read_only",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring",
        "https://www.googleapis.com/auth/service.management.readonly",
        "https://www.googleapis.com/auth/servicecontrol",
        "https://www.googleapis.com/auth/trace.append",
        "https://www.googleapis.com/auth/compute",
      ]

      labels {
        env = "prod"
      }
    }
  }
}


#
# REFACTORING :
#

# resource "google_container_cluster" "primary" {
#   name                     = "${var.name}"
#   zone                     = "${var.zone}"
#   remove_default_node_pool = true

#   node_pool {
#     name = "default-pool"
#   }
# }

# resource "google_container_node_pool" "primary_pool" {
#   name       = "primary-pool"
#   cluster    = "${google_container_cluster.primary.name}"
#   zone       = "${var.zone}"
#   node_count = "2"

#   node_config {
#     machine_type = "n1-standard-1"
#   }
# }
