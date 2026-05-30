## CADP YAML validation / repair

### Round 1 — validate
**Valid:** True
**Notes:** —


**Stopped:** validation passed.


---

# DataOS artifact validation (LLM)

**Overall:** PASS

## Join graph
All edges connect approved tables. Join columns exist on both sides, and relationships are appropriately defined. Most joins are same-schema, with one exception (employee_data) which is acceptable as it spans schemas for customer context.

## SQL / Lens YAML
All SQL references use load_sql(logical_name) correctly. The SQL files are expected to be Trino-flavored. Dimension types are correctly defined as per the allowed types.

## Consumer data product YAML
The consumer YAML references the lens name 'device-intelligence-360' consistently and lists approved source FQNs sensibly.
