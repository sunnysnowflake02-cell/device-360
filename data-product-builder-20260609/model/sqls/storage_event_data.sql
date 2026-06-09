-- logical_table: storage_event_data
-- physical_fqn: icebase.agenticai_devicesupport.storage_event_data
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "dataset_context_id" AS dataset_context_id,
  "dataset_id" AS dataset_id,
  "device_context_id" AS device_context_id,
  "device_id" AS device_id,
  "item_context_id" AS item_context_id,
  CAST("diskfreepercentage" AS DOUBLE) AS diskfreepercentage,
  "diskstatus" AS diskstatus,
  TRY_CAST("disksize" AS DOUBLE) AS disksize,
  "item_name" AS item_name,
  TRY_CAST(TRIM("item_time") AS TIMESTAMP(6)) AS item_time,
  TRY_CAST(TRIM("report_time") AS TIMESTAMP(6)) AS report_time,
  "subscription_id" AS subscription_id,
  "subscription_ids" AS subscription_ids,
  CAST("schema_ver" AS DOUBLE) AS schema_ver
FROM icebase.agenticai_devicesupport.storage_event_data
