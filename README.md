# AWS PostgreSQL Backup & Archival Strategy

## Project Overview
This project focuses on backup architecture rather than just tooling. I designed a multi-layer strategy combining RDS automated backups, snapshots, and logical backups for portability. I defined RTO and RPO targets, documented failure scenarios, implemented lifecycle-based cost optimization, and ensured security and compliance readiness. Automation was added to demonstrate operational maturity.


## Problem Statement
After migrating PostgreSQL data to Amazon RDS, there was no backup or disaster recovery strategy in place. This posed a high risk of data loss and compliance failure.

## Solution Overview
The solution uses:
- RDS automated backups for short-term recovery
- Manual snapshots for critical restore points
- Logical backups using pg_dump
- Amazon S3 for secure storage
- S3 Glacier Deep Archive for long-term retention
- IAM and KMS for security
- EventBridge and Lambda for automation

## Architecture
Refer to the architecture diagram in the architecture folder.

## Backup Strategy
- Daily automated RDS backups (7–14 days retention)
- Manual snapshots before major changes
- Logical backups exported and stored in S3
- Lifecycle rules move backups to Glacier after 30 days

## Security
- Encryption at rest using AWS KMS
- Private S3 buckets
- IAM least privilege access

## Restore Testing
- Snapshot restore testing
- Logical backup restore into a new RDS instance

## Outcome
- 99% reduction in data loss risk
- Fully automated backups
- Cost-optimized long-term storage

## Senior-Level Highlights
- Designed multi-layer backup and archival strategy
- Defined RTO/RPO and disaster recovery plans
- Implemented cost-optimized long-term retention
- Applied security, compliance, and operational best practices

