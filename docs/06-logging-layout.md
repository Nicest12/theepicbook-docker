# Logging Strategy

The EpicBook stack uses a hybrid logging approach.

Reverse Proxy Logs

Nginx access and error logs are stored on the host system.

Location:
./logs/

This allows easy inspection without entering containers.

Application Logs

The EpicBook Node application logs to stdout.

Logs are accessible using:

docker logs epicbook-app

Database Logs

MySQL logs are accessible using:

docker logs epicbook-db

Benefits

- Easy troubleshooting
- Persistent proxy logs
- Container-native logging
