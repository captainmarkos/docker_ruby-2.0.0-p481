### Ruby-2.0.0-p481

Built from source because I needed this particular version for severals apps.

https://hub.docker.com/repository/docker/captainmarkos/ruby-2.0.0-p481


```
# The Dockerfile uses: FROM ubuntu:14.04

docker build --platform=linux/amd64 -f Dockerfile -t ruby-2.0.0-p481:latest .
docker tag captainmarkos/ruby-2.0.0-p481:latest us-central1-docker.pkg.dev/captainmarkos/captainmarkos/ruby-2.0.0-p481:latest

docker logout
docker login

docker push captainmarkos/ruby-2.0.0-p481:latest us-central1-docker.pkg.dev/captainmarkos/ruby-2.0.0-p481:latest
```
