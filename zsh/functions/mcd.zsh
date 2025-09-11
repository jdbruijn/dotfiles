#!/bin/sh
#
# Create a directory and "cd" to it.
#
# Usage: mcd <path>
mcd () {
  mkdir --parents "${1}"
  cd "${1}"
}
