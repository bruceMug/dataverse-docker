#!/bin/bash

# Bring down any running containers
docker-compose down

# Start postgres, minio, and whoami in detached mode
docker-compose up -d postgres minio whoami

# Wait for these services to be ready (simple sleep, consider health checks)
sleep 15

# Start solr
docker-compose up -d solr

# Wait for solr to be ready
sleep 15

# Start dataverse
docker-compose up -d dataverse