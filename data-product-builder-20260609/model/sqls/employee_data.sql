-- logical_table: employee_data
-- physical_fqn: icebase.agenticai_devicesupport.employee_data
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "customer_id" AS customer_id,
  "customer_name" AS customer_name,
  "customer_location_country" AS customer_location_country,
  "customer_location_state" AS customer_location_state,
  CAST("customer_email" AS VARCHAR) AS customer_email,
  CAST("customer_phone" AS VARCHAR) AS customer_phone,
  TRY_CAST(TRIM("created_at") AS TIMESTAMP(6)) AS created_at,
  TRY_CAST(TRIM("updated_at") AS TIMESTAMP(6)) AS updated_at,
  "customer_department" AS customer_department
FROM icebase.agenticai_devicesupport.employee_data
