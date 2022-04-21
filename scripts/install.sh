#!/bin/bash

docker build -t kafka-busybox:latest . --progress=plain
helm upgrade --install kafka-busybox helm