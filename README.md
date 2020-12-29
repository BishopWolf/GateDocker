# GateDocker
Gate Docker scripts

# First Image Geant4
## Docker for gate prerequisites

[optional if not done before]
systemctl start docker
login: docker login

[build and use]
build: docker build -t bishopwolf/geant4 -f DockerFileGeant .
push: docker push bishopwolf/geant4
interactive: docker run -ti --rm -v ~/software:/home bishopwolf/geant4 /bin/bash

# Second image Gate
## Docker for gate

[optional if not done before]
systemctl start docker
login: docker login

[build and use]
build: docker build -t bishopwolf/gate:9.0 -f DockerFileGate .
push: docker push bishopwolf/gate:9.0
interactive: docker run -ti --rm -v ~/software:/home bishopwolf/gate:9.0 /bin/bash
