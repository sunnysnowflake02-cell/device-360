-- logical_table: device_issue_data
-- physical_fqn: icebase.agenticai_devicesupport.device_issue_data
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "dataset_id" AS dataset_id,
  "device_id" AS device_id,
  "issue_status" AS issue_status,
  "issue_title" AS issue_title,
  "issue_type_id" AS issue_type_id,
  CAST("report_time" AS TIMESTAMP(6)) AS report_time,
  CAST("timestamp" AS TIMESTAMP(6)) AS timestamp,
  "subscription_id" AS subscription_id,
  "subscription_ids" AS subscription_ids
FROM icebase.agenticai_devicesupport.device_issue_data
