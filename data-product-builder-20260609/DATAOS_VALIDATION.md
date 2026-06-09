## CADP YAML validation / repair

### Round 1 — validate
**Valid:** True
**Notes:** —


**Stopped:** validation passed.


---

# DataOS artifact validation (LLM)

**Overall:** PASS

## Join graph
All edges connect approved tables with valid join columns. Relationships are consistently one-to-many, and the majority of joins are within the same schema, which is preferred.

## SQL / Lens YAML
All SQL references use load_sql(logical_name) correctly. The SQL files are expected to be Trino-flavored. Dimension types are consistent with the allowed types: string, number, time, boolean.

## Consumer data product YAML
The consumer YAML references the lens name 'device-intelligence-360-v2' consistently and lists approved source FQNs sensibly.
