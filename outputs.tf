output "bedrock_inference_profiles_lookup_inference_profile_summaries" {
  description = "Map of inference_profile_summaries values across all bedrock_inference_profiles_lookup, keyed the same as var.bedrock_inference_profiles_lookup"
  value       = { for k, v in data.aws_bedrock_inference_profiles.bedrock_inference_profiles_lookup : k => v.inference_profile_summaries if v.inference_profile_summaries != null && length(v.inference_profile_summaries) > 0 }
}
output "bedrock_inference_profiles_lookup_region" {
  description = "Map of region values across all bedrock_inference_profiles_lookup, keyed the same as var.bedrock_inference_profiles_lookup"
  value       = { for k, v in data.aws_bedrock_inference_profiles.bedrock_inference_profiles_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrock_inference_profiles_lookup_type" {
  description = "Map of type values across all bedrock_inference_profiles_lookup, keyed the same as var.bedrock_inference_profiles_lookup"
  value       = { for k, v in data.aws_bedrock_inference_profiles.bedrock_inference_profiles_lookup : k => v.type if v.type != null && length(v.type) > 0 }
}

