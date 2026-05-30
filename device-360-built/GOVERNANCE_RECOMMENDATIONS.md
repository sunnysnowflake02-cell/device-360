## Governance context

This data product includes sensitive customer identifiers and device information that must be protected. It employs row-level segment security to restrict access to sensitive data, allowing only authorized user groups to view specific segments of the data. Additionally, certain dimensions may be masked to ensure compliance with privacy regulations, effectively transforming sensitive values to protect customer identities.

## Sample user groups & YAML

```yaml
segments:
  - name: north_american_devices
    sql: "{TABLE}.region_name = 'North America'"
    meta:
      secure:
        user_groups:
          includes:
            - north_american_device_analysts
user_groups:
  north_american_device_analysts:
    api_scopes:
      - read
    includes:
      - users:id:device_analyst_1
      - users:id:device_analyst_2
```

## Suggested mode

`mixed`

## Role names (reuse in user_groups + segments)

`north_american_device_analysts`, `device_issue_resolvers`, `device_performance_monitors`
