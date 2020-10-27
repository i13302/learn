#!/bin/bash

docker run -it --rm --publish 8888:8888 --volume $(pwd)/work:/home/jovyan/work/ superml
