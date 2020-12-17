docker build -t reverse-proxy .
docker tag reverse-proxy ctala/reverse-proxy:latest
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push ctala/reverse-proxy