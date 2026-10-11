resource "google_kms_crypto_key_iam_member" "kms_crypto_key_iam_members" {
  for_each = var.kms_crypto_key_iam_members

  crypto_key_id = each.value.crypto_key_id
  member        = each.value.member
  role          = each.value.role

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

