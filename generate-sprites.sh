#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

readonly FOLDER=${FOLDER:-"_svg"}
readonly THEME=${THEME:-"sprites"}

# TODO: automate the process providing the correct folder
function generate_sprites() {
  cd /data/sprites
  spritezero $THEME $FOLDER
  spritezero --ratio=2 $THEME@2x $FOLDER # Retina
  spritezero --ratio=3 $THEME@3x $FOLDER # For mobile devices
}

generate_sprites
