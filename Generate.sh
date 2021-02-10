#!/bin/sh
ROOT_Version=v6-19-02
Geant4_Version=v10.6.1
Geant4_Tag=bishopwolf/geant4:10.6.1
Gate_Version=9.0
Gate_Tag=bishopwolf/gate:9.0

docker build -t $Geant4_Tag -f DockerFileGeant --build-arg ROOT_Version=$ROOT_Version --build-arg Geant4_Version=$Geant4_Version .
docker push $Geant4_Tag

docker build -t $Gate_Tag -f DockerFileGate --build-arg Geant4_Version=$Geant4_Tag --build-arg Gate_Version=$Gate_Version .
docker push $Gate_Tag