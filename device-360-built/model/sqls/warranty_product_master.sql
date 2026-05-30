-- logical_table: warranty_product_master
-- physical_fqn: icebase.agenticai_devicesupport.warranty_product_master
-- Cross-table joins: see ../../join_graph.yaml at bundle root (outside model/).
SELECT
  "warranty_product_code" AS warranty_product_code,
  "warranty_product_name" AS warranty_product_name,
  CAST("warranty_period_in_months" AS DOUBLE) AS warranty_period_in_months,
  CAST("warranty_price" AS DOUBLE) AS warranty_price,
  "warranty_type" AS warranty_type
FROM icebase.agenticai_devicesupport.warranty_product_master
