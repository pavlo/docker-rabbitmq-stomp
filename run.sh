#!/bin/bash

echo "Setting RabbitMQ password if need..."
if [ ! -f /.rabbitmq_password_set ]; then
	/set_rabbitmq_password.sh
fi

# make rabbit own its own files
echo "Make RabbitMQ own its own files..."
chown -R rabbitmq:rabbitmq /var/lib/rabbitmq

echo "Starting Rabbit..."
rabbitmq-server
echo "Done!"
