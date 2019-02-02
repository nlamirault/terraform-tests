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

module "zeiot-team" {
  source             = "../modules/team"
  name               = "Main"
  maintainer_members = ["nlamirault"]
}

module "kanban-project" {
  source = "../modules/project"
  name   = "Kanban Project"
}

module "prometheus-repository" {
  source      = "../modules/repository"
  name        = "prometheus"
  description = "Docker image to run Prometheus on ARM devices"
  topics      = ["prometheus", "arm", "galactus"]
  auto_init   = false
}

module "alertmanager-repository" {
  source      = "../modules/repository"
  name        = "alertmanager"
  description = "Docker image to run Alertmanager on ARM devices"
  topics      = ["prometheus", "alertmanager", "arm", "galactus"]
  auto_init   = false
}

module "node-exporter-repository" {
  source      = "../modules/repository"
  name        = "node-exporter"
  description = "Docker image to run Prometheus Node Exporter on ARM devices"
  topics      = ["prometheus", "node-exporter", "arm", "galactus"]
  auto_init   = false
}

module "coredns-repository" {
  source      = "../modules/repository"
  name        = "coredns"
  description = "Docker image to run CoreDNS on ARM devices"
  topics      = ["coredns", "arm", "galactus"]
  auto_init   = false
}

module "external-dns-repository" {
  source      = "../modules/repository"
  name        = "external-dns"
  description = "Docker image to run Kubernetes ExternalDNS on ARM devices"
  topics      = ["external-dns", "arm", "galactus"]
  auto_init   = false
}

module "vault-repository" {
  source      = "../modules/repository"
  name        = "vault"
  description = "Docker image to run Hashicorp Vault on ARM devices"
  topics      = ["vault", "arm", "galactus"]
  auto_init   = false
}

module "ark-repository" {
  source      = "../modules/repository"
  name        = "ark"
  description = "Docker image to run Heptio Ark on ARM devices"
  topics      = ["ark", "arm", "galactus"]
  auto_init   = false
}

module "influxdb-repository" {
  source      = "../modules/repository"
  name        = "influxdb"
  description = "Docker image to run InfluxDB on ARM devices"
  topics      = ["influxdb", "arm", "galactus"]
  auto_init   = false
}

module "grafana-repository" {
  source      = "../modules/repository"
  name        = "grafana"
  description = "Docker image to run Grafana on ARM devices"
  topics      = ["grafana", "arm", "galactus"]
  auto_init   = false
}

module "kube-state-metrics-repository" {
  source      = "../modules/repository"
  name        = "kube-state-metrics"
  description = "Docker image to run Kubernetes Kubestatemetrics on ARM devices"
  topics      = ["kube-state-metrics", "arm", "galactus"]
  auto_init   = false
}

# module "cockroachdb-repository" {
#   source      = "../modules/repository"
#   name        = "cockroachdb"
#   description = "Docker image to run CockroachDB on ARM devices"
#   topics      = ["cockroachdb", "arm", "galactus"]
#   auto_init   = false
# }

module "nats-repository" {
  source      = "../modules/repository"
  name        = "nats"
  description = "Docker image to run Nats.io on ARM devices"
  topics      = ["nats", "arm", "galactus"]
  auto_init   = false
}

module "minio-repository" {
  source      = "../modules/repository"
  name        = "minio"
  description = "Docker image to run Minio on ARM devices"
  topics      = ["minio", "arm", "galactus"]
  auto_init   = false
}

