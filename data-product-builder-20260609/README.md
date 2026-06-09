# Generated lens: device-intelligence-360-v2

## Description
This data product integrates various tables related to device intelligence, including device data, event statuses, issues, employee data, inventory, memory, network, process, storage, and warranty information to provide a comprehensive view of enterprise laptop fleets.

How approved tables connect:
- icebase.agenticai_devicesupport.device_data relates to icebase.agenticai_devicesupport.process_event_data using device_id and device_id (relationship: one to many). Linking device data to process events allows for performance analysis based on device identifiers.
- icebase.agenticai_devicesupport.device_data relates to icebase.agenticai_devicesupport.memory_event_data using device_id and device_id (relationship: one to many). Connecting device data with memory events helps in assessing memory pressure on devices.
- icebase.agenticai_devicesupport.device_data relates to icebase.agenticai_devicesupport.network_event_data using device_id and device_id (relationship: one to many). Linking device data to network events provides insights into connectivity issues.
- icebase.agenticai_devicesupport.device_data relates to icebase.agenticai_devicesupport.storage_event_data using device_id and device_id (relationship: one to many). Connecting device data with storage events allows for monitoring storage health.
- icebase.agenticai_devicesupport.device_data relates to icebase.agenticai_devicesupport.device_issue_data using device_id and device_id (relationship: one to many). Linking device data to issues enables tracking of problems associated with specific devices.
- icebase.agenticai_devicesupport.device_data relates to icebase.agenticai_devicesupport.warranty_instance_data using device_id and device_id (relationship: one to many). Connecting device data with warranty information helps in analyzing warranty claims.
- icebase.agenticai_devicesupport.device_data relates to icebase.agenticai_devicesupport.laptop_battery_ml_predictions using device_id and device_id (relationship: one to many). Linking device data to battery predictions aids in failure prediction based on battery health.
- icebase.agenticai_devicesupport.device_data relates to icebase.agenticai_devicesupport.employee_data using customer_id and customer_id (relationship: one to many). Connecting device data with employee data provides context for customer-related issues.

## Source references

- `icebase.agenticai_devicesupport.device_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.device_data
- `icebase.agenticai_devicesupport.device_event_status`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.device_event_status
- `icebase.agenticai_devicesupport.device_issue_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.device_issue_data
- `icebase.agenticai_devicesupport.employee_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.employee_data
- `icebase.agenticai_devicesupport.inventory_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.inventory_data
- `icebase.agenticai_devicesupport.laptop_battery_ml_predictions`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.laptop_battery_ml_predictions
- `icebase.agenticai_devicesupport.memory_event_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.memory_event_data
- `icebase.agenticai_devicesupport.network_event_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.network_event_data
- `icebase.agenticai_devicesupport.process_event_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.process_event_data
- `icebase.agenticai_devicesupport.storage_event_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.storage_event_data
- `icebase.agenticai_devicesupport.warranty_instance_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.warranty_instance_data
- `icebase.agenticai_devicesupport.warranty_product_master`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.warranty_product_master

## Layout
- `deployment.yaml` — edit `repo.url` and `lensBaseDir` before applying.
- `model/tables/*.yaml` — Lens table definitions.
- `join_graph.yaml` (bundle root, **not** under `model/`) — full edge list for stewards; Lens deploy syncs `model/` only.
- Each `model/tables/*.yaml` may include **`joins`** only on the **canonical (left) side** of each edge (star direction — no reverse duplicate).
- `model/sqls/*.sql` — physical SQL; casts normalize types per dimensions (join keys + timestamps).
- `model/user_groups.yaml` — masking group for `meta.secure` dimensions (plus optional segment groups).
- `GOVERNANCE_RECOMMENDATIONS.md` — when present, steward governance notes from the Review tab (roles, segments).
- `data-products/*-cadp.yaml` — consumer-aligned data product (v1beta, inputs + ports).
- `data-products/*-cadp-scanner.yaml` — scanner workflow (filter includes CADP name).
- `DATAOS_VALIDATION.md` — LLM cross-check of joins, SQL/YAML, and DP manifest (if OpenAI configured).
- `config-data-quality/wf-*-dq-bundle.yaml` — consolidated Soda DQ workflow (`stackSpec.inputs` per dataset); optional `governance-framework.yaml`.
