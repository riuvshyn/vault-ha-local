disable_mlock = true
ui = true

storage "file" {
  path = "/vault"
}

ha_storage "mysql" {
    address = "172.16.238.20:3306"
    username = "root"
    password = "root"
    database = "vault"
    ha_enabled = "true"
}

listener "tcp" {
    address       = "0.0.0.0:8200"
    tls_disable = true
}
