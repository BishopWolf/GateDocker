# GateDocker
Gate Docker scripts

# First Image Geant4
## Docker for gate prerequisites

[optional if not done before]
systemctl start docker
login: docker login

[build and use]
build: `docker build -t bishopwolf/geant4:$version -f DockerFileGeant .`
push: `docker push bishopwolf/geant4:$version`
interactive: `docker run -ti --rm -v ~/software:/home bishopwolf/geant4:$version /bin/bash`

where `$version` is `10.6.1` for gate `9.0`

# Second image Gate
## Docker for gate

[optional if not done before]
systemctl start docker
login: docker login

[build and use]
build: `docker build -t bishopwolf/gate:$version -f DockerFileGate .`
push: `docker push bishopwolf/gate:$version`
run command: `docker run -i --rm -v $PWD:/APP bishopwolf/gate:$version mac/main.mac`
interactive: `docker run -it --rm -v $PWD:/APP --entrypoint /bin/bash bishopwolf/gate:$version`

You can just install docker and then create an alias in your configuration
`echo "alias Gate='docker run -i --rm -v $PWD:/APP bishopwolf/gate:$version'" >> ~/.bashrc`

where current `$version=9.0`
