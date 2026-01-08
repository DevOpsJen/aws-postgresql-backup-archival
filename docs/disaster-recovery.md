# Disaster Recovery Strategy

## Recovery Objectives
- RPO (Recovery Point Objective): 24 hours
- RTO (Recovery Time Objective): < 1 hour

## Failure Scenarios Covered
- Accidental data deletion
- Database corruption
- AWS service failure

## Recovery Methods
- Restore from RDS automated backups for recent issues
- Restore from manual snapshots for major incidents
- Restore logical backups into new RDS instance if needed
