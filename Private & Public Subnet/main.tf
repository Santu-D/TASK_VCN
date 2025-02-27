terraform {
  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "~> 6.27.0"  
    }
  }
}

# Create a public subnet
resource "oci_core_subnet" "public_subnet" {
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaavc76ja77ynos2lfgdfwbbten7l25irg2wpm4asuyighwsbsdyj6a"
  vcn_id = "ocid1.vcn.oc1.ap-mumbai-1.amaaaaaaftxdyyaaya5r3myj2u4ev6gl7wcao32nn2jr37fyogj53xnogstq"
  cidr_block     = "10.0.1.0/24"
  display_name   = "PublicSubnet"
}
# Create a private subnet
resource "oci_core_subnet" "private_subnet" {
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaavc76ja77ynos2lfgdfwbbten7l25irg2wpm4asuyighwsbsdyj6a"
  vcn_id = "ocid1.vcn.oc1.ap-mumbai-1.amaaaaaaftxdyyaaya5r3myj2u4ev6gl7wcao32nn2jr37fyogj53xnogstq"
  cidr_block     = "10.0.2.0/24"
  display_name   = "PrivateSubnet"
}
output "public_subnet_id" {
  value = oci_core_subnet.public_subnet.id
}
output "private_subnet_id" {
  value = oci_core_subnet.private_subnet.id
}











