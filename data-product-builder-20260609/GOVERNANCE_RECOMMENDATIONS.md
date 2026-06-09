## Governance context

This data product employs row-level security to mask sensitive customer identifiers and device identifiers for non-privileged users. Sensitive dimensions will be transformed or masked to prevent unauthorized access, while secure segments will filter rows based on user roles. The governance mode is mixed, as it includes both masking and segment-based access controls to ensure data privacy and compliance with regulations.

## Sample user groups & YAML

### Sample User Groups
These user groups are created in DataOS to manage access to sensitive data. Below is a YAML example of a segment definition:
```yaml
segments:
  - name: north_america_devices
    sql: "{TABLE}.region_name = 'North America'"
    meta:
      secure:
        user_groups:
          includes:
            - device_data_users
user_groups:
  device_data_users:
    api_scopes:
      - read
    includes:
      - users:id:device_user_1
      - users:id:device_user_2
```

## Suggested mode

`mixed`

## Role names (reuse in user_groups + segments)

`device_data_users`, `network_event_viewers`, `memory_event_auditors`, `process_event_analysts`
