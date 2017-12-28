#!/bin/bash

# Run docker image to build the themes.
docker run -e PATTERN=coda -v $PWD/output/:/src/output daylerees/rainglow:latest

# Kill old themes.
rm -rf ../themes/*

# Move themes to the root.
cp -R output/coda/* ../themes/

# Delete temp themes.
rm -rf output