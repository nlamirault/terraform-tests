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

resource "updown_check" "google_com" {
  alias        = "https://google.com"
  apdex_t      = 1.0
  enabled      = true
  period       = 30
  published    = true
  url          = "https://google.com"
  # string_match = "OK"
  mute_until   = "tomorrow"

  disabled_locations = [
    "mia",
  ]

  custom_headers = {
    "X-GREAT-HEADER" = "yay!"
  }
}

# Output ipv4 and ipv6 nodes addresses list
data "updown_nodes" "global" {}

output "updown_nodes_ipv4" {
  value = "${data.updown_nodes.global.ipv4}"
}

output "updown_nodes_ipv6" {
  value = "${data.updown_nodes.global.ipv6}"
}
