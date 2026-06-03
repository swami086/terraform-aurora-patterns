locals {
  account_id = data.aws_caller_identity.current.account_id
  partition  = data.aws_partition.current.partition

  foundation_model_arn = "arn:${local.partition}:bedrock:${var.region}::foundation-model/${var.foundation_model_id}"

  kb_role_name    = "${var.kb_name}-kb-role"
  agent_role_name = "${var.agent_name}-agent-role"

  common_tags = merge(
    {
      ManagedBy = "terraform"
      Module    = "bedrock-kb-agent-native"
    },
    var.tags,
  )
}
