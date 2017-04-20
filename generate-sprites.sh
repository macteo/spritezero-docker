#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

readonly THEME=${THEME:-"_svg"}

# TODO: automate the process providing the correct folder
function generate_sprites() {
  cd /data/sprites
  spritezero $THEME $THEME
  spritezero --ratio=2 $THEME@2x $THEME # Retina
  spritezero --ratio=3 $THEME@3x $THEME # For mobile devices
}

generate_sprites
