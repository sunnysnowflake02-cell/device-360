-- logical_table: warranty_instance_data
-- physical_fqn: icebase.agenticai_devicesupport.warranty_instance_data
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "warranty_id" AS warranty_id,
  "device_id" AS device_id,
  TRY_CAST(TRIM("warranty_start_date") AS TIMESTAMP(6)) AS warranty_start_date,
  "warranty_status" AS warranty_status,
  "warranty_type" AS warranty_type
FROM icebase.agenticai_devicesupport.warranty_instance_data
