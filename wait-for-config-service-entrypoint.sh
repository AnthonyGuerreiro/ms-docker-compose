#!/bin/sh

while ! nc -z config-service ${PORT:-8888} ; do
    echo "Waiting Config Service"
    sleep 2
done

java -Djava.security.egd=file:/dev/./urandom -jar /app.jar "$@"