#!/bin/bash

docker run -it --rm --volume `PWD`/work:/home/jovyan/work/ superml /bin/bash
