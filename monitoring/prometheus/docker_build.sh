#!/bin/bash

echo `git show --format="%h" HEAD | head -1` > bprometheusld_info.txt
echo `git rev-parse --abbrev-ref HEAD` >> bprometheusld_info.txt

docker build -t $USER_NAME/prometheus .
