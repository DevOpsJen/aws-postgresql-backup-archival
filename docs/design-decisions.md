# Design Decisions & Trade-offs

## Why pg_dump instead of only RDS Snapshots?
- RDS snapshots are AWS-specific
- pg_dump creates portable, version-independent backups
- Logical backups allow selective restore

## Why S3 + Glacier?
- S3 provides durable and secure object storage
- Glacier Deep Archive significantly reduces long-term storage cost
- Lifecycle policies automate data movement without manual effort

## Why Multi-layer Backup Strategy?
- Automated backups protect short-term failures
- Snapshots protect against major incidents
- Logical backups protect against platform lock-in

# Design Decisions & Trade‑offs

## pg_dump vs RDS Snapshots
RDS snapshots are AWS‑specific.
pg_dump creates portable, logical backups usable across environments.

## Why Centralized S3?
Central storage reduces blast radius and simplifies compliance audits.

## Why Lifecycle Policies?
Automates long‑term retention while minimizing storage cost.

## Why Multi‑Layer Backup?
No single backup method covers all failure scenarios.

