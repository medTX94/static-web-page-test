#!/bin/bash

# Pull the latest code from the repository
git pull origin main

# Build the Docker image
docker-compose build simple-html-app

# Stop any running instance of the container
docker-compose down

# Start the container
docker-compose up -d simple-html-app
