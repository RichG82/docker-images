#REM docker commit c32642c0533f rgrenwick/raspberry-docker
#REM docker push rgrenwick/raspberry-docker

docker ps 
$id = Read-Host "Container ID"
docker commit $id rgrenwick/raspberry-docker
docker push rgrenwick/raspberry-docker