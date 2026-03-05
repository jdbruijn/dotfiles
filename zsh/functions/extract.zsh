#!/bin/sh
#
# Extract archived files.
#
# Usage: extract <file>

function extract() {
  local file="${1}"

  if [ ! -e "${file}" ]; then
    echo "FATAL: file does not exist (file: \"${file}\")"
    exit 1
  fi
  if [ ! -f "${file}" ]; then
    echo "FATAL: file is not a regular file (file: \"${file}\")"
    exit 1
  fi

  case "${file}" in
    *.tar.bz2) tar -jxvf "${file}" ;;
    *.tar.gz) tar -zxvf "${file}" ;;
    *.bz2) bunzip2 "${file}" ;;
    *.gz) gunzip "${file}" ;;
    *.tar) tar -xvf "${file}" ;;
    *.tbz2) tar -jxvf "${file}" ;;
    *.tgz) tar -zxvf "${file}" ;;
    *.zip) unzip "${file}" ;;
    *.ZIP) unzip "${file}" ;;
    *.rar) rar x "${file}" ;;
    *) echo 'FATAL: unsuported file extension' ;;
  esac
}
