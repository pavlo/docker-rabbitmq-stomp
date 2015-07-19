# docker-rabbitmq-stomp

The base image to run RabbitMQ with STOMP plugin

## Thanks to tumtumcloud!

This stuff is based on excellent `https://github.com/tutumcloud/rabbitmq` image.

## Build it

`docker build -t yourid/rabbitmq:latest .`

## Run it

```
docker run --name="rabbitmq" \
  -p 5672:5672 \
  -p 15672:15672 \
  -p 61613:61613  \
  -e RABBITMQ_USER=$RABBITMQ_USER \
  -e RABBITMQ_PASS=$RABBITMQ_PASS \
  yourid/rabbitmq:latest
```
