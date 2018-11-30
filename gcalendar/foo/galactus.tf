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

resource "googlecalendar_event" "example" {
  summary     = "Galactus"
  description = "The description of the event"
  location    = "Conference Room A"

  // Start and end times work best if specified as RFC3339.
  start = "2018-11-22T15:00:00-05:00"
  end   = "2018-11-22T17:00:00-05:00"

  // Each attendee is listed separately, and attendees can be marked as
  // optional.
  attendee {
    email = "nicolas.lamirault@gmail.com"
  }

  # attendee {
  #   email    = "you@company.com"
  #   optional = true
  # }

  reminder {
    method = "email"
    before = "1h"
  }
  reminder {
    method = "popup"
    before = "5m"
  }
  // Allow guests to do anything
  guests_can_invite_others    = true
  guests_can_modify           = true
  guests_can_see_other_guests = true
}
