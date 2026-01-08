# Reference Architecture – Backup & Archival Platform

## Architecture Overview
This solution is designed as a reusable backup and archival platform
that can be adopted across multiple AWS accounts and teams.

## Core Components
- Application Account:
  - Amazon RDS (PostgreSQL)
  - Backup execution layer (automation)

- Backup Account (Centralized):
  - Amazon S3 (versioned & encrypted)
  - Glacier Deep Archive
  - Central IAM policies

## Design Principles
- Separation of concerns
- Centralized backup ownership
- Minimized blast radius
- Cost-optimized long-term retention
