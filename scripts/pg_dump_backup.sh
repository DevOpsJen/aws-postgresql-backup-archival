#!/bin/bash

# Variables
RDS_ENDPOINT="<YOUR_RDS_ENDPOINT>"
DB_USER="<YOUR_DB_USERNAME>"
DB_NAME="<YOUR_DB_NAME>"
S3_BUCKET="<YOUR_S3_BUCKET_NAME>"

# Timestamp
DATE=$(date +%F-%H-%M)

# Backup file name
BACKUP_FILE="${DB_NAME}_${DATE}.dump"

# Create backup
pg_dump -Fc -h "$RDS_ENDPOINT" -U "$DB_USER" "$DB_NAME" > "$BACKUP_FILE"

# Upload to S3
aws s3 cp "$BACKUP_FILE" s3://$S3_BUCKET/$BACKUP_FILE

echo "Backup completed and uploaded to S3"
