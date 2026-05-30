-- logical_table: laptop_battery_ml_predictions
-- physical_fqn: icebase.agenticai_devicesupport.laptop_battery_ml_predictions
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "device_id" AS device_id,
  CAST("actual" AS DOUBLE) AS actual,
  CAST("predicted" AS DOUBLE) AS predicted,
  CAST("predicted_proba" AS DOUBLE) AS predicted_proba
FROM icebase.agenticai_devicesupport.laptop_battery_ml_predictions
