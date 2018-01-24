#!/bin/bash

self=$(cd "$(dirname "$0")"; pwd -P)
docker run -d -p ${1-8000}:8888 -v $self/work:/home/main/work --name balance jupyter-ruby
