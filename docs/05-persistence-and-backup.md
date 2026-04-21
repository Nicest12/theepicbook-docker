# Persistence and Backup Strategy

Database persistence is implemented using a Docker named volume.

Volume:
theepicbook_db_data

This volume stores MySQL database files outside the container, ensuring
data survives container restarts and redeployments.

Backup Procedure

mysqldump is used to export the database:

docker exec epicbook-db mysqldump -u root -pdemo1234 bookstore > backup.sql

Restore Procedure

docker exec -i epicbook-db mysql -u root -pdemo1234 bookstore < backup.sql

Backup Frequency

Recommended:
Daily automated backups using a cron job or CI pipeline.

Backup Storage

Backups should be stored in:

- secondary disk
- cloud object storage
- secure backup repository
