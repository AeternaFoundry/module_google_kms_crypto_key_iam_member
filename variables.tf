variable "kms_crypto_key_iam_members" {
  description = <<EOT
Map of kms_crypto_key_iam_members, attributes below
Required:
    - crypto_key_id
    - member
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    crypto_key_id = string
    member        = string
    role          = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

