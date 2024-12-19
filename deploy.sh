#!/bin/bash
# Stop and remove the existing container
docker-compose down

# Deploy the new container
docker-compose up -d

