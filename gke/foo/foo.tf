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

module "kubernetes" {
  source             = "../modules/kubernetes"
  project = "${var.project}"
  name               = "${var.name}"
  region             = "${var.region}"
  zone               = "${var.zone}"
  # node_count         = "${var.node_count}"
  # image_type         = "${var.image_type}"
  # network            = "${var.name}"
  # subnetwork         = "${var.name}"
  # min_master_version = "${var.min_master_version}"
  # node_version       = "${var.node_version}"
  # master_user        = "${var.master_user}"
  # master_password    = "${var.master_password}"
  # vm_size            = "${var.vm_size}"
  # data_dir           = "${ var.data_dir}"
}
