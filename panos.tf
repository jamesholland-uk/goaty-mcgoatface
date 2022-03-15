resource "panos_security_policy" "rule1" {
    rule {
        name = "rule1"
        source_zones = ["any"]
        source_addresses = ["any"]
        source_users = ["any"]
        hip_profiles = ["any"]
        destination_zones = ["any"]
        destination_addresses = ["any"]
        applications = ["any"]
        categories = ["any"]
        services = ["any"]
        action = "allow"
        disable_server_response_inspection = true
    }
}

resource "panos_ipsec_crypto_profile" "ipsec1" {
    name = "ipsec1"
    authentications = ["md5"]
    encryptions = ["des"]
    dh_group = "group14"
    lifetime_type = "hours"
    lifetime_value = 4
    lifesize_type = "mb"
    lifesize_value = 1
}

resource "panos_zone" "zone1" {
    name = "zone1"
    enable_user_id = true
}

resource "panos_management_profile" "int-mgmt-profile" {
    name = "int-mgmt-profile"
    http = true
    telnet = true
}
