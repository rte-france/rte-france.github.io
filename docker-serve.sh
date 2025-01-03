docker build -t rte-france.github.io:latest -f docker/ubuntu22.dockerfile docker
docker run -p 127.0.0.1:4000:4000 -v $(pwd):/rte-france.github.io rte-france.github.io:latest