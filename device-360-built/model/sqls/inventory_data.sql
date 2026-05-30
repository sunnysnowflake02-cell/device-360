-- logical_table: inventory_data
-- physical_fqn: icebase.agenticai_devicesupport.inventory_data
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "device_manufacturer" AS device_manufacturer,
  "device_brand" AS device_brand,
  "battery_type" AS battery_type,
  "skuid" AS skuid,
  CAST("quantity" AS DOUBLE) AS quantity,
  "location" AS location
FROM icebase.agenticai_devicesupport.inventory_data
