#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

docker build -t sample-app .

docker images

docker run -d -p 8000:80 sample-app
