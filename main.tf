data "aws_bedrock_inference_profiles" "bedrock_inference_profiles_lookup" {
  for_each = var.bedrock_inference_profiles_lookup

  region = each.value.region
  type   = each.value.type
}

