terraform {
  required_providers {
    btp = {
      source  = "sap/btp"
      version = "0.4.0-beta1"
    }
    cloudfoundry = {
      source  = "cloudfoundry-community/cloudfoundry"
      version = "0.51.3"
    }
  }
}

provider "btp" {
  globalaccount = var.global_account
  username      = var.username
  password      = var.password
}

// doesn't work for regions with multiple CF environments, e.g. eu10
// (https://help.sap.com/docs/btp/sap-business-technology-platform/regions)
provider "cloudfoundry" {
  api_url  = "https://api.cf.${var.region}.hana.ondemand.com"
  user     = var.username
  password = var.password
}