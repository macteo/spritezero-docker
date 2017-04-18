#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

readonly THEME=${THEME:-"basic"}

# TODO: automate the process providing the correct folder
function generate_sprites() {
  cd /data/sprites
  spritezero $THEME _svg
  spritezero --ratio=2 $THEME@2x _svg # Retina
  spritezero --ratio=3 $THEME@3x _svg # For mobile devices
}

generate_sprites
