@ECHO OFF

REM docker run -t -i -p 80:80 -p 3306:3306 -p 22:22 raspberry-docker /bin/bash
docker run --interactive -t -i -p 80:80 -p 3306:3306 -p 22:22 rgrenwick/raspberry-docker  /bin/bash