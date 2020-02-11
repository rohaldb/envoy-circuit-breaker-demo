#!/bin/sh
python3 /code/app.py & #ammended to have app1
envoy -c /etc/service-envoy.yaml --service-cluster service${SERVICE_NAME}
