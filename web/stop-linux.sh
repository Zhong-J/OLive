# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.
pkill -9 -f 'celery worker'
kill -9 `sudo lsof -t -i:8000`
kill -9 `sudo lsof -t -i:5555`
docker container stop redis
docker container rm redis