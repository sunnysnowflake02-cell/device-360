## Governance context

This data product implements row-level security to protect sensitive customer identifiers and device information. Non-privileged consumers will have restricted access to sensitive fields, ensuring compliance with data governance policies. The product will utilize dimension masking to transform sensitive values while allowing necessary access to operational data for analysis.

## Sample user groups & YAML

```yaml
user_groups:
  device_health_analysts:
    api_scopes:
      - read
    includes:
      - users:id:device_health_user_1
      - users:id:device_health_user_2
  warranty_claims_analysts:
    api_scopes:
      - read
    includes:
      - users:id:warranty_claims_user_1
      - users:id:warranty_claims_user_2
segments:
  - name: active_devices_by_region
    sql: "{TABLE}.region_name IS NOT NULL"
    meta:
      secure:
        user_groups:
          includes:
            - device_health_analysts
  - name: devices_with_warranty_claims
    sql: "{TABLE}.warranty_status = 'Claimed'"
    meta:
      secure:
        user_groups:
          includes:
            - warranty_claims_analysts
```

## Suggested mode

`mixed`

## Role names (reuse in user_groups + segments)

`device_health_analysts`, `warranty_claims_analysts`
