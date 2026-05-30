-- logical_table: network_event_data
-- physical_fqn: icebase.agenticai_devicesupport.network_event_data
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "device_id" AS device_id,
  "connectiontype" AS connectiontype,
  TRY_CAST("internetconnection" AS BOOLEAN) AS internetconnection,
  TRY_CAST("linkspeed" AS DOUBLE) AS linkspeed,
  "dataset_context_id" AS dataset_context_id,
  "dataset_id" AS dataset_id,
  "device_context_id" AS device_context_id,
  "item_context_id" AS item_context_id,
  "ipv4gateway" AS ipv4gateway,
  "ipv4address" AS ipv4address,
  "ipv6gateway" AS ipv6gateway,
  "ipv6address" AS ipv6address,
  "macaddress" AS macaddress,
  "wlansecurity" AS wlansecurity,
  "wlanssid" AS wlanssid,
  "item_id" AS item_id,
  "item_name" AS item_name,
  "item_time" AS item_time,
  "report_time" AS report_time,
  CAST("schema_ver" AS DOUBLE) AS schema_ver,
  "subscription_id" AS subscription_id,
  "subscription_ids" AS subscription_ids
FROM icebase.agenticai_devicesupport.network_event_data
