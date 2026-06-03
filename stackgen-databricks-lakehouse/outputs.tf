output "external_location_name" {
  description = "Databricks external location name for the lakehouse S3 path"
  value       = databricks_external_location.lakehouse.name
}

output "sql_endpoint_id" {
  description = "Databricks SQL warehouse endpoint ID"
  value       = databricks_sql_endpoint.lakehouse_sql.id
}

output "storage_credential_name" {
  description = "Databricks storage credential name for S3 access"
  value       = databricks_storage_credential.lakehouse_s3.name
}
