-- logical_table: storage_event_data
-- physical_fqn: icebase.agenticai_devicesupport.storage_event_data
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "device_id" AS device_id,
  CAST("diskfreepercentage" AS DOUBLE) AS diskfreepercentage,
  TRY_CAST("disksize" AS DOUBLE) AS disksize,
  "dataset_context_id" AS dataset_context_id,
  "dataset_id" AS dataset_id,
  "device_context_id" AS device_context_id,
  "item_context_id" AS item_context_id,
  "diskstatus" AS diskstatus,
  "item_name" AS item_name,
  "item_time" AS item_time,
  "report_time" AS report_time,
  CAST("schema_ver" AS DOUBLE) AS schema_ver,
  "subscription_id" AS subscription_id,
  "subscription_ids" AS subscription_ids
FROM icebase.agenticai_devicesupport.storage_event_data
