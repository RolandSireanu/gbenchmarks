docker build -t ubuntu22_gbenchmark ./docker
docker run -v ./project:/project ubuntu22_gbenchmark
