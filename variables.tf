variable "bedrock_inference_profiles_lookup" {
  description = <<EOT
Map of bedrock_inference_profiles_lookup, attributes below
Optional:
    - region
    - type
EOT

  type = map(object({
    region = optional(string)
    type   = optional(string)
  }))
}

