-- logical_table: memory_event_data
-- physical_fqn: icebase.agenticai_devicesupport.memory_event_data
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "device_id" AS device_id,
  TRY_CAST("freephysicalmemory" AS DOUBLE) AS freephysicalmemory,
  TRY_CAST("visiblememory" AS DOUBLE) AS visiblememory,
  "dataset_context_id" AS dataset_context_id,
  "dataset_id" AS dataset_id,
  "device_context_id" AS device_context_id,
  "item_context_id" AS item_context_id,
  "item_id" AS item_id,
  "item_name" AS item_name,
  "item_time" AS item_time,
  "report_time" AS report_time,
  CAST("schema_ver" AS DOUBLE) AS schema_ver,
  "subscription_id" AS subscription_id,
  "subscription_ids" AS subscription_ids
FROM icebase.agenticai_devicesupport.memory_event_data
