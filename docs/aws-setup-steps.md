# AWS Setup – Step by Step

## Step 1: Enable RDS Automated Backups
- Go to AWS Console → RDS
- Select PostgreSQL database
- Modify → Enable automated backups
- Set retention to 7–14 days

## Step 2: Create Manual Snapshot
- RDS → Databases → Actions → Take snapshot
- Used for critical restore points

## Step 3: Create S3 Bucket
- S3 → Create bucket
- Block public access
- Enable encryption

## Step 4: Add Lifecycle Rule
- Move objects to Glacier after 30 days
- Move to Deep Archive after 2 years

## Step 5: IAM Role
- Create IAM role with access to:
  - S3
  - RDS (read-only)
  - CloudWatch logs
