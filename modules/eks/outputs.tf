output "azs" {
  description = "AZs cluster belong to"
  value       = flatten(module.vpc.azs)
}

output "subnet_ids" {
  description = "AZs cluster belong to"
  value       = module.vpc.private_subnets
}
