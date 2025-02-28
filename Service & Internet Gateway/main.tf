provider "oci" {
  region = "ap-mumbai-1"  
} 

resource "oci_core_internet_gateway" "my_igw" {
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaavc76ja77ynos2lfgdfwbbten7l25irg2wpm4asuyighwsbsdyj6a"
  vcn_id         = "ocid1.vcn.oc1.ap-mumbai-1.amaaaaaaftxdyyaaya5r3myj2u4ev6gl7wcao32nn2jr37fyogj53xnogstq"
  display_name   = "My_Internet_Gateway"
} 


# 🔹 Output Values
output "internet_gateway_id" {
  value = oci_core_internet_gateway.my_igw.id
}



