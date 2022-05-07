# server-docker-v1

## Buiild the image

`docker build -t node-server-v1:v1 . `

## Run Without the volume

`docker run --rm -ti node-server-v1:v1`

## Run without the volume into a bash

`docker run --rm -ti node-server-v1:v1 bash`

## Without the volume

`docker run -v /Users/edward-manda/Desktop/ed/node/server-docker-v1:/usr/app --rm -ti node-server-v1:v1`
