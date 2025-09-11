#!/bin/sh
#
# Extract archived files.
#
# Usage: extract <file>
extract() {
  if [ ! -e "$1" ]; then
    echo "FATAL: file does not exist (file: \"${1}\")"
    exit 1
  fi
  if [ ! -f "$1" ]; then
    echo "FATAL: file is not a regular file (file: \"${1}\")"
    exit 1
  fi

  case "$1" in
  *.tar.bz2) tar -jxvf "$1" ;;
  *.tar.gz) tar -zxvf "$1" ;;
  *.bz2) bunzip2 "$1" ;;
  *.gz) gunzip "$1" ;;
  *.tar) tar -xvf "$1" ;;
  *.tbz2) tar -jxvf "$1" ;;
  *.tgz) tar -zxvf "$1" ;;
  *.zip) unzip "$1" ;;
  *.ZIP) unzip "$1" ;;
  *.rar) rar x "$1" ;;
  *) echo 'FATAL: unsuported file extension' ;;
  esac
}
