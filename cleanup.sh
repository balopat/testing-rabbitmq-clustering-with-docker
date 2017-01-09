#!/bin/bash
docker rm -f $(docker ps -q -a --filter "name=cluster_rabbit")
docker images | grep node | awk '{print $3 }' | xargs docker rmi -f
