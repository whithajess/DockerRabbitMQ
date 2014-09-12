DockerAmqp
=============

Runs amqp-server under a docker container

USAGE
=============

####BUILD IMAGE
sudo docker build -t amqp .
####DEAMONIZE IMAGE
sudo docker run -d --name amqp-server amqp
####FIND OUT IP
sudo docker inspect --format '{{ .NetworkSettings.IPAddress }}' amqp-server
####LOG IN
use your local browser port 15672
http://172.17.0.2:15672/ (replace with your ip)
default username/password is guest/guest

