# Generated lens: device-intelligence-360

## Description
This data product integrates multiple tables to provide a comprehensive view of device performance, issues, and customer context.

How approved tables connect:
- icebase.agenticai_devicesupport.device_data relates to icebase.agenticai_devicesupport.device_issue_data using device_id and device_id (relationship: one to many). Join on device_id to correlate device data with reported issues.
- icebase.agenticai_devicesupport.device_data relates to icebase.agenticai_devicesupport.warranty_instance_data using device_id and device_id (relationship: one to many). Join on device_id to link device information with warranty details.
- icebase.agenticai_devicesupport.device_data relates to icebase.agenticai_devicesupport.laptop_battery_ml_predictions using device_id and device_id (relationship: one to one). Join on device_id to connect device data with battery failure predictions.
- icebase.agenticai_devicesupport.device_data relates to icebase.agenticai_devicesupport.device_event_status using device_id and device_id (relationship: one to many). Join on device_id to track device performance metrics.
- icebase.agenticai_devicesupport.device_data relates to icebase.agenticai_devicesupport.employee_data using customer_id and customer_id (relationship: many to one). Join on customer id to get the owner details of the device
- icebase.agenticai_devicesupport.device_data relates to icebase.agenticai_devicesupport.process_event_data using device_id and device_id (relationship: many to one).

## Source references

- `icebase.agenticai_devicesupport.device_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.device_data
- `icebase.agenticai_devicesupport.device_event_status`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.device_event_status
- `icebase.agenticai_devicesupport.device_issue_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.device_issue_data
- `icebase.agenticai_devicesupport.employee_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.employee_data
- `icebase.agenticai_devicesupport.laptop_battery_ml_predictions`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.laptop_battery_ml_predictions
- `icebase.agenticai_devicesupport.memory_event_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.memory_event_data
- `icebase.agenticai_devicesupport.network_event_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.network_event_data
- `icebase.agenticai_devicesupport.process_event_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.process_event_data
- `icebase.agenticai_devicesupport.storage_event_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.storage_event_data
- `icebase.agenticai_devicesupport.warranty_instance_data`: https://known-racer.mydataos.com/metis/assets/table/icebase.icebase.agenticai_devicesupport.warranty_instance_data

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
