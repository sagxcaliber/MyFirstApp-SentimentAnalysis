
docker build -t sentiment-app .

docker run -d -p 3000:3000 -p 8000:8000 sentiment-app

docker ps


docker stop sentiment-app


docker logs <container-id>
