## Governance context

This data product implements row-level segment security to restrict access to sensitive customer identifiers and endpoint data. Groups are defined in DataOS to ensure that only authorized users can access sensitive information while ensuring that dimension masking transforms values for non-privileged consumers. The governance mode is mixed, combining both masking and row-level security based on PII signals present in the device and customer data.

## Sample user groups & YAML

### Sample User Groups

These user groups are created in DataOS and will control access to the data:

```yaml
segments:
  - name: north_american_devices
    sql: "{TABLE}.region_name = 'North America'"
    meta:
      secure:
        user_groups:
          includes:
            - device_fleet_admins

user_groups:
  device_fleet_admins:
    api_scopes:
      - read
    includes:
      - users:id:admin_user_1
      - users:id:admin_user_2
```

## Suggested mode

`mixed`

## Role names (reuse in user_groups + segments)

`device_fleet_admins`
