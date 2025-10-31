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
