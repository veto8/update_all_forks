#!/bin/bash
# Build with Docker for maximum compatibility
sudo docker run --rm -v $(pwd):/src \
  -w /src python:3.13-bullseye \
  sh -c "apt-get update -y && apt-get upgrade -y && apt-get install -y patchelf binutils-common && pip install poetry && poetry install && poetry run nuitka --standalone --onefile main.py"

rm get_sound.build -Rf
rm get_sound.onefile-build -Rf
rm get_sound.dist -Rf
