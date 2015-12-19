#!/bin/bash
export PATH=$( pwd )/bin:${PATH}

SCRIPTS=~/build-scripts/

if [[ "${1}" == "" ]]; then
  echo "script not found"
else
  if [[ ! -e  "${SCRIPTS}${1}" ]]; then
    echo "script not found"
  else
    if [[ ! -x "${SCRIPTS}${1}" ]]; then
      chmod +x ${SCRIPTS}${1}
      exec ${SCRIPTS}${1}
    else
      exec ${SCRIPTS}${1}
    fi # -x
  fi # -e
fi # == ""

