#!/bin/sh
#
# Create a directory and cd to it.
#
# Usage: mcd <path>

mcd() {
  mkdir -p "${1}"
  cd "${1}"
}
