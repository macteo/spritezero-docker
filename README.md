# Generate sprites for  from svgs with spritezero

[![Docker Automated build](https://img.shields.io/docker/automated/dolomate/spritezero.svg?maxAge=2592000)]() [![](https://images.microbadger.com/badges/image/dolomate/spritezero.svg)](https://microbadger.com/images/dolomate/spritezero)

This is a Docker image to generate sprites with Mapbox's spritezero.

## Usage

```bash
docker run -it -v $(pwd)/data:/data dolomate/spritezero:v1 /bin/bash

# Replace with your sprites folder

cd /data/sprites

# Replace basic with the desired files name
# _svg folder should contain the svg original files

spritezero basic _svg
spritezero --ratio=2 basic@2x _svg # Retina
spritezero --ratio=3 basic@3x _svg # For mobile devices
```

## Build the image

```bash
docker build -t spritezero .
```