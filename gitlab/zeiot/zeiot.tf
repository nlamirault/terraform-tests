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

resource "gitlab_group" "zeiot" {
  name             = "zeiot"
  path             = "zeiot"
  visibility_level = "public"
}

module "prometheus" {
  source              = "../modules/project"
  project_name        = "prometheus"
  group_name          = "zeiot"
  namespace_id        = "${gitlab_group.zeiot.id}"
  project_description = "Docker image to run Prometheus on ARM devices"
}

module "alertmanager" {
  source              = "../modules/project"
  project_name        = "alertmanager"
  group_name          = "zeiot"
  namespace_id        = "${gitlab_group.zeiot.id}"
  project_description = "Docker image to run Alertmanager on ARM devices"
}

module "influxdb" {
  source              = "../modules/project"
  project_name        = "influxdb"
  group_name          = "zeiot"
  namespace_id        = "${gitlab_group.zeiot.id}"
  project_description = "Docker image to run InfluxDB on ARM devices"
}

module "grafana" {
  source              = "../modules/project"
  project_name        = "grafana"
  group_name          = "zeiot"
  namespace_id        = "${gitlab_group.zeiot.id}"
  project_description = "Docker image to run Grafana on ARM devices"
}

module "coredns" {
  source              = "../modules/project"
  project_name        = "coredns"
  group_name          = "zeiot"
  namespace_id        = "${gitlab_group.zeiot.id}"
  project_description = "Docker image to run CoreDNS on ARM devices"
}

module "nats" {
  source              = "../modules/project"
  project_name        = "nats"
  group_name          = "zeiot"
  namespace_id        = "${gitlab_group.zeiot.id}"
  project_description = "Docker image to run Nats.io on ARM devices"
}

module "ark" {
  source              = "../modules/project"
  project_name        = "ark"
  group_name          = "zeiot"
  namespace_id        = "${gitlab_group.zeiot.id}"
  project_description = "Docker image to run Ark on ARM devices"
}

module "external-dns" {
  source              = "../modules/project"
  project_name        = "external-dns"
  group_name          = "zeiot"
  namespace_id        = "${gitlab_group.zeiot.id}"
  project_description = "Docker image to run Kubernetes ExternalDNS on ARM devices"
}

module "node-exporter" {
  source              = "../modules/project"
  project_name        = "node-exporter"
  group_name          = "zeiot"
  namespace_id        = "${gitlab_group.zeiot.id}"
  project_description = "Docker image to run Prometheus Node Exporter on ARM devices"
}

module "vault" {
  source              = "../modules/project"
  project_name        = "vault"
  group_name          = "zeiot"
  namespace_id        = "${gitlab_group.zeiot.id}"
  project_description = "Docker image to run Hashicorp Vault on ARM devices"
}

module "kube-state-metrics" {
  source              = "../modules/project"
  project_name        = "kube-state-metrics"
  group_name          = "zeiot"
  namespace_id        = "${gitlab_group.zeiot.id}"
  project_description = "Docker image to run Kubernetes Kubestatemetrics on ARM devices"
}

module "minio" {
  source              = "../modules/project"
  project_name        = "minio"
  group_name          = "zeiot"
  namespace_id        = "${gitlab_group.zeiot.id}"
  project_description = "Docker image to run Minio on ARM devices"
}

