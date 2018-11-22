# Generate sprites for  from svgs with spritezero

[![Docker Automated build](https://img.shields.io/docker/automated/dolomate/spritezero.svg?maxAge=2592000)]() [![](https://images.microbadger.com/badges/image/dolomate/spritezero.svg)](https://microbadger.com/images/dolomate/spritezero)

This is a Docker image to generate sprites with Mapbox's spritezero.

## Usage

Sprites in *svg* format should be placed in a folder called `./data/sprites/_svg`

The *json* and *png* files will be named * _svg.png* and * _svg.json*, with corresponding *@2x* and *@3x* references. If you would like to use a different name change the `THEME` environment variable in the row reported below and place the svg files in the corresponding folder.

```sh
docker run -it -e FOLDER=_svg -e THEME=sprites -v ${PWD}/data:/data dolomate/spritezero
```

You can omit the `-e FOLDER=_svg` part if the *_svg* folder contains the input images.
You can omit the `-e THEME=sprites` part if the *sprites* output name suits your needs.

## Build the image from scratch

Optionally you can build the image from scratch

```sh
docker build -t spritezero .
```

And use it to build your tiles

```sh
docker run -i -e THEME=_svg -v ${PWD}/data:/data spritezero
```
