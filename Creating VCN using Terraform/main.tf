terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 6.27.0"  
    }
  }
}

provider "oci" {
  region = "ap-mumbai-1" 
}

resource "oci_core_vcn" "my_vcn" {
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaavc76ja77ynos2lfgdfwbbten7l25irg2wpm4asuyighwsbsdyj6a"  
  cidr_block     = "10.0.0.0/16"
  display_name   = "MyVCN"
  dns_label      = "myvcn"
}

output "vcn_id" {
  value = oci_core_vcn.my_vcn.id
}
