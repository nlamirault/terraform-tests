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

resource "gandi_zone" "galactus_xyz" {
  name = "galactus.xyz"
}

resource "gandi_domainattachment" "galactus_xyz" {
    domain = "galactus.xyz"
    zone = "${gandi_zone.galactus_xyz.id}"
}

resource "gandi_zonerecord" "galactus_website" {
    zone = "${gandi_zone.galactus_xyz.id}"
    name = "galactus"
    type = "CNAME"
    ttl = 3600
    values = [
        "galactus.netlify.com"
    ]
}