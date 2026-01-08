#!/bin/bash
# PostgreSQL logical backup script

pg_dump -Fc -h <RDS-ENDPOINT> -U <DB-USER> <DB-NAME> > backup.dump
