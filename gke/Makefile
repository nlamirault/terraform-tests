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

APP="Galactus / GKE"

NO_COLOR=\033[0m
OK_COLOR=\033[32;01m
ERROR_COLOR=\033[31;01m
WARN_COLOR=\033[33;01m

MAKE_COLOR=\033[33;01m%-20s\033[0m

SHELL = /bin/bash

.DEFAULT_GOAL := help

.PHONY: help
help:
	@echo -e "$(OK_COLOR)==== $(APP) ====$(NO_COLOR)"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "$(MAKE_COLOR) : %s\n", $$1, $$2}'

init-terraform:
	@echo -e "$(OK_COLOR)[$(APP)] Initialize Terraform dependencies$(NO_COLOR)"
	terraform init -upgrade
	cd foo && terraform init

.PHONY: init
init: init-terraform ## Initialize dependencies

.PHONY: apply
apply: ## Apply Terraform (which=xxx)
	@echo -e "$(OK_COLOR)[$(APP)] Apply Terraform$(NO_COLOR)"
	cd $(which) && terraform apply --var-file ./galactus.tfvars

.PHONY: destroy
destroy: ## Destroy (which=xxx)
	@echo -e "$(OK_COLOR)[$(APP)] Apply Terraform$(NO_COLOR)"
	cd $(which) && terraform destroy --var-file ./galactus.tfvars
