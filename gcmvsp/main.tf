# Copyright 2025 Google LLC
#
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

resource "google_org_policy_policy" "require_os_login" {
  name   = "${var.parent_id}/policies/compute.managed.requireOsLogin"
  parent = var.parent_id

  spec {
    rules {
      enforce = "TRUE"
    }
  }
}

resource "google_org_policy_policy" "vm_external_ip_access" {
  name   = "${var.parent_id}/policies/compute.vmExternalIpAccess"
  parent = var.parent_id

  spec {
    rules {
      deny_all = "TRUE"
    }
  }
}

resource "google_org_policy_policy" "skip_default_network_creation" {
  name   = "${var.parent_id}/policies/compute.skipDefaultNetworkCreation"
  parent = var.parent_id

  spec {
    rules {
      enforce = "TRUE"
    }
  }
}

resource "google_org_policy_policy" "disable_serial_port_access" {
  name   = "${var.parent_id}/policies/compute.disableSerialPortAccess"
  parent = var.parent_id

  spec {
    rules {
      enforce = "TRUE"
    }
  }
}
