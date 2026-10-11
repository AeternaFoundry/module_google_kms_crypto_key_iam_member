output "kms_crypto_key_iam_members_id" {
  description = "Map of id values across all kms_crypto_key_iam_members, keyed the same as var.kms_crypto_key_iam_members except keys with no id are omitted"
  value       = { for k, v in google_kms_crypto_key_iam_member.kms_crypto_key_iam_members : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kms_crypto_key_iam_members_condition" {
  description = "Map of condition values across all kms_crypto_key_iam_members, keyed the same as var.kms_crypto_key_iam_members except keys with no condition are omitted"
  value       = { for k, v in google_kms_crypto_key_iam_member.kms_crypto_key_iam_members : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "kms_crypto_key_iam_members_crypto_key_id" {
  description = "Map of crypto_key_id values across all kms_crypto_key_iam_members, keyed the same as var.kms_crypto_key_iam_members except keys with no crypto_key_id are omitted"
  value       = { for k, v in google_kms_crypto_key_iam_member.kms_crypto_key_iam_members : k => v.crypto_key_id if v.crypto_key_id != null && length(v.crypto_key_id) > 0 }
}
output "kms_crypto_key_iam_members_etag" {
  description = "Map of etag values across all kms_crypto_key_iam_members, keyed the same as var.kms_crypto_key_iam_members except keys with no etag are omitted"
  value       = { for k, v in google_kms_crypto_key_iam_member.kms_crypto_key_iam_members : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "kms_crypto_key_iam_members_member" {
  description = "Map of member values across all kms_crypto_key_iam_members, keyed the same as var.kms_crypto_key_iam_members except keys with no member are omitted"
  value       = { for k, v in google_kms_crypto_key_iam_member.kms_crypto_key_iam_members : k => v.member if v.member != null && length(v.member) > 0 }
}
output "kms_crypto_key_iam_members_role" {
  description = "Map of role values across all kms_crypto_key_iam_members, keyed the same as var.kms_crypto_key_iam_members except keys with no role are omitted"
  value       = { for k, v in google_kms_crypto_key_iam_member.kms_crypto_key_iam_members : k => v.role if v.role != null && length(v.role) > 0 }
}

