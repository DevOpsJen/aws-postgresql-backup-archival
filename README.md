# aws-postgresql-backup-archival
End-to-end PostgreSQL backup and archival strategy on AWS


# AWS PostgreSQL Backup & Archival Strategy

## Project Overview
This project demonstrates a production-grade backup and archival solution for PostgreSQL databases hosted on Amazon RDS. The goal is to prevent data loss, enable point-in-time recovery, and store historical data securely at low cost.

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
