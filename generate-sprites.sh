#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

# TODO: automate the process providing the correct folder
function generate_sprites() {
	npm install -g @mapbox/spritezero-cli
}

generate_sprites
