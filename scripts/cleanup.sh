#!/bin/bash

helm uninstall kafka-busybox
docker system prune -f
