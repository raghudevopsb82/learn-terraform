provider "vault" {
  # It is strongly recommended to configure this provider through the
  # environment variables described above, so that each user can have
  # separate credentials set in the environment.
  #
  # This will default to using $VAULT_ADDR
  # But can be set explicitly
  address = "http://vault.azdevopsb82.online:8200"
  token = var.token
}

variable "token" {}

data "vault_kv_secret" "secret_data" {
  path = "test/demo-ssh"
}

output "data" {
  value = data.vault_kv_secret.secret_data
}





