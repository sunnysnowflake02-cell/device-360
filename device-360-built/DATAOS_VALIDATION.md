## CADP YAML validation / repair

### Round 1 — validate
**Valid:** True
**Notes:** —


**Stopped:** validation passed.


---

# DataOS artifact validation (LLM)

**Overall:** PASS

## Join graph
All edges connect approved tables with valid join columns (device_id). Relationships are consistently one-to-many, and all joins are within the same schema.

## SQL / Lens YAML
All SQL references use load_sql(logical_name) correctly. Dimension types are validated against allowed types and are consistent with the provided JSON summary.

## Consumer data product YAML
The consumer YAML references the lens name 'device-360-agenticai' consistently and lists approved source FQNs sensibly.
