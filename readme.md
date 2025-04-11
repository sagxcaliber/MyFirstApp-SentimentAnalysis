# Sentiment Analysis App

This is a simple sentiment analysis app that runs using Docker.
It includes both a frontend (on port 3000) and a backend (on port 8000).

## How to Run

```bash
# Build the Docker image
docker build -t sentiment-app .

# Run the Docker container
docker run -d -p 3000:3000 -p 8000:8000 sentiment-app

# Check running containers
docker ps

# Stop the container
docker stop sentiment-app

# View logs (replace <container-id> with actual ID)
docker logs <container-id>
