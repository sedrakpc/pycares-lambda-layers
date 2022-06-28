#!/bin/bash

docker run -v "$PWD":/var/task "public.ecr.aws/sam/build-python3.8" /bin/sh -c "pip install -r requirements.txt -t python/lib/python3.8/site-packages/; exit"
zip -r pycares-lambda-layers.zip python > /dev/null
