#!/bin/bash
docker rm -f $(docker ps -q -a --filter "name=cluster_rabbit")

