#!/bin/sh

docker build -t pandoc . && docker run -p 9191:8080 pandoc