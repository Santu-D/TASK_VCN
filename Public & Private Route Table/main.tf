provider "oci" {
  region = "ap-mumbai-1" 
}
resource "oci_core_route_table" "public_route_table" {
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaavc76ja77ynos2lfgdfwbbten7l25irg2wpm4asuyighwsbsdyj6a"
  vcn_id         = "ocid1.vcn.oc1.ap-mumbai-1.amaaaaaaftxdyyaaya5r3myj2u4ev6gl7wcao32nn2jr37fyogj53xnogstq"
  display_name   = "PublicRouteTable"

  route_rules {
    network_entity_id = "ocid1.internetgateway.oc1.ap-mumbai-1.aaaaaaaaspbfl233dccaohsgjl3ukrkljwhlud6zstj5kpcqoh77cwcvwbra"
    destination       = "0.0.0.0/0"  # Route all internet traffic through IGW
    description       = "Route to Internet via IGW"
  }
}

resource "oci_core_route_table" "private_route_table" {
  compartment_id = "ocid1.tenancy.oc1..aaaaaaaavc76ja77ynos2lfgdfwbbten7l25irg2wpm4asuyighwsbsdyj6a"
  vcn_id         = "ocid1.vcn.oc1.ap-mumbai-1.amaaaaaaftxdyyaaya5r3myj2u4ev6gl7wcao32nn2jr37fyogj53xnogstq"
  display_name   = "PrivateRouteTable"
}
output "public_route_table_id" {
  value = oci_core_route_table.public_route_table.id
}

output "private_route_table_id" {
  value = oci_core_route_table.private_route_table.id
}